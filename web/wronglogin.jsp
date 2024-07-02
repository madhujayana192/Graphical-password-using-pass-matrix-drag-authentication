<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>wrong login page</title>
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
.style7 {color: #FF0000; }
.style9 {font-size: 14px; color: #FF3333; }
.style11 {font-size: 16px; color: #00CC33; }
.style13 {font-size: 16px; color: #FF0000; }
.style15 {font-size: 16px}
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
          <li><a href="index.html">Home</a></li>
          <li><a href="userlogin.jsp">User</a></li>
          <li class="active"><a href="adminlogin.jsp">Admin</a></li>
        </ul>
      </div>
      <div class="style3"></div>
     
     
	
	</div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
      
		 <h2 class="style7">Login Failed ...!!! </h2>
		 <div class="area">
	 <table width=405 height="267" border=0 align="center" cellpadding=0 cellspacing=0>
<tr>
<td width="405" height="189" align=center valign="middle"><div align="center"><span class="style13">Sorry.<span class="style11"><BR>
        <BR>
        </span></span><span class="style15"><span class="style13"><font class=sb3 >
          Your login failed.</font></span></span><span class="style11 style4"><font class=sb3><BR>
            </font></span>
            </span></span>
            <TABLE cellSpacing=0 cellPadding=0 border=0 height="7">
    <TR><TD height=7 class="style9 style4"></TD></TR>
    </TABLE>
            <span class="style9 style4"><font class="sb3">This happens due to - Incorrect Username / Incorrect password<BR>
            </font> </span>
  <TABLE cellSpacing=0 cellPadding=0 border=0 width="10">
    <TR>
      <TD width="10" height=9 class="style9 style4"></TD></TR>
    </TABLE>
  <span class="style9 style4"><font class="sb3">In case you have forgotten your password,<BR>
    </font> </span>
  <TABLE cellSpacing=0 cellPadding=0 border=0>
    <TR><TD height=9 class="style9 style4"></TD></TR>
    </TABLE>
  <span class="style9 style4"><font class="sb3">click&nbsp; here to re enter correct&nbsp; username or password on homepage.</font><font class="sb3"></font></span><span class="style9"><font class="sb3"><BR>
    </font></span><font class="sb3"><BR>
      <%
String type=(String)application.getAttribute("type");
if(type.equalsIgnoreCase("user")){
%>
      <a href="userlogin.jsp">Click here to go back</a>	<br />	
        <a href="index.html"><span class="">Home Page</span></a>
      </BR>
      <%}
else if(type.equalsIgnoreCase("admin")){
%>
      <a href="adminlogin.jsp">Click here to go back</a><BR>
      <a href="index.html"><span>Home Page</span></a>
      <%}%>
    </font></div></td>
</tr>
</table>
		</div>
		
		
        <div class="style3"></div>
        
        <div class="style3"></div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Sidebar Menu</h2>
          <ul class="sb_menu">
            <li><a href="index.html">Home</a></li>
            <li><a href="userlogin.jsp">User</a></li>
            <li><a href="adminlogin.jsp">Admin</a></li>
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
