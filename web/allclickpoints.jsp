<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>all unblock requests list</title>
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
.style11 {
	font-size: 14px;
	color: #FF6633;
}
.style12 {color: #FF6633}
.style16 {color: #006666}
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
      <!--  <div class="article_vert"><img src="images/img1.jpg" width="287" height="97" alt="" />
          <p>&nbsp;</p>
        </div>
        <div class="article_vert"><img src="images/img2.jpg" width="287" height="97" alt="" />
          <p>&nbsp;</p>
        </div>-->
		 <h2 class="style7">All Graphical Authentication Points </h2>
	     <div class="area">
	      <table width="675" border="3" align="left"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;  margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
          <tr>
	        <th width="90" height="40"><span class="style16">User Image</span></th>
            <th width="75" height="40"><span class="style16">Username</span></th>
            <th width="75"><span class="style16">Point1 X</span></th>
            <th width="75"><span class="style16">Point1 Y </span></th>
            <th width="75"><span class="style16">Point2 X</span></th>
			<th width="75"><span class="style16">Point2 Y</span></th>
			 <th width="75"><span class="style16">Point3 X</span></th>
			<th width="75"><span class="style16">Point3 Y</span></th>
          </tr>
<%@ include file="connect.jsp" %>
<%
String s1,s2,s3,s4,s5,s6,s7,s8,s9;
int i=0;
try 
{
	String query="select * from clickpoints"; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	{
		s1=rs.getString(2);
		s2=rs.getString(3);
		s3=rs.getString(4);
		s4=rs.getString(5);
		s5=rs.getString(6);
		s6=rs.getString(7);
		s7=rs.getString(8);
		
			String query1="select id from user where username='"+s1+"'"; 
			Statement st1=connection.createStatement();
			ResultSet rs1=st1.executeQuery(query1);
			if(rs1.next())
			{
				i=rs1.getInt(1);

			%>
          <tr>
		  <td><input  name="image" type="image" src="profile_pic.jsp?id=<%=i%>&type=<%="user"%>" style="width:70px; height:70px;"/></td>
		 	<td  width="77" height="72" align="center" valign="middle" ><%out.println(s1);%></td>
             <td align="center" valign="middle"><%out.println(s2);%></td>
			<td  width="71" height="72" align="center" valign="middle"><%out.println(s3);%></td>
        	<td  width="71" height="72" align="center" valign="middle"><%out.println(s4);%></td>
			<td align="center"><%out.println(s5);%></td>
			<td  width="90" height="72" align="center" valign="middle"><%out.println(s6);%></td>
        	<td  width="90" height="72" align="center" valign="middle"><%out.println(s7);%></td>
		</tr>	
          <%
						}
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e);
					}
					%>
        </table>
	     
	    </div>
		
		
        <div class="style3"> <p align="right" class="style11"><a href="adminmain.jsp" class="style12">Back</a></p></div>
        
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
