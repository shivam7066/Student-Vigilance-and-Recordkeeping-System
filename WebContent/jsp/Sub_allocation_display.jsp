<!DOCTYPE html>
<html>
<title>:: Subject Allocation Display::</title>


<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%
            //open a database connection
            try{

              int z=0;
              Connection con;
        Statement st;
        ResultSet rs1,rs2,rs3;

          Class.forName("com.mysql.jdbc.Driver");
          con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student vigilience system?user=root&password=manager");
          st= con.createStatement();
          //String TID="T001";//String.valueOf(session.getAttribute("userid"));//insert session key of login
          String division=request.getParameter("deptVal");
          String std=request.getParameter("semVal");
          session.setAttribute("std",std);
          session.setAttribute("division",division);
          
      
      %>
                  <FORM name="attendance" method="Post" action="Sub_allocation_db.jsp">
                 <%
              
            String[] sub_code=new String[10];
           
            rs2=st.executeQuery("Select sub_code,sub_name from add_subject where std='"+std+"' and division='"+division+"';");
          
                 while (rs2.next())  {
              out.print("subject name: "+rs2.getString("sub_name"));
              %>&nbsp;&nbsp;&nbsp;<%
            //sub_code[z]=rs2.getString("sub_code");      
              out.print("select teacher name: ");
              out.print("<select name='teacher_select"+z+"' id='teacher_select'>");
              
              z++;
              st= con.createStatement();
              rs3=st.executeQuery("Select TID, name from teacher_personal_db;");
              out.print("<option value='1'>Select</option>");
              while (rs3.next())  {
                String  tid= rs3.getString("TID");
                  String  t_name = rs3.getString("name");
                  out.print("<option value='"+tid+"'>"+t_name+"</option>");
                          }
              out.print("</select>");
                        
            
              out.print(" <br>  ");
            }
      
  out.print(" <br><br><br><br><input type='submit' value='submit'>");
             %>
             <input type="hidden" name="count" value="<%= z%>">
              
              </FORM >
             
             <%
              con.close();
            }

              catch(Exception e ){
                out.print("<div><font color='red'>The following exception was thrown:</font></div>");
                e.printStackTrace();
                out.println(e);
              
            }
%>           


</body>
</html>