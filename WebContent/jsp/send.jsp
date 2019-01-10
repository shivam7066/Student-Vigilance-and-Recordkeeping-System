<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@page import="java.sql.*"%>

<% @page import="java.io.BufferedReader" %>
 @page import ="java.io.IOException"
 @page import=" java.io.InputStreamReader"
@page import ="java.io.OutputStreamWriter"
@page import ="java.net.HttpURLConnection"
@page import ="java.net.MalformedURLException"
@page import ="java.net.URL"
@page import ="java.net.URLConnection"
@page import ="java.net.URLEncoder"

@page import ="javax.net.ssl.HttpsURLConnection"
@page import=" javax.net.ssl.SSLContext"
@page import ="javax.net.ssl.X509TrustManager"
@page import ="javax.net.ssl.SSLSocketFactory"
@page import ="javax.net.ssl.TrustManager"

@page import ="java.security.KeyManagementException"
@page import ="java.security.NoSuchAlgorithmException"%>
@page import ="java.security.cert.X509Certificate" %>


<%


URL url = new URL("http://www.smshorizon.co.in/api/sendsms.php?user=tejaswasule&apikey=MlAlsL0mAW8y3Iz2U6eW&mobile=9960633763&message=89&senderid=xxyy&type=txt");
HttpURLConnection connection = (HttpURLConnection) url.openConnection();
connection.setRequestMethod("GET");
connection.connect();
reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
String line=reader.readLine(); 
while(line!=null) 
{ 
   out.println(line); 
   line=reader.readLine(); 
}
%>
</body>
</html>