<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%
            //open a database connection
            try{
   				Connection con;
				Statement st;
				ResultSet rs;

					Class.forName("com.mysql.jdbc.Driver");
					con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student vigilience system?user=root&password=manager");
					st= con.createStatement();
					
					%>	<FORM name="attendance" method="Post" action="../jsp/result.jsp" > 
		             
		             <%
					
					String TID=String.valueOf(session.getAttribute("id"));//insert session key of login
					String division=request.getParameter("deptVal");
					String std=request.getParameter("semVal");
					String type=request.getParameter("typVal");
             
              		
              
             
              rs=st.executeQuery("Select sub_code,sub_name from teacher_sub where TID='"+TID+"' and class='"+std+"';");
           
              out.print("Subjects : ");
              out.print("<select name='sub_select' id='sub_select'>");
              out.print("<option value=''>--Select--</option>");
               
             
              while (rs.next()) {
              String  sub_code= rs.getString("sub_code");
              String  sub_name = rs.getString("sub_name");
              out.print("<option value='"+sub_name+"'>"+sub_name+"</option>");           
              }
              %>
              <input type= "hidden" name="std" value="<%=std %>">
              <input type= "hidden" name="div" value="<%=division %>">
              
              
              
              <%
              out.print("</select>");
              %>
                 Exam :
                                  <label>
                                        <select name="type" class="form-control" id="type"   required>
                                                    <option value="">-- Select --</option>
                                                    <option value="ut1">UT1</option>
                                                  <option value="end_sem1">END-SEM1</option>
                                                  <option value="ut2">UT2</option>
                                                  <option value="end_sem2">END-SEM2</option>
                                                 
                                        </select>  
                                        </label>&nbsp;&nbsp;&nbsp;
              
              <%
              out.print(" <br><br><br><br><input type='submit' value='submit'>");
             
              con.close();
              
          	
            	%>	</FORM> 
           
           <%
              
            }catch(Exception e ){
                out.print("<div><font color='red'>The following exception was thrown:</font></div>");
                out.println(e);
            }
%>