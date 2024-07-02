<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>all users list</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<style type="text/css">
<!--
.style2 {font-size: 36}
.style3 {padding:0; margin:0; width:100%; line-height:0; clear: both;}
.style4 {
	font-size: 30px;
	color: #00008B;
}
.style7 {color: #6633FF; }
.style10 {color: #0099FF}
.style11 {
	font-size: 14px;
	color: #FF6633;
}
.style12 {color: #FF6633}
.style13 {color: #339966}
-->
</style>
</head>
<body>
<div class="main style2">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h2 class="style4">Graphical Password Authentication System</h2>
      </div>
      <div class="style3"></div>
    </div>
  </div>
  <div class="hbg">
    <div class="hbg_resize">
      <div class="menu_nav">
        <ul>
		<%String admin=(String)application.getAttribute("admin"); %>
          <li><a href="adminmain.jsp">Home</a></li>
          <li><a href="#"><%=admin%></a></li>
          <li><a href="adminlogin.jsp">Logout</a></li>
        </ul>
      </div>
      <div class="style3"></div>
     
     
	
	</div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
    
		 <h2 class="style7">All Users List </h2>
	    <div class="area">
	      <table width="649" border="3" align="left"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;  margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
            <tr>
              <th><span class="style10">Username</span></th>
              <th><span class="style10">Email</span></th>
              <!--<th><span class="style10">Mobile Number</span></th>-->
              <th><span class="style10">status</span></th>
              <th><span class="style10">View</span></th>
            </tr>
            <%@ include file="connect.jsp" %>
            <%
String s1,s2,s3,s4,s5,s6,s7,s8,s9;
int i=0;
try 
{
	String query="select * from user"; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	{
		i=rs.getInt(1);
		s1=rs.getString(2);
		s2=rs.getString(4);
		//s4=rs.getString(5);
		s3=rs.getString(10);
	
			%>
            <tr>
              <td  width="86" height="56" align="center" valign="middle" ><%out.println(s1);%></td>
              <td  width="141" height="56" align="center" valign="middle"><%out.println(s2);%></td>
              
              <%
						if(s3.equalsIgnoreCase("waiting"))
						{
						
						%>
              <td  width="73" height="56" align="center" valign="middle"><a href="conformuser.jsp?mid=<%=i%>&utype=<%="user"%>" class="style13">waiting&nbsp;</a></td>
              <%
						}
						else
						{ 
						%>
              <td  width="91" height="56" align="center" valign="middle"><%out.println(s3);%></td>
              <%
						}
						
						%>
              <td  width="112" valign="middle" height="56" style="color:#000000;"align="center"><a href="a_userdetails.jsp?mid=<%=i%>"><span class="style12">more info..</span>&nbsp;</a></td>
            </tr>
            <%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
          </table>
	      <p align="right" class="style11"><a href="adminmain.jsp" class="style12">Back</a></p>
	    </div>
		
		
        <div class="style3"></div>
        
        <div class="style3"></div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Sidebar Menu</h2>
          <ul class="sb_menu">
            <li><a href="adminmain.jsp">Home</a></li>
            <li><a href="adminlogin.jsp">Logout</a></li>
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star">&nbsp;</h2>
        </div>
      </div>
      <div class="style3"></div>
    </div>
  </div>
  
</div>
<div align=center></div>
</body>
</html>
