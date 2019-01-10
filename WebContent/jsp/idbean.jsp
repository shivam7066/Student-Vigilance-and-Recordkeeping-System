<html>
<body>
<%
int year=Integer.parseInt(request.getParameter("year"));
int std=Integer.parseInt(request.getParameter("std"));
String divv=request.getParameter("divv");
int limit=Integer.parseInt(request.getParameter("limit"));

%>
<jsp:useBean id="gen" class="beans.Gen_stud_ID" />
<jsp:setProperty name="gen" property="yr" value="<%=year%>"/>
<jsp:setProperty name="gen" property="standard" value="<%=std%>"/>

<jsp:setProperty name="gen" property="limit" value="<%=limit%>"/>
<jsp:setProperty name="gen" property="div" value="<%=divv%>"/>
<h2>
<jsp:getProperty name="gen" property="id"/>



</h2>
</body>
</html>