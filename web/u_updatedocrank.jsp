<title>update rank</title>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%
			String id = request.getParameter("id");
			String key = request.getParameter("key");
			String type=request.getParameter("type");
			
            try 
			{
				String sql1="update documents set rank=rank+1 where id='"+id+"'";
				Statement stmt1 = connection.createStatement();
				int x=stmt1.executeUpdate(sql1);
				if(x>0)
				{
					
					if(type.equalsIgnoreCase("recommends"))
					{
						response.sendRedirect("u_viewrecommends1.jsp?id="+id+"");
					}
					else
					{
						response.sendRedirect("u_download.jsp?key="+key+"&id="+id+"");
					}
				}
		
		
       } 
	catch (Exception ex) {

		out.println(ex);
	}
%>

