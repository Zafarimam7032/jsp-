<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.Date"%>
    
<b>Welcome my first program </b><br>
    <%
    response.setIntHeader("refresh", 1 );
    Date d=new Date();
    out.println("<h1>"+d+"</h1>");
    %>
