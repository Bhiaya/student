
<%@page import="com.bbau.aoc.dao.AcadamicDAO"%>
<%@page import="com.dts.dae.dao.NewDAO"%>
<%@page import="com.dts.dae.dao.ProfileDAO"%>

<%
AcadamicDAO dao=new AcadamicDAO();
String login=request.getParameter("loginid");
dao.acceptUserRequest(login);   
response.sendRedirect("ViewUsers.jsp");
%>