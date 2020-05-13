package org.bs.ssh.util;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.lang.reflect.Member;
import java.util.Map;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.conversion.impl.DefaultTypeConverter;

public class ImgConverter extends DefaultTypeConverter {

	@Override
	public Object convertValue(Map<String, Object> context, Object target,
			Member member, String propertyName, Object value, Class toType) {
		
		File[] photos = (File[]) value;
		File photo = photos[0];
		// 文件名
		String[] fileNames = (String[]) ActionContext.getContext().getParameters().get("imgFileName");
		//通过ActionContext.getContext().getParameters().get()取得的参数永远是字符串数组
		// ActionContext.getContext().getParameters()返回的是Map类型
		String fileName = fileNames[0];

		String filePath = null;
		String path = ServletActionContext.getServletContext().getRealPath("/source");
		try {
			filePath = path+"/"+fileName;
			FileUtils.copyFile(photo, new File(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
		String img = "source/"+fileName;
		return img;

	}
	
}
