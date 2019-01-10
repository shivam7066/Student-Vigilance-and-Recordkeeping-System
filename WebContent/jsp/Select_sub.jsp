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
					
					%>	<FORM name="attendance" method="Post" action="../jsp/Student_attendance.jsp" > 
		             
		             <%
					
					String TID=String.valueOf(session.getAttribute("id"));//insert session key of login
					String division=request.getParameter("deptVal");
					String std=request.getParameter("semVal");
             
              		
              
             
              rs=st.executeQuery("Select sub_code,sub_name from teacher_sub where TID='"+TID+"' and class='"+std+"';");
           
              out.print("<p class='style9'>Subjects : ");
              out.print("<select name='sub_select' id='sub_select'>");
              out.print("<option value=''>--Select--</option>");
               
              while (rs.next()) {
              String  sub_code= rs.getString("sub_code");
              String  sub_name = rs.getString("sub_name");
              out.print("<option value='"+sub_name+"'>"+sub_name+"</option>");           
              }
              %>
              <input type= "hidden" name="sem_select" value="<%=std %>">
              <input type= "hidden" name="dept_select" value="<%=division %>">
              
              
              <%
              out.print("</select>");
              out.print(" <br><br><br><br><input type='submit' value='submit'>");
             
              con.close();
              
          	
            	%>	</FORM> 
           
           <%
              
            }catch(Exception e ){
                out.print("<div><font color='red'>The following exception was thrown:</font></div>");
                out.println(e);
            }
%>