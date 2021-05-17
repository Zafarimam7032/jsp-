<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <b>User Info</b><br>
    
    <%
    String email1=request.getParameter("email");
    String pass1=request.getParameter("pass");
    out.println("Email:"+email1);
    out.println("Password:"+pass1);
    %>
