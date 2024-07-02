<html>
<head>
<STYLE>
  #rubberBand {
  position: absolute;
   visibility: hidden;
   width: 0px; height: 0px;
  border: 4px solid red;
 }
 .style1 {
	color: #0000FF;
	font-style: italic;
	font-weight: bold;
}
</STYLE>
 
 
 
 
 
<!-- 
<script type="text/javascript">
var img=document.getElementById("myImage");
img.onmousedown=GetCoordinates;
</script>-->
 </head>
 <%@ include file="connect.jsp" %>
<%@ page import="java.util.*" %>
 <body>
 <table>

 
 <tr>
	 <td><img name="myImage" id="myImage" src="Image1.jpg"> </td>
 </tr>
 <p>&nbsp;</p>
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

  document.portion.x1.value=r.style.height;
  document.portion.y1.value=r.style.width;

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
 

  <p align="center"><strong>Height:</strong><input type="text" name="x1"><strong>Weight</strong>:<input type="text" name="y1"> 


</Body>
<html>