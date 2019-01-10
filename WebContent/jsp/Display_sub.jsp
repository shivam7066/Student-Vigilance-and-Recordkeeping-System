<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
 <link href="../css/main.css" rel="stylesheet">
<%
            //open a database connection
            try{
   				Connection con;
				Statement st;
				ResultSet rs;

					Class.forName("com.mysql.jdbc.Driver");
					con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student vigilience system?user=root&password=manager");
					st= con.createStatement();
					//String TID="T001";//String.valueOf(session.getAttribute("userid"));//insert session key of login
					String division=request.getParameter("deptVal");
					String std=request.getParameter("semVal");
					session.setAttribute("std",std);
					session.setAttribute("division",division);
					
			rs=st.executeQuery("Select sub_no from architect where standard='"+std+"' and division='"+division+"';");
           
              while (rs.next()) {
                  int n= Integer.parseInt(rs.getString("sub_no"));
                  session.setAttribute("total_sub",n);
                        
                  %>
                  
                  
                  <FORM name="attendance" method="Post" action="../jsp/Add_sub_db.jsp">
                  
                  
             	 <%
              
              for(int i=0; i<n; i++)
              {
              out.print("subject code: <input type='text' class='form-control' name='sc"+i+"' placeholder='subject code' >");
              out.print("   ");
              out.print("subject name: <input type='text' class='form-control' name='sn"+i+"'  placeholder='subject name' >");
              out.print("<br/><br/>");
              
              }

              }
             
              out.print(" <br><br><br><br><input type='submit' value='submit' class='button1'>");
             %>
             
              
              </FORM >
             
             <%
              con.close();
            }catch(Exception e ){
                out.print("<div><font color='red'>The following exception was thrown:</font></div>");
                out.println(e);
            }
%>