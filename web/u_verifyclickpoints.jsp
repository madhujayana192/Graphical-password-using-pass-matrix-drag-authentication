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
			<br /><br><a href="u_clickpoints.jsp?status=<%="Block"%>">Click Here</a>
			<%
		}
		else if((tx2.equals(""))&&(ty2.equals("")))
		{
			out.print("Please select X and Y Points on Image 2 ");
			%>
			<br /><br><a href="u_clickpoints.jsp?status=<%="Block"%>">Click Here</a>
			<%
		}
		else if((tx3.equals(""))&&(ty3.equals("")))
		{
			out.print("Please select X and Y Points on Image 3 ");
			%>
			<br /><br><a href="u_clickpoints.jsp?status=<%="Block"%>">Click Here</a>
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
                    
		int s1,s2,s3,s4,s5,s6,s7;
		 String sql = "select * from clickpoints where username='"+uname+"' ";
		 Statement stmt = connection.createStatement();
		 ResultSet rs=stmt.executeQuery(sql);
		 if(rs.next())
		 {
		 	s1=rs.getInt(3);
			s2=rs.getInt(4);
			s3=rs.getInt(5);
			s4=rs.getInt(6);
			s5=rs.getInt(7);
			s6=rs.getInt(8);
			
			if((a>=s1-10 && a<=s1+10)&&(b>=s2-10 && b<=s2+10)&&(a2>=s3-10 && a2<=s3+10)&&(b2>=s4-10 && b2<=s4+10)&&(a3>=s5-10 && a3<=s5+10)&&(b3>=s6-10 && b3<=s6+10))
			{		 	
				response.sendRedirect("usermain.jsp");
			}
			else
			{
				String sql1="select attempts from blockedusers where username='"+uname+"'";
				Statement st1=connection.createStatement();
				ResultSet rs1=st1.executeQuery(sql1);
				if(rs1.next())
				{
					int attempts=rs1.getInt(1);
					if(attempts<2)
					{
						String sql2="update blockedusers set attempts=attempts+1 where username='"+uname+"'";
						Statement st2=connection.createStatement();
						int m=st2.executeUpdate(sql2);
						if(m>0)
						{
							String msg="Wrong Click Points <br> Please Select Correct Points";
							application.setAttribute("msg",msg);
							response.sendRedirect("u_clickpoints.jsp?status=Block");
						}
					}
					else if(attempts<3)
					{
						String sql3="update blockedusers set attempts=attempts+1,status='Blocked' where username='"+uname+"' and status!='Blocked'";
						Statement st3=connection.createStatement();
						int n=st3.executeUpdate(sql3);
						if(n>0)
						{
							String sql5="update user set acc_status='Blocked' where username='"+uname+"'";
							Statement stmt5 = connection.createStatement();
							stmt5.executeUpdate(sql5);
							
							String msg="Your Account is Blocked <br> 3 Wrong Click Points <br> Please Send Unblock Request ";
							application.setAttribute("msg",msg);
							response.sendRedirect("u_clickpoints.jsp?status=Blocked");
						}
					}	
				}
				else
				{
				
					String sql4="insert into blockedusers(username,attempts,status)values('"+uname+"',1,'Block')";
					Statement st4=connection.createStatement();
					int x1=st4.executeUpdate(sql4);
					if(x1>0)
					{
					out.print(uname);
						String msg="Wrong Click Points <br> Please Select Correct Points";
						application.setAttribute("msg",msg);
						response.sendRedirect("u_clickpoints.jsp?status=Block");
					}
				}
				
				
			}	
		}
		}


            } 
			catch (Exception ex) {

                out.println(ex);
            }
%>

