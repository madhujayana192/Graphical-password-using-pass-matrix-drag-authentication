<title>insert comments</title>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%
			String id = request.getParameter("id");
			String key = request.getParameter("key");
			String cmt = request.getParameter("cmt");
			String type=request.getParameter("type");
			String user=(String)application.getAttribute("user");
			
			SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

			Date now = new Date();
			
			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			String dt=strDate+ " "+strTime;
            try {

					String sql1="insert into comments(username,doc_id,comment,dt)values('"+user+"','"+id+"','"+cmt+"','"+dt+"')";
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
							String msg="Comment Posted Successfully";
							application.setAttribute("msg",msg);
							response.sendRedirect("u_viewdoc_details.jsp?key="+key+"&id="+id+"");
						}
					}
			
		
       } 
	catch (Exception ex) {

		out.println(ex);
	}
%>