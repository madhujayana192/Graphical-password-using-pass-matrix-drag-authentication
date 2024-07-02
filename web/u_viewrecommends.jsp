<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>recommended documents </title>
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
.style14 {color: #006666}
.style16 {color: #009966; font-size: 14px; }
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
		 <h2 class="style7">All Recommended Documents </h2>
		 <p class="style7">&nbsp;</p>
		 <div class="area">
		 <%@ include file="connect.jsp" %>
		 <%@ page import="java.sql.*,java.io.*,java.util.*" %> 
		
		<table width="569" align="left"  cellpadding="0" cellspacing="0"  >
		
		<%
		try
		{
			String s1,s2,s3,s4,s5,s6,s7,s8;
			int i=0,m=0;
			String sql="select distinct doc_id from recommends where username!='"+user+"'";
			Statement st=connection.createStatement();
			ResultSet rs=st.executeQuery(sql);
			while(rs.next())
			{
				
				s1=rs.getString(1);
				
					String sql1="select * from documents where id='"+s1+"'";
					Statement st1=connection.createStatement();
					ResultSet rs1=st1.executeQuery(sql1);
					if(rs1.next())
					{
						i=rs1.getInt(1);
						s2=rs1.getString(2);//Document name
						s3=rs1.getString(3);//use
						s4=rs1.getString(8);//rank
			
							if(m==0)
						{
						%>
						<tr>
							<th width="87" height="36"><span class="style14">Image</span></th>
							<th width="120"><span class="style14">Document Name</span></th>
							<th width="186"><span class="style14">Document Use</span></th>
							<th width="54"><span class="style14">Rank</span></th>
						</tr>	
						<%
						}m=1;
						%>		
				
				
				<form action="u_viewrecommends1.jsp?id=<%=i%>" method="post">
				
				<tr>
					<td align="center" valign="middle"><img src="profile_pic.jsp?id=<%=i%>&type=<%="document"%>" width="70" height="70"/></td>
					<td align="center" valign="middle"><%=s2%></td>
					<td align="center" valign="middle"><%=s3%></td>
					<td align="center" valign="middle"><%=s4%></td>
				  <td width="120" colspan="2" align="center" valign="middle"><input type="submit" value="View Details"/></td>
				</tr>
			</form>
				<%
				
			}
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
		<p align="right" class="style11"><a href="usermain.jsp" class="style12 style10">Back</a></p>
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
