<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.cj.protocol.Resultset"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Customer Data</h1>
<table border="1">
<tr>
<th>Customer Id</th>
<th>Customer Name</th>
<th> Customer Email</th>
<th>Customer PhoneNumber</th>
</tr>
	<%!
	Connection con;
	Statement stm;
	ResultSet rst;
	public void jspInit() {
		final String DB_NAME = "greattug_gw_pratice_CD";
		final String DB_USERNAME = "greattug_pratice";
		final String DB_PASSWORD = "Test1234##";
		final String DB_PORT = "3306";
		final String DB_IP = "103.50.160.116";
		final String DB_URL_STATEMENT = "jdbc:mysql://" + DB_IP + ":" + DB_PORT + "/" + DB_NAME;
		final String DRIVER_CLASS = "com.mysql.cj.jdbc.Driver";
		try {
			Class.forName(DRIVER_CLASS);
			con=DriverManager.getConnection(DB_URL_STATEMENT, DB_USERNAME, DB_PASSWORD);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}%>
	<%
	String sql="select *from customer";
	try{
		
	stm=con.createStatement();
	rst=stm.executeQuery(sql);
	while(rst.next())
	{
		out.println("<tr>");
		out.println("<td>"+rst.getInt(1)+"</td>");
		out.println("<td>"+rst.getString(2)+"</td>");
		out.println("<td>"+rst.getString(3)+"</td>");
		out.println("<td>"+rst.getLong(4)+"</td>");
		out.println("</tr>");

	}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	%>
	</table>
</body>
</html>