<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>user registration form </title>
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
.style7 {color: #00008B }
.style11 {
	font-size: 14px;
	font-weight: bold;
}
.style12 {
	color: #FF0000;
	font-weight: bold;
}
.style14 {color: #336666}
.style15 {color: #339966}
.style17 {font-size: 14px; color: #FF6633; }
.style21 {color: #333399; font-weight: bold; }
.style22 {color: #FF0000}
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
          <li><a href="userlogin.jsp">Login</a></li>
		  <li  class="active"><a href="u_register.jsp">Register</a></li>
          <li><a href="adminlogin.jsp">Admin</a></li>
        </ul>
      </div>
      <div class="style3"></div>
     
     
	
	</div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
      
		 <h2 class="style7"> User Registration Form</h2>
		 <div class="area">
		<span class="style11">Note:</span> <span class="style12">*</span>=<span class="style12">Required</span>
    	   <%String msg=(String)application.getAttribute("msg");
			if(msg!=null)
			{
			%>
			<h3> <span class="style15"> <%=msg%></span></h3>
			<%
			}
			application.removeAttribute("msg");
			%>
          <form action="u_insertdata.jsp" method="post" enctype="multipart/form-data">
					  <table width="491">
					    <tr>
                          <td width="191" height="43"><span class="style21">User Name <span class="style22">*</span> </span></td>
                          <td width="288"><input id="name" name="userid" class="text" /></td>
                        </tr>
                        <tr>
                          <td height="43"><span class="style21">Password <span class="style22">*</span> </span></td>
                          <td><input type="password" id="password" name="pass" class="text" required/></td>
                        </tr>
                        <tr>
                          <td height="43"><span class="style21">Email Address <span class="style22">*</span></span></td>
                          <td><input id="email" name="email" class="text" required /></td>
                        </tr>
                        <tr>
                          <!--<td height="43"><span class="style21">Mobile Number <span class="style22">*</span></span></td>-->
                          <td><input type="hidden" id="mobile" name="mobile" class="text" /></td>
                        </tr>
                        <tr>
                          <!--<td height="43"><span class="style21">Date of Birth <span class="style22">*</span></span></td>-->
                          <td><input type="hidden" id="dob" name="dob" class="text" /></td>
                        </tr>
                        <tr>
                          
                        </tr>
                        <tr>
                          <!--<td height="65"><span class="style21">Address <span class="style22">*</span> </span></td>-->
                          <!--<td><textarea type="hidden" id="address" name="address" rows="3" cols="21"></textarea></td>-->
                        </tr>
                        <tr>
                          <!--<td height="43"><span class="style21">Enter Pincode <span class="style22">*</span> </span></td>-->
                          <td><input type="hidden" id="pincode" name="pincode" class="text" /></td>
                        </tr>
                        <tr>
                          <td height="43"><span class="style21">Select Profile Picture </span></td>
                          <td><input type="file" id="pic" name="pic" class="text" /></td>
                        </tr>
                        <tr>
                          <td height="43" rowspan="3">
                            <p><span class="style14"><span class="style15"></span></span></p></td>
                          <td align="left" valign="middle"> <p>&nbsp;
                            </p>
                            <p>
                              <input name="submit" type="submit" value="REGISTER" />
                            </p>
                            <div align="right">
                            <p align="right"><a href="userlogin.jsp" class="style17">Back</a></p>
                          </div></td>
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
