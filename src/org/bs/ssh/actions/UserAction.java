package org.bs.ssh.actions;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.bs.ssh.model.Blog;
import org.bs.ssh.model.User;
import org.bs.ssh.service.UserService;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

@Controller("userAction")
@Scope("prototype")
public class UserAction  implements ModelDriven  {
	
	private User user;
	
	@Resource
	private UserService userService;
	
	public Object getModel() {
		if(user == null){
			user = new User();
		}
		return user;
	}
	public void changetheme(){
		String color = "#ececec";
		if(user.getUsername().equals("red"))color="6b1834";
		if(user.getUsername().equals("purple"))color="690b97";
		if(user.getUsername().equals("green"))color="a0bf95";
		ServletActionContext.getRequest().getSession().setAttribute("color", color);
		ServletActionContext.getRequest().getSession().setAttribute("themeimg", user.getUsername());
	}
	public String addFriends(){
		User friend = userService.findByUserName(user.getUsername());
		int id = (Integer)ServletActionContext.getRequest().getSession().getAttribute("userId");
		User dbUser = userService.findUser(id);
		dbUser.addFrieds(friend.getId());
		userService.updateUser(dbUser);
		
		ServletActionContext.getRequest().getSession().setAttribute("user", dbUser);
		List<User> friends = new ArrayList<User>();
		for(int fid:dbUser.getFriendIds()){
			User f= userService.findUser(fid);
			friends.add(f);
		}
		ServletActionContext.getRequest().getSession().setAttribute("friends", friends);
		
		return "blog";
	}
	
	public String upload(){
		int id = (Integer)ServletActionContext.getRequest().getSession().getAttribute("userId");
		User dbUser = userService.findUser(id);
		dbUser.setImg(user.getImg());
		userService.updateUser(dbUser);
		ActionContext.getContext().put("user", dbUser);
		
		return "view";
	}
	public void validate() throws IOException{
		String[] usernames = (String[])ActionContext.getContext().getParameters().get("username");
		String[] passwords = (String[])ActionContext.getContext().getParameters().get("password");
		String username = usernames[0];
		String password = passwords[0];
		HttpServletResponse response =  ServletActionContext.getResponse();
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
  		response.setHeader("Cache-Control", "no-cache");
			PrintWriter out = response.getWriter();
			User u = userService.findByUserName(username);
			if(u!=null&&!"".equals(password)){
						if(password.equals(u.getPassword())) {
							out.write("0");
							ServletActionContext.getRequest().getSession().setAttribute("loginId", u.getId());
							}
						else {
							out.write("1");
						}
			}else out.write("2");
			out.flush();
			out.close();
	}
	public String addInput(){
		return "add_input";
	}
	
	public String add(){
		userService.addUser(user);
		User u = userService.findByUserName(user.getUsername());
		ServletActionContext.getRequest().getSession().setAttribute("loginId", u.getId());
		return "add_success";
	}
	public String updateInput(){
		int id = (Integer)ServletActionContext.getRequest().getSession().getAttribute("userId");
		User dbUser = userService.findUser(id);
		ActionContext.getContext().put("user", dbUser);
		return "update_input";
	} 
	public String update(){
		User dbUser = userService.findUser(user.getId());
		user.setImg(dbUser.getImg());
		user.setFriendIds(dbUser.getFriendIds());
		userService.updateUser(user);
		ActionContext.getContext().put("user", user);
		return "view";
	} 
	
	public String view(){
		int id = (Integer)ServletActionContext.getRequest().getSession().getAttribute("userId");
		User dbUser = userService.findUser(id);
		ActionContext.getContext().put("user", dbUser);
		return "view";
	}
	public String list(){
		int id = (Integer)ServletActionContext.getRequest().getSession().getAttribute("loginId");
		User dbUser = userService.findUser(id);
		ActionContext.getContext().put("user", dbUser);
		List<User>  users=  userService.findAll();
		ActionContext.getContext().put("users", users);
		return "list";
	}
	public String loginout(){
		ServletActionContext.getRequest().getSession().invalidate();
		return "loginout";
	}


}
