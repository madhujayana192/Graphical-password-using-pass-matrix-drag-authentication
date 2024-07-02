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
.style14 {
	font-weight: bold;
	color: #006666;
}
-->
</style>
<script type="text/javascript">
function dropdown1(d1,d2){
	var Electronics=['Mobile','TV','Fridge','Washing Machine','Computer','Router/Broadbands'];
	var Bikes=['TVS','Hero','Honda','Yamaha','Bajaj'];
	var Footware=['Bata','Adidas','Puma','Reebok','Nike'];
	
switch(d1.value)
{
	case 'Electronics': 
						d2.options.length=0;
						for(var i=0;i<Electronics.length;i++)
						{
							createOption(d2,Electronics[i],Electronics[i]);
						}
						break;
	case 'Bikes':
						d2.options.length=0;
						for(var i=0;i<Bikes.length;i++)
						{
							createOption(d2,Bikes[i],Bikes[i]);
						}
						break;
	case 'Footware':
						d2.options.length=0;
						for(var i=0;i<Footware.length;i++)
						{
							createOption(d2,Footware[i],Footware[i]);
						}
						break;
						default:
						d2.options.length=0;
						break;
}
}
function createOption(d,text,value)
{
		var opt=document.createElement('option');
		opt.value=value
		opt.text=text;
		d.options.add(opt);
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
      <!--  <div class="article_vert"><img src="images/img1.jpg" width="287" height="97" alt="" />
          <p>&nbsp;</p>
        </div>
        <div class="article_vert"><img src="images/img2.jpg" width="287" height="97" alt="" />
          <p>&nbsp;</p>
        </div>-->
		 <h2 class="style7">Select Document Image </h2>
	     <div class="area">
	      <%
			
			String dname=request.getParameter("dname");
			String duse=request.getParameter("duse");
			String fname=request.getParameter("fname");
			String content=request.getParameter("content");
			
			 %>
			<table width="654" height="230">
			<form action="insertdocument.jsp" method="post" enctype="multipart/form-data">
			
			<tr>
				<td width="204" height="53"><span class="style14"> Document Name : </span></td>
				<td width="438">
				<input type="text" name="dname" value="<%=dname%>"/>
				<input type="hidden" name="duse" value="<%=duse%>"/>
				<input type="hidden" name="fname" value="<%=fname%>"/>
				</td>
			</tr>
			<tr>
			<td width="204" height="53"><span class="style14"> Content : </span></td>
			  <td><label>
			    <textarea readonly="readonly" name="content" rows="8" cols="60"><%=content%></textarea>
			  </label></td>
			  </tr>
			<tr>
				<td height="47"><span class="style14">Select Document Image : </span></td>
				<td><input name="pic" type="file" id="file" size="24" /></td>
			</tr>
			<tr>
				<td height="71"></td>
				<td><input type="submit" value="Add" /></td>
			</tr>
			</form>
			</table>
	      <p align="right" class="style11"><a href="adminmain.jsp" class="style12">Back</a></p>
	    </div>
		
		
        <div class="style3"></div>
        <!--<div class="article_vert"><img src="images/img3.jpg" width="287" height="97" alt="" />
          <p>&nbsp;</p>
        </div>
        <div class="article_vert"><img src="images/img4.jpg" width="287" height="97" alt="" />
          <p>&nbsp;</p>
        </div>-->
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
  <!--<div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2>Image Gallery</h2>
        <a href="#"><img src="images/pix1.jpg" width="66" height="66" alt="" class="ad" /></a> <a href="#"><img src="images/pix2.jpg" width="66" height="66" alt="" class="ad" /></a> <a href="#"><img src="images/pix3.jpg" width="66" height="66" alt="" class="ad" /></a> <a href="#"><img src="images/pix4.jpg" width="66" height="66" alt="" class="ad" /></a> <a href="#"><img src="images/pix5.jpg" width="66" height="66" alt="" class="ad" /></a> <a href="#"><img src="images/pix6.jpg" width="66" height="66" alt="" class="ad" /></a>
        <div class="style3"></div>
      </div>
      <div class="col c2">
        <h2>&nbsp;</h2>
      </div>
      <div class="col c3">
        <h2>&nbsp;</h2>
      </div>
      <div class="style3"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
   
      
      <div class="style3"></div>
    </div>
  </div>-->
</div>
<div align=center></div>
</body>
</html>
