<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Header.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body style="background-image: url('./images/bcak01.jpg'); background-repeat: no-repeat; background-size: cover;opacity:0.8;">
  <center>
	
	 
	 
	 <c:choose>
			<c:when test="${sessionScope.role=='admin'}">
				<jsp:include page="./AdminMenu.jsp" />
			</c:when>
			<c:when test="${sessionScope.role=='manager'}">
				<jsp:include page="./OrganiserMenu.jsp" />
			</c:when>
			<c:when test="${sessionScope.role=='user'}">
				<jsp:include page="./SudentMenu.jsp" />
			</c:when>
			<c:when test="${sessionScope.role eq null}">
				<jsp:include page="HomeMenu.jsp"/>
			</c:when>
		</c:choose>
		
		 <br>
	   </center>
  </body>
</html>
