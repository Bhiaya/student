<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="com.bbau.aoc.dto.AcadamicDTO,com.bbau.aoc.dao.AcadamicDAO"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'AcadamicdetailsAction.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <%String target = "userhome.jsp?status=Updation Failed";
    try{
    AcadamicDTO adto = new AcadamicDTO();
    System.out.println(request.getParameter("loginname"));
    adto.setLoginname(request.getParameter("loginname"));
    adto.setYearofpass(Integer.parseInt(request.getParameter("yearofpass")));
    adto.setYearofjoining(Integer.parseInt(request.getParameter("yearofjoin")));
    adto.setProfession(request.getParameter("profession"));
    adto.setRollno(request.getParameter("rollno"));
    
     
    boolean flag = new AcadamicDAO().updateAcadamicDetails(adto); 
    
    if(flag)
       target = "userhome.jsp?status=Updation Success";
       }catch(Exception e){e.printStackTrace();}
    RequestDispatcher rd = request.getRequestDispatcher(target);
    rd.forward(request,response);       
    %>
   
  </body>
</html>
