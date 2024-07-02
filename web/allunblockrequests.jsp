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
.style14 {
	color: #009933;
	font-weight: bold;
}
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
      
		 <h2 class="style7">Shoulder Surfing Attacks Users Unblock Request List </h2>
	     <div class="area">
	      <table width="649" border="3" align="left"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;  margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
           <%@ include file="connect.jsp" %>
<%
String s1,s2,s3,s4;
int i=0,m=0;
try 
{
	String query="select * from unblockreq"; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	while( rs.next() )
	{
		s1=rs.getString(2);
		s2=rs.getString(3);
		s3=rs.getString(4);
		
		String sql1="select id from user where username='"+s1+"'";
		Statement st1=connection.createStatement();
		ResultSet rs1=st1.executeQuery(sql1);
		if( rs1.next() )
		{	
			i=rs1.getInt(1);
		if(m==0){
			%>
			
			  <tr>
            <td  width="102" height="37" align="center" valign="middle" style="color: #2c83b0;"><div align="center" class="style3 style9"><strong>Image</strong></div></td>
            <td  width="93" height="37" align="center" valign="middle" style="color: #2c83b0;"><div align="center" class="style3 style9"><strong>Username</strong></div></td>
            <td  width="134" height="37" align="center" valign="middle" style="color: #2c83b0;"><div align="center" class="style3 style9"><strong>Requested Date </strong></div></td>
            <td   width="136" height="37" align="center" valign="middle" style="color: #2c83b0;"><div align="center" class="style3 style9"><strong> Action</strong></div></td>
          </tr>
			<%}m=1;%>
			<form action="a_unblockuser.jsp?uname=<%=s1%>" method="post">
          <tr>
		 	<td align="center" valign="middle"><img name="image" src="profile_pic.jsp?id=<%=i%>&type=<%="user"%>" height="70" width="70" /></td>
			<td  width="93" height="82" align="center" valign="middle" ><%out.println(s1);%></td>
			<td  width="134" height="82" align="center" valign="middle"><%out.print(s2);%></td>
			<%if(s3.equalsIgnoreCase("Unblock")){%>
			 <td  width="136" height="82" align="center" valign="middle"><input type="submit" value="<%=s3%>"/></td>
			 <%}else{%>
			 <td  width="168" height="82" align="center" valign="middle"><span class="style14"> <%=s3%></span></td>
			 <%}%>
			</tr>
			</form>
          <%
						}
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
