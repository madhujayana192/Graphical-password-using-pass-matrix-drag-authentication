<html>
<head>
<STYLE>
  #rubberBand {
  position: absolute;
   visibility: hidden;
   width: 0px; height: 0px;
  border: 2px solid red;
 }
.style1 {
	font-size: 36px;
	color: #009966;
}
.style2 {
	font-size: 14px;
	color: #FF3333;
}
.style3 {color: #FF3300}
.style4 {font-size: 36px;
	color: #663399;
}
</STYLE>
</HEAD>
 <BODY>
 <%String user=(String)application.getAttribute("user"); 
 String status=request.getParameter("status");
 if(status.equalsIgnoreCase("Block"))
 {
 %>
 <form name="portion" method="post" action="u_verifyclickpoints.jsp?uname=<%=user%>">
 <table width="1192">
 <tr>
   <th height="58" colspan="3"><span class="style4">Authenticate with Graphical Password on Image Portion</span></th>
 </tr>
 <tr>
	 <td align="center" valign="middle"><img name="myImage" id="myImage" src="Image11.jpg"  width="320" height="400"/>
	   <DIV ID="rubberBand"></DIV>

       <div align="center">
   <SCRIPT>

  var IMG;

  function startRubber (evt) {
   if (document.all) {

       var r = document.all.rubberBand;
       r.style.width = 0;
       r.style.height = 0;
       r.style.pixelLeft = event.x;
      r.style.pixelTop = event.y;
      r.style.visibility = 'visible';
      IMG.ondragstart = cancelDragDrop; // otherwise IE will try to drag the image



   }
     else if (document.getElementById) {
   // firefox
   evt.preventDefault();
   var r = document.getElementById('rubberBand');
   r.style.width = 0;
   r.style.height = 0;
   r.style.left = evt.clientX + 'px';
   r.style.top = evt.clientY + 'px';
   r.style.visibility = 'visible';
   r.onmouseup = stopRubber;
    }
    IMG.onmousemove = moveRubber;
   }


   function moveRubber (evt) {
   if (document.all) { // IE
   var r = document.all.rubberBand;
   r.style.width = event.x - r.style.pixelLeft;
   r.style.height = event.y - r.style.pixelTop;
   }
   else if (document.getElementById) { // firefox
   var r = document.getElementById('rubberBand');
   r.style.width = evt.clientX - parseInt(r.style.left);
   r.style.height = evt.clientY - parseInt(r.style.top);

  document.portion.x.value=r.style.left;
  document.portion.y.value=r.style.width;

   }
   return false; // otherwise IE won't fire mouseup :/
   }
  function stopRubber (evt) {
  IMG.onmousemove = null;
   }

  function cancelDragDrop()
   {
  window.event.returnValue = false;
   }

   IMG = document.getElementById('myImage');
   IMG.onmousedown = startRubber;
   IMG.onmouseup = stopRubber;

 </SCRIPT>
   
 </div>
<br> 
  
    <input type="hidden" name="x" size="6" > 
    
    <input type="hidden" name="y" size="6">
</td>

<td align="center" valign="bottom"><img name="myImage2" id="myImage2" src="Image22.jpg"  width="320" height="400"/>
  <DIV ID="rubberBand"></DIV>

 <div align="center">
   <SCRIPT>

  var IMG2;

  function startRubber2 (evt2) {
   if (document.all) {

       var r2 = document.all.rubberBand;
       r2.style.width = 0;
       r2.style.height = 0;
       r2.style.pixelLeft = event.x;
      r2.style.pixelTop = event.y;
      r2.style.visibility = 'visible';
      IMG2.ondragstart = cancelDragDrop2; // otherwise IE will try to drag the image



   }
     else if (document.getElementById) {
   // firefox
   evt2.preventDefault();
   var r2 = document.getElementById('rubberBand');
   r2.style.width = 0;
   r2.style.height = 0;
   r2.style.left = evt2.clientX + 'px';
   r2.style.top = evt2.clientY + 'px';
   r2.style.visibility = 'visible';
   r2.onmouseup = stopRubber2;
    }
    IMG2.onmousemove = moveRubber2;
   }


   function moveRubber2 (evt2) {
   if (document.all) { // IE
   var r2 = document.all.rubberBand;
   r2.style.width = event.x - r2.style.pixelLeft;
   r2.style.height = event.y - r2.style.pixelTop;
   }
   else if (document.getElementById) { // firefox
   var r2 = document.getElementById('rubberBand');
   r2.style.width = evt2.clientX - parseInt(r2.style.left);
   r2.style.height = evt2.clientY - parseInt(r2.style.top);

  document.portion.x2.value=r2.style.left;
  document.portion.y2.value=r2.style.width;

   }
   return false; // otherwise IE won't fire mouseup :/
   }
  function stopRubber2 (evt2) {
  IMG2.onmousemove = null;
   }

  function cancelDragDrop2()
   {
  window.event.returnValue = false;
   }

   IMG2 = document.getElementById('myImage2');
   IMG2.onmousedown = startRubber2;
   IMG2.onmouseup = stopRubber2;

 </SCRIPT>
   
 </div>
<br>
   
    <input type="hidden" name="x2" size="6">
    
    <input type="hidden" name="y2" size="6"></p>
</td>
<td align="center" valign="middle"><img name="myImage3" id="myImage3" src="Image33.jpg" width="320" height="400"/>
  <DIV ID="rubberBand"></DIV>

  <div align="center">
   <SCRIPT>

  var IMG3;

  function startRubber3 (evt3) {
   if (document.all) {

       var r3 = document.all.rubberBand;
       r3.style.width = 0;
       r3.style.height = 0;
       r3.style.pixelLeft = event.x;
      r3.style.pixelTop = event.y;
      r3.style.visibility = 'visible';
      IMG3.ondragstart = cancelDragDrop3; // otherwise IE will try to drag the image



   }
     else if (document.getElementById) {
   // firefox
   evt3.preventDefault();
   var r3 = document.getElementById('rubberBand');
   r3.style.width = 0;
   r3.style.height = 0;
   r3.style.left = evt3.clientX + 'px';
   r3.style.top = evt3.clientY + 'px';
   r3.style.visibility = 'visible';
   r3.onmouseup = stopRubber3;
    }
    IMG3.onmousemove = moveRubber3;
   }


   function moveRubber3(evt3) {
   if (document.all) { // IE
   var r3 = document.all.rubberBand;
   r3.style.width = event.x - r3.style.pixelLeft;
   r3.style.height = event.y - r3.style.pixelTop;
   }
   else if (document.getElementById) { // firefox
   var r3 = document.getElementById('rubberBand');
   r3.style.width = evt3.clientX - parseInt(r3.style.left);
   r3.style.height = evt3.clientY - parseInt(r3.style.top);

  document.portion.x3.value=r3.style.left;
  document.portion.y3.value=r3.style.width;

   }
   return false; // otherwise IE won't fire mouseup :/
   }
  function stopRubber3 (evt3) {
  IMG3.onmousemove = null;
   }

  function cancelDragDrop3()
   {
  window.event.returnValue = false;
   }

   IMG3 = document.getElementById('myImage3');
   IMG3.onmousedown = startRubber3;
   IMG3.onmouseup = stopRubber3;

 </SCRIPT>
   
 </div>
<br>
  
    <input type="hidden" name="x3" size="6">
    
    <input type="hidden" name="y3" size="6"></p>
</td>

  </tr><br>
  <tr><td colspan="3"><br>
  <p align="center">
    <label>
    <input type="submit" name="Submit" value="Login">
    </label>
    <label>
    <input type="reset" name="Submit2" value="Reset">
    </label>
    <a href="u_viewclickpoints.jsp?uname=<%=user%>" class="style3">Forgot Click Points?</a></p></td></tr>
  </table>
</form>
<div align="center">
<%
String msg=(String)application.getAttribute("msg");
if(msg!=null)
{
	%>
		<h3><span class="style2"> <%=msg%> </span></h3>
	<%
}application.removeAttribute("msg");
%></div><%
}
else if(status.equalsIgnoreCase("Blocked"))
{
	String msg=(String)application.getAttribute("msg");
	if(msg!=null)
	{
		%>
		<h3><span class="style2"> <%=msg%></span></h3><br>
		<a href="u_unblockreq.jsp?uname=<%=user%>"> You Are a Shoulder Surfing Attacker!!!Click Here To Send Unblock Request</a><br><br>
		<a href="userlogin.jsp"> Click Here To Back</a>
		<%
	}application.removeAttribute("msg");
}
%>
</Body>
<html>