<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>common login page</title>
</head>
<body>

<%@page import="java.sql.*"%>
<%
String id,ps,typ="NA";
int cnt=0;
id=request.getParameter("username");
ps=request.getParameter("password");

session.setAttribute("id",id);

try{
	
	
	Connection con;
	PreparedStatement pst;
	ResultSet rs;

Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student vigilience system?user=root&password=manager");
pst=con.prepareStatement("select * from login_view where username=? and pass=?;");
pst.setString(1,id);
pst.setString(2,ps);
rs=pst.executeQuery();

while(rs.next())
{
cnt++;
typ=rs.getString("usertype");
}

if(cnt>0)
{
session.setAttribute("userid",id);
	if(typ.equals("student"))
	{
	%>
	<jsp:forward page="Student_home.jsp"/>
	<%
	}
	if(typ.equals("teacher"))
	{
	%>
	<jsp:forward page="Teacher_home.jsp"/>
	<%
	}
	if(typ.equals("admin"))
	{
	%>
	<jsp:forward page="Admin_home.jsp"/>
	<%
	}
}
else
{
	response.sendRedirect("../html/login1.html");
%>
<jsp:forward page="../index.html"/>



<%
}
con.close();
}
catch(Exception e)
{
out.println(e);
}
%>

</body>
</html>