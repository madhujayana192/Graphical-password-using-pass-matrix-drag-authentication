<title>insert recommends</title>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%
			String id = request.getParameter("id");
			String key = request.getParameter("key");
			String user=(String)application.getAttribute("user");
			
			SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

			Date now = new Date();
			
			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			String dt=strDate+ " "+strTime;
            try {

     
		 String sql = "select * from recommends where username='"+user+"' and doc_id='"+id+"'";
		 Statement stmt = connection.createStatement();
		 ResultSet rs=stmt.executeQuery(sql);
		 if(rs.next())
		 {
			String msg="This Document is already Recommended";
			application.setAttribute("msg",msg);
			response.sendRedirect("u_viewdoc_details.jsp?key="+key+"&id="+id+"");
		}
		else
		{
			String sql1="insert into recommends(username,doc_id,dt)values('"+user+"','"+id+"','"+dt+"')";
			Statement stmt1 = connection.createStatement();
			int x=stmt1.executeUpdate(sql1);
			if(x>0)
			{
				String msg="Document Recommended Successfully";
				application.setAttribute("msg",msg);
				response.sendRedirect("u_viewdoc_details.jsp?key="+key+"&id="+id+"");
			}
		}
		
       } 
	catch (Exception ex) {

		out.println(ex);
	}
%>

