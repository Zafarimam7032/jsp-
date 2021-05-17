package com.jsp.userdefine.tag;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import javax.servlet.jsp.tagext.TagSupport;

public class UserDefine extends TagSupport {
	@Override
	public int doStartTag() throws JspException{
		try {
		JspWriter out=pageContext.getOut();
		out.println("<h1>User Desine tag</h1>");
		out.println("<h1> by Zafar Imam</h1>");
		out.println("<h1>In jsp  </h1>");
		out.println("<h1> Tag Namenis zafar</h1>");
		}
		catch (Exception e) {
		}
				return SKIP_BODY;
	}

}
