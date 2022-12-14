<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="com.bbau.aoc.dao.MessageDAO,com.bbau.aoc.dto.MessageDTO,com.dts.core.util.LoggerManager" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'DeleteMessage.jsp' starting page</title>
    
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
  <%
   int count = 0;
   String pathstring=request.getParameter("page");
   String field="";
   if(pathstring.equals("ViewInbox.jsp"))
      field = "receiverstatus";
   else 
      field = "senderstatus";  
  try{
    MessageDAO msgdao = new MessageDAO();
    String param[] = request.getParameterValues("ch");
    for(int i=0;i<param.length;i++)
    {
       if(msgdao.changeMessageStatus(Integer.parseInt(param[i]),field)) 
            count++;
    }
    }catch(Exception e)
    {
      LoggerManager.writeLogSevere(e);
    }
    RequestDispatcher rd = request.getRequestDispatcher(pathstring+"?status="+count+" Conversations are deleted");
    rd.forward(request,response);
   %>
  </body>
</html>
