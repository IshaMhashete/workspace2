<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String username = request.getParameter("username");
String password = request.getParameter("password");
System.out.println(username + ":" + password);
String message = "";
if(username.equals(password)){
	message = "You are a valid user...";
	System.out.println("forwarding to success.jsp");
	request.getRequestDispatcher("Success.jsp").forward(request, response);
}
else{
	message = "You are Not a valid user";
	System.out.println("forwarding to failure.jsp");
	request.getRequestDispatcher("Failure.jsp").forward(request, response);
}

%>

</body>
</html>