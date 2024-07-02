<title>add click points</title>
<%@ include file="connect.jsp" %>
<%
			String uname = request.getParameter("uname");
			
                        String tx = request.getParameter("x");
                        
			String ty = request.getParameter("y");
                        
			String tx2 = request.getParameter("x2");
                        
			String ty2 = request.getParameter("y2");
                        
			String tx3 = request.getParameter("x3");
                        
			String ty3 = request.getParameter("y3");
      
            try {

       if((tx.equals(""))&&(ty.equals("")))
		{
			out.print("Please select X and Y Points on Image 1 ");
			%>
			<br /><br><a href="ur_clickpoints.jsp?uname=<%=uname%>">Click Here</a>
			<%
		}
		else if((tx2.equals(""))&&(ty2.equals("")))
		{
			out.print("Please select X and Y Points on Image 2 ");
			%>
			<br /><br><a href="ur_clickpoints.jsp?uname=<%=uname%>">Click Here</a>
			<%
		}
		else if((tx3.equals(""))&&(ty3.equals("")))
		{
			out.print("Please select X and Y Points on Image 3 ");
			%>
			<br /><br><a href="ur_clickpoints.jsp?uname=<%=uname%>">Click Here</a>
			<%
		}
		else
		{
                    String x=tx.substring(0, tx.length() - 2);
			
                        String y=ty.substring(0, ty.length() - 2);
			
                        String x2=tx2.substring(0, tx2.length() - 2);
			
                        String y2=ty2.substring(0, ty2.length() - 2);
			
                        String x3=tx3.substring(0, tx3.length() - 2);
			
                        String y3 = ty3.substring(0, ty3.length() - 2);
                        
                    int a= Integer.parseInt(x);
                    int b= Integer.parseInt(y);
                    int a2= Integer.parseInt(x2);
                    int b2= Integer.parseInt(y2);
                    int a3= Integer.parseInt(x3);
                    int b3= Integer.parseInt(y3);
		 String sql = "insert into clickpoints(username,point1_x,point1_y,point2_x,point2_y,point3_x,point3_y)values('"+uname+"','"+a+"','"+b+"','"+a2+"','"+b2+"','"+a3+"','"+b3+"') ";
		 Statement stmt = connection.createStatement();
					int x1=stmt.executeUpdate(sql);
					if(x1>0)
					{
						String msg="User Registered Successfully";
						application.setAttribute("msg",msg);
						response.sendRedirect("u_register.jsp");
					}
		}


            } 
			catch (Exception ex) {

                System.out.println(ex);
            }
%>

