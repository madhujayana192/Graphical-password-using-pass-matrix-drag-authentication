<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>user login page</title>
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
.style5 {color: #00008B}
.style7 {color: #00008B; width: 500px}
.style8 {color: #FF0000}
.style9 {font-size: 14px; color: #FF3333; }
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
          <li class="active"><a href="userlogin.jsp">Login</a></li>
		  <li><a href="u_register.jsp">Register</a></li>
          <li><a href="adminlogin.jsp">Admin</a></li>
        </ul>
      </div>
      <div class="style3"></div>
     
     
	
	</div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
      
		 <h2 class="style7">Welcome to User Login</h2>
		 <div class="area">
		 <form action="authentication.jsp?type=<%="user"%>" method="post">
							  <table width="65%">
				 
				  <tr>
                    <td width="98" height="52"><span class="style1" ><strong><span class="style5">User Name</span><span class="style8"> *</span></strong></span></td>
                    <td width="242"><input id="name" name="userid" type="text" /></td>
                  </tr>
                  <tr>
                    <td height="44"><span class="style1 style5"><strong><span class=" style5">Password</span> <span class="style8">*</span></strong></span></td>
                    <td><input type="password" id="password" name="pass" class="text" /></td>
                  </tr>
                  <tr>
                    <td height="51"></td>
                    <td><input name="imageField" type="submit"  id="imageField" value="Login" />
                        <input name="Reset" type="reset" value="Reset" /> <br/>
                      New user?<a href="u_register.jsp" class="style9">Register </a> </td>
                  </tr>
         </table>
      </form>
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
