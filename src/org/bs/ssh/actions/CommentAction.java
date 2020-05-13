package org.bs.ssh.actions;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.bs.ssh.model.Blog;
import org.bs.ssh.model.Comment;
import org.bs.ssh.model.User;
import org.bs.ssh.service.BlogService;
import org.bs.ssh.service.CommentService;
import org.bs.ssh.service.UserService;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

@Controller("commentAction")
@Scope("prototype")
public class CommentAction  implements ModelDriven  {
	
	private Comment comment;
	@Resource
	private CommentService commentService;
	@Resource
	private UserService userServce;
	@Resource
	private BlogService blogService;
	
	
	public Object getModel() {
		if(comment == null){
			comment = new Comment();
		}
		return comment;
	}




	
	public void add() throws ServletException, IOException{
		User friend = userServce.findUser((Integer)ServletActionContext.getRequest().getSession().getAttribute("loginId"));
		Blog dbBlog = blogService.findBlog(comment.getId());
		comment.setBlog(dbBlog);
		comment.setFriend(friend);
		commentService.addComment(comment);
		ServletActionContext.getResponse().sendRedirect(ServletActionContext.getRequest().getContextPath()+"/blog!view?id="+dbBlog.getId());
	}







}
