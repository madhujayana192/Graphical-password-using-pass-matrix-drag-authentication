<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>add product posts</title>
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
.style20 {color: #009933}
.style21 {color: #006666}
.style23 {font-size: 14}
-->
</style>
<script type='text/javascript'>
function loadFileAsText()
{
	var fileToLoad = document.getElementById("file").files[0];

	var fileReader = new FileReader();
	fileReader.onload = function(fileLoadedEvent) 
	{
		var textFromFileLoaded = fileLoadedEvent.target.result;
		document.getElementById("textarea").value = textFromFileLoaded;
	};
	fileReader.readAsText(fileToLoad, "UTF-8");
}
</script>
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
      
		 <h2 class="style7">Add  Document Details </h2>
	     <div class="area">
	      <%String msg=(String)application.getAttribute("msg");
			if(msg!=null)
			{
				%>
			<h3><span class="style20"> <%=msg%></span></h3>
				<%
			}
			application.removeAttribute("msg");
			 %>
			<table width="516" height="238">
			<form action="add_document1.jsp" method="post">
			
			<tr>
				<td width="164"><span class="style14 style21 style23"><strong> Document Name : </strong></span></td>
				<td width="340"><input type="text" name="dname" id="dname" /></td>
			</tr>
			<tr>
				<td><span class="style14 style21 style23"><strong> Document Use: </strong></span></td>
				<td><input type="text" name="duse" id="duse" /></td>
			</tr>
			<tr>
				<td><span class="style14 style21 style23"><strong>Select Document : </strong></span></td>
				<td><input name="fname" type="file" id="file" onchange="loadFileAsText()" size="24" /></td>
			</tr>
			<tr>
				<td><span class="style14 style21 style23"><strong> Content : </strong></span></td>
				<td><textarea id="textarea" name="content" cols="40" rows="4" ></textarea></td>
			</tr>
			<tr>
				<td height="71"></td>
				<td><input type="submit" value="Next" /></td>
			</tr>
			</form>
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
