package org.bs.ssh.actions;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.bs.ssh.model.Blog;
import org.bs.ssh.model.Comment;
import org.bs.ssh.model.Message;
import org.bs.ssh.model.User;
import org.bs.ssh.service.BlogService;
import org.bs.ssh.service.CommentService;
import org.bs.ssh.service.MessageService;
import org.bs.ssh.service.UserService;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

@Controller("blogAction")
@Scope("prototype")
public class BlogAction  implements ModelDriven  {
	
	private Blog blog;
	
	@Resource
	private BlogService blogService;
	@Resource
	private UserService userService;
	
	@Resource
	private MessageService messageService;
	@Resource
	private CommentService commentService;
	
	public Object getModel() {
		if(blog == null){
			blog = new Blog();
		}
		return blog;
	}




	
	public String add(){
		int id = (Integer)ServletActionContext.getRequest().getSession().getAttribute("userId");
		User dbUser = userService.findUser(id);
		blog.setUser(dbUser);
		blogService.addBlog(blog);
		List<Blog>  blogs = blogService.findAllBlogs(dbUser);
		ServletActionContext.getRequest().getSession().setAttribute("blogs", blogs);
		return "add_success";
	}

	public String updateInput(){
		Blog dbBlog = blogService.findBlog(blog.getId());
		ActionContext.getContext().put("blog", dbBlog);
		return "update_input";
	} 
	public String update(){
		int id = (Integer)ServletActionContext.getRequest().getSession().getAttribute("userId");
		User dbUser = userService.findUser(id);
		blog.setUser(dbUser);
		blogService.updateBlog(blog);
		ActionContext.getContext().put("blog", blog);
		return "view";
	} 
	
	public String view(){
		
		Blog dbBlog = blogService.findBlog(blog.getId());
		ActionContext.getContext().put("blog", dbBlog);
		List<Comment>  comments = commentService.findAllComments(dbBlog);
		ActionContext.getContext().put("comments", comments);
		return "view";
	}
	@SuppressWarnings("unchecked")
	public String list(){
		int id = (Integer)ServletActionContext.getRequest().getSession().getAttribute("userId");
		User dbUser = userService.findUser(id);
		ServletActionContext.getRequest().getSession().setAttribute("user", dbUser);
		List<User> friends = new ArrayList<User>();
		for(int fid:dbUser.getFriendIds()){
			User friend = userService.findUser(fid);
			friends.add(friend);
		}
		ServletActionContext.getRequest().getSession().setAttribute("friends", friends);
		List<Blog>  blogs = blogService.findAllBlogs(dbUser);
		ServletActionContext.getRequest().getSession().setAttribute("blogs", blogs);
		List<Message>  messages = messageService.findAllMessages(dbUser);
		ServletActionContext.getRequest().getSession().setAttribute("messages", messages);
		return "list";
	}
	public String delete(){
		int id = (Integer)ServletActionContext.getRequest().getSession().getAttribute("userId");
		User dbUser = userService.findUser(id);
		blogService.del(blog.getId());
		List<Blog>  blogs = blogService.findAllBlogs(dbUser);
		ServletActionContext.getRequest().getSession().setAttribute("blogs", blogs);
		return "list";
	}
	
	public String in(){
		ServletActionContext.getRequest().getSession().setAttribute("userId", blog.getId());
		User dbUser = userService.findUser(blog.getId());
		ServletActionContext.getRequest().getSession().setAttribute("user", dbUser);
		List<User> friends = new ArrayList<User>();
		for(int fid:dbUser.getFriendIds()){
			User friend = userService.findUser(fid);
			friends.add(friend);
		}
		ServletActionContext.getRequest().getSession().setAttribute("friends", friends);
		List<Blog>  blogs = blogService.findAllBlogs(dbUser);
		ServletActionContext.getRequest().getSession().setAttribute("blogs", blogs);
		List<Message>  messages = messageService.findAllMessages(dbUser);
		ServletActionContext.getRequest().getSession().setAttribute("messages", messages);
		return "list";
	}
	
	public void execute(){
		view();
	}

}
