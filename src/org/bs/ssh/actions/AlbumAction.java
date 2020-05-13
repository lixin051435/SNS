package org.bs.ssh.actions;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.bs.ssh.model.Album;
import org.bs.ssh.model.User;
import org.bs.ssh.service.AlbumService;
import org.bs.ssh.service.UserService;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

@Controller("albumAction")
@Scope("prototype")
public class AlbumAction  implements ModelDriven  {
	
	private Album album;
	private String photo;
	@Resource
	private AlbumService albumService;
	@Resource
	private UserService userServce;
	
	public Object getModel() {
		if(album == null){
			album = new Album();
		}
		return album;
	}




	
	public String add(){
		User user = userServce.findUser((Integer)ServletActionContext.getRequest().getSession().getAttribute("userId"));
		album.setUser(user);
		albumService.addAlbum(album);
		List<Album>  albums = albumService.findAllAlbums(user);
		ActionContext.getContext().put("albums", albums);
		return "success";
	}


	

	public String listAll(){
		User user = userServce.findUser((Integer)ServletActionContext.getRequest().getSession().getAttribute("userId"));
		List<Album>  albums = albumService.findAllAlbums(user);
		ActionContext.getContext().put("user", user);
		ActionContext.getContext().put("albums", albums);
		return "success";
	}
	public void listOne() throws IOException{
		Album dbAlbum = albumService.findAlbum(album.getId());
		
		HttpServletResponse response =  ServletActionContext.getResponse();
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/xml");
		response.setHeader("Cache-Control", "no-cache");
        PrintWriter out=response.getWriter();
        String xml = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<keys>\n";
        for(String s:dbAlbum.getPhotos()){
        	if (s==null)s="0";
        	xml+="<key>"+s+"</key>\n";
        }
        xml+="</keys>";
        System.out.println(xml);
        out.write(xml);
			out.flush();
			out.close();
	}
	public String delete(){
		albumService.del(album.getId());
		User user = userServce.findUser((Integer)ServletActionContext.getRequest().getSession().getAttribute("userId"));
		List<Album>  albums = albumService.findAllAlbums(user);
		ActionContext.getContext().put("albums", albums);
		return "success";
	}
	public String update(){
		Album data = albumService.findAlbum(album.getId());
		data.setName(album.getName());
		albumService.updateAlbum(data);
		User user = userServce.findUser((Integer)ServletActionContext.getRequest().getSession().getAttribute("userId"));
		List<Album>  albums = albumService.findAllAlbums(user);
		ActionContext.getContext().put("albums", albums);
		return "success";
	}
	public String addPhoto(){
		Album dbAlbum = albumService.findAlbum(album.getId());
		dbAlbum.addPhoto(photo);
		albumService.updateAlbum(dbAlbum);
		User user = userServce.findUser((Integer)ServletActionContext.getRequest().getSession().getAttribute("userId"));
		List<Album>  albums = albumService.findAllAlbums(user);
		ActionContext.getContext().put("albums", albums);
		return "success";
	}




	public String getPhoto() {
		return photo;
	}





	public void setPhoto(String photo) {
		this.photo = photo;
	}


}
