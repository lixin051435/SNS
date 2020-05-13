package org.bs.ssh.actions;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.bs.ssh.model.Message;
import org.bs.ssh.model.User;
import org.bs.ssh.service.MessageService;
import org.bs.ssh.service.UserService;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

@Controller("messageAction")
@Scope("prototype")
public class MessageAction  implements ModelDriven  {
	
	private Message message;
	private String photo;
	@Resource
	private MessageService messageService;
	@Resource
	private UserService userServce;
	
	public Object getModel() {
		if(message == null){
			message = new Message();
		}
		return message;
	}




	
	public String add(){
		User user = userServce.findUser((Integer)ServletActionContext.getRequest().getSession().getAttribute("userId"));
		User friend = userServce.findUser((Integer)ServletActionContext.getRequest().getSession().getAttribute("loginId"));
		message.setUser(user);
		message.setFriend(friend);
		messageService.addMessage(message);
		List<Message>  messages = messageService.findAllMessages(user);
		ServletActionContext.getRequest().getSession().setAttribute("messages", messages);
		return "blog";
	}


	

	public String listAll(){
		User user = userServce.findUser((Integer)ServletActionContext.getRequest().getSession().getAttribute("userId"));
		List<Message>  messages = messageService.findAllMessages(user);
		ServletActionContext.getRequest().getSession().setAttribute("messages", messages);
		return "success";
	}
	public String delete(){
		messageService.del(message.getId());
		User user = userServce.findUser((Integer)ServletActionContext.getRequest().getSession().getAttribute("userId"));
		List<Message>  messages = messageService.findAllMessages(user);
		ActionContext.getContext().put("messages", messages);
		return "success";
	}




	public String getPhoto() {
		return photo;
	}





	public void setPhoto(String photo) {
		this.photo = photo;
	}


}
