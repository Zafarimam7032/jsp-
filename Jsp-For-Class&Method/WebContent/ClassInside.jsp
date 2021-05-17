<%@page import="java.io.IOException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%!
  public int add( int a,int b ) throws IOException
	{
		return a+b;
	}
	public int sub(int a, int b) throws IOException
	{
		return a-b;
	}
	public int  mul(int a,int b) throws IOException
	{
		return a*b;
	}
	public int div(int a,int b) throws IOException
	{
		return a/b;
	}
%>
<h1>Normal Arthmetic Operation</h1>
<h1>RESULT:<%= add(10, 20) %><br></h1>
<h1>RESULT:<%= sub(10, 20) %><br></h1>
<h1>RESULT:<%= mul(10, 20) %><br></h1>
<h1>RESULT:<%= div(100, 20) %><br></h1>
