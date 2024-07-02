<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>search documents results</title>
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
.style10 {color: #FF3300}
.style11 {color: #009966}
.style12 {color: #FF6633}
.style13 {
	color: #FF6633;
	font-size: 14px;
	font-weight: bold;
}
.style14 {color: #006666}
-->
</style>
<script type='text/javascript'>

function saveTextAsFile()
{
	var textToWrite = document.getElementById("textarea").value;
	var textFileAsBlob = new Blob([textToWrite], {type:'text/plain'});
	var fileNameToSaveAs = document.getElementById("fname").value;

	var downloadLink = document.createElement("a");
	downloadLink.download = fileNameToSaveAs;
	downloadLink.innerHTML = "Download File";
	if (window.webkitURL != null)
	{
		// Chrome allows the link to be clicked
		// without actually adding it to the DOM.
		downloadLink.href = window.webkitURL.createObjectURL(textFileAsBlob);
	}
	else
	{
		// Firefox requires the link to be added to the DOM
		// before it can be clicked.
		downloadLink.href = window.URL.createObjectURL(textFileAsBlob);
		downloadLink.onclick = destroyClickedElement;
		downloadLink.style.display = "none";
		document.body.appendChild(downloadLink);
	}

	downloadLink.click();
}

function destroyClickedElement(event)
{
	document.body.removeChild(event.target);
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
		<%String user=(String)application.getAttribute("user"); %>
          <li><a href="usermain.jsp">Home</a></li>
          <li><a href="#"><%=user%></a></li>
          <li><a href="userlogin.jsp">Logout</a></li>
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
		 <h2 class="style7">Download Document  </h2>
		 <p class="style7">&nbsp;</p>
		 <div class="area">
		 <%@ include file="connect.jsp" %>
		 <%@ page import="java.sql.*,java.io.*,java.util.*" %> 
		<%String key=request.getParameter("key");
		String id=request.getParameter("id"); 
		
		%>
		<table width="487" height="512" align="center"  cellpadding="0" cellspacing="0"  >
		
		<%
		try
		{
			String s1,s2,s3,s4,s5,s6,s7,s8;
			int i=0,m=0;
			String sql="select * from documents where id='"+id+"'";
			Statement st=connection.createStatement();
			ResultSet rs=st.executeQuery(sql);
			if(rs.next())
			{
				i=rs.getInt(1);
				s1=rs.getString(2);//Document name
				s2=rs.getString(3);
				s3=rs.getString(4);//Filename
				s4=rs.getString(5);//content
				s5=rs.getString(7);//dt
				s6=rs.getString(8);//rank
								
				
				%>
				<form action="u_updatedocrank.jsp?id=<%=i%>&key=<%=key%>&type=<%="download"%>" method="post">
				<tr>
				<td height="174" colspan="2" align="left" valign="middle"><img src="profile_pic.jsp?id=<%=i%>&type=<%="document"%>" width="150" height="150"/></td>
				</tr>
				<tr>	
					<th width="168" height="34" align="left" valign="middle"><span class="style14">Document Name : </span></th>
				  <td width="317" align="left" valign="middle"><%=s1%></td>
				</tr>
				<tr>	
					<th width="168" height="28" align="left" valign="middle"><span class="style14">File Name : </span></th>
				  <td align="left" valign="middle"><input type="text" id="fname" value="<%=s3%>" /></td>
				</tr>
				<tr>
					<th width="168" height="164" align="left" valign="middle"><span class="style14">File Content : </span></th>
				  <td align="left" valign="middle"><textarea id="textarea" cols="50" rows="8"><%=s4%></textarea></td>
				</tr>
				<tr>
					<th width="168" height="34" align="left" valign="middle"><span class="style14">Uploaded Date : </span></th>
				  <td align="left" valign="middle"><%=s5%></td>
				</tr>
				<tr>
					<th width="168" height="36" align="left" valign="middle"><span class="style14">Rank : </span></th>
				  <td align="left" valign="middle"><%=s6%></td>
				</tr>
				<tr>
					<td height="40" colspan="2" align="center" valign="middle">
			      <button onClick="saveTextAsFile()" type="submit">Download</button></td>
				</tr>
				</form>
				<%
				
			}
		connection.close();	
		}
		
	 
		catch (Exception ex) {

                out.println(ex);
            }
			%>		
	  </table>
							 
		</div>
        <div class="style3">
		<p align="right" class="style11"><a href="u_searchdoc_results.jsp?key=<%=key%>" class="style12 style10">Back</a></p>
		</div>
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
            <li><a href="usermain.jsp">Home</a></li>
            <li><a href="userlogin.jsp">Logout</a></li>
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
