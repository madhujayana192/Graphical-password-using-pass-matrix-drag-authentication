 <%@page import="java.util.*,java.lang.*,java.text.SimpleDateFormat" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<html><title>block owners</title>
<body>
	<center>&nbsp;</center>
	<br><br><br>
	<%
  		String uname =request.getParameter("uname");
		SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
		Date now = new Date();
		String strDate = sdfDate.format(now);
		String strTime = sdfTime.format(now);
		String dt=strDate+" "+strTime;
		
   		try {
	   	
			String sql="select * from unblockreq where username='"+uname+"' and status='Unblock'";
			Statement st= connection.createStatement();
			ResultSet rs=st.executeQuery(sql);
			if(rs.next())
			{
					String msg="Unblock Request Already sent <br> Please Wait...";
					application.setAttribute("msg",msg);
					response.sendRedirect("u_clickpoints.jsp?status=Blocked");  
					
			}
			else
			{	
				String status="Unblock";
				String query1 ="insert into unblockreq (username,dt,status)values('"+uname+"','"+dt+"','"+status+"')";
				Statement st1 = connection.createStatement();
				int x=st1.executeUpdate (query1);
				if(x>0)
				{
					String msg="Unblock Request has been sent";
					application.setAttribute("msg",msg);
					response.sendRedirect("u_clickpoints.jsp?status=Blocked");
				}
			}
	   		connection.close();
       	}
      	catch(Exception e)
     	{
			out.println(e.getMessage());
   		}
   		
	%>
</body>
</html>