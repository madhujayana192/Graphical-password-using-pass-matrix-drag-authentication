<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>view click points</title>
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
.style5 {color: #0033FF}
.style7 {color: #6633FF; }
.style8 {color: #FF0000}
.style10 {color: #3333FF}
.style11 {color: #006666}
.style12 {color: #FF6600}
.style13 {color: #FF3300}
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
		<%String user=(String)application.getAttribute("user"); %>
          <li><a href="index.html">Home</a></li>
          <li ><a href="#"><%=user%></a></li>
        </ul>
      </div>
      <div class="style3"></div>
     
     
	
	</div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
      
		 <h2 class="style7">Welcome Click Points View</h2>
	    <div class="area">
		 <%String uname=request.getParameter("uname"); %>
		 <%@ include file="connect.jsp" %>
		 <form action="u_viewclickpoints.jsp?uname=<%=uname%>" method="post">
							  <table width="65%">
				 
				  <tr>
                    <td width="184" height="52"><span class="style1" ><strong><span class="style5">User Name</span><span class="style8"> *</span></strong></span></td>
                    <td width="245"><input id="name" name="userid" type="text" value="<%=uname%>"/></td>
                  </tr>
                  <tr>
                    <td height="44"><span class="style1 style5"><strong><span class=" style5">Enter Login Password</span> <span class="style8">*</span></strong></span></td>
                    <td><input type="password" id="password" name="pass" class="text" /></td>
                  </tr>
                  <tr>
                    <td height="51"></td>
                    <td><input type="submit"      value="Reset Password" /></td>
                  </tr>
         </table>
      </form>
	  <br />
	  <%
	
	  String pass=request.getParameter("pass");
	  if(pass!=null)
	  {
	  	  //String s1,s2,s3,s4,s5,s6;
		  String sql="select * from user where username='"+uname+"' and password='"+pass+"'";
		  Statement st=connection.createStatement();
		  ResultSet rs=st.executeQuery(sql);
		  if(rs.next())
		  {
			
				%>
                           
                  
                  <script>
		            // Redirect to the change points page
		            window.location.href = 'u_changepoints.jsp';
		        </script>
		
		
				<p>
				  <%
			}
			
		  
		  else
		  {
		  	%>
			<h3 class="style13">Sorry Wrong Password <br />Please Enter Correct Password</h3>
			<%
		  }
	  }
	  %>
		  </p>
				<p align="right"><a href="u_clickpoints.jsp?status=<%="Block"%>" class="style12">Back</a><br />
          </p>
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
