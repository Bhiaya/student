<!DOCTYPE HTML>
<%@ page import="java.util.*,com.bbau.aoc.dao.ReportsDAO,com.bbau.aoc.dto.FriendDTO,com.bbau.aoc.dto.AcadamicDTO,com.dts.core.util.DateWrapper,java.text.SimpleDateFormat" %>

<html>
	<head>
	<script language="JavaScript" src="<%=request.getContextPath()+"/scripts/gen_validatorv31.js"%>" type="text/javascript"></script>
		<style type="text/css">
.Title {
font-family:Verdana;
font-weight:bold;
font-size:8pt
}
.Title1 {font-family:Verdana;
font-weight:bold;
font-size:8pt
}
        </style>
        
        <script language="JavaScript" type="text/javascript">
//--------------- LOCALIZEABLE GLOBALS ---------------
var d=new Date();
var monthname=new Array("January","February","March","April","May","June","July","August","September","October","November","December");
//Ensure correct for language. English is "January 1, 2004"
var TODAY = monthname[d.getMonth()] + " " + d.getDate() + ", " + d.getFullYear();
//---------------   END LOCALIZEABLE   ---------------
</script>
<script type="text/javascript" src="scripts/validate.js"></script>
<script type="text/javascript" src="scripts/ts_picker.js"></script>
	</head>
	<body bgcolor="">
	

 <jsp:include page="Header.jsp"></jsp:include>
<br/>         
        

              
             <table>
              
              <TR>
                <TD height="381" colspan="5" vAlign=top><table border="0" align="right" style="width: 935px; height: 335px;">
                <tr>
                  <td width="242">
               
				
				 </td>
                  <td width="43"><!--  <img src="images/rtopline4.gif" alt="f" width="43" height="203" align="top"></td>-->
                  <td width="412" valign="top">
                  <form name="report" action="ViewStudentReport.jsp" onSubmit="return checkfields()">
                  <%
                  String from="";
                  String to="";
                      if(request.getParameter("from")!=null)
                      {
                    	  
                      		from = request.getParameter("from");
                      		to =request.getParameter("to");
                      }
                   %>
                  <table width="600" border="0" align="center">
                    
                    <tr>
                      <td height="27"><span class="style16" style="font-size:25px; font-weight: bold;">From</span> 
                        <input type="text" name="from" style="height:25px; font-size:12pt" readonly value="<%=from%>">
                        <a href="javascript:show_calendar('document.report.from', document.report.from.value);"> <img src="images/cal.gif" width="18" height="18" border="0"/></a>
                          
                          <label></label>                      </td>
                      <td><span class="style16" style="font-size:25px;font-weight: bold;">To</span> 
                        <input type="text" name="to" style="height:25px; font-size:12pt" readonly  value="<%=to%>">
                        <a href="javascript:show_calendar('document.report.to', document.report.to.value);"> <img src="images/cal.gif" width="18" height="18" border="0"/></a>
                        </td>
                    </tr>
                    <tr>
                      <td height="2" colspan="2"></td>
                    </tr>
                    <tr>
                      <td height="30" colspan="2"><div align="center"><br/>
                          <input type="submit" name="Submit" value="Get Details" style="height:40px; width: 120px; font-size:20px;">
                      </div></td>
                    </tr>
                  </table>
                 </form><br/><br/>
              	 <table width="559" border="0" align="center" bordercolor="" bgcolor="">
                      <tr>
                        <td width="228" bgcolor="skyblue"><div align="center" class="style15" style="font-size:25px;font-weight: bold"> Name </div></td>
                        <td width="137" bgcolor="skyblue"><div align="center" class="style15" style="font-size:25px;font-weight: bold">Birth Date</div></td>
                        <td width="180" bgcolor="skyblue"><div align="center" class="style15" style="font-size:25px;font-weight: bold">City</div></td>
                        <%
                          if(session.getAttribute("user")!=null)
                          {
                         %>
                        <%} %>
                      </tr>
                      <%
                      try{
                        if(request.getParameter("from")!=null)
                        {
                        	
                        	String fromdate = request.getParameter("from");
                            String todate = request.getParameter("to");
                           System.out.println(fromdate);
                          ArrayList<FriendDTO> al = new ReportsDAO().getStudents(fromdate, todate);
                           System.out.println(al);
                      	 FriendDTO frienddto = null;
                      	 Iterator<FriendDTO> iterate = al.iterator();
                      	 String name="";
                      	 while(iterate.hasNext())
                      	 {
                      	      frienddto = (FriendDTO)iterate.next();
                      	      name = frienddto.getLoginame(); 
                        
                       %>
                      <tr align="center">
                        <td bgcolor="#FFD7AE"><p class="style12" style="font-size:22px;" onClick="javascript:path='viewuserfrienddetails.jsp?loginname=<%=name%>' 
hwnd = window.open(path,'profile','width=600,height=400,scrollbars=yes,resizable=no,toolbar=no,location=no,status=no,menubar=no' );"><%=frienddto.getFirstname()%>&nbsp;<%=frienddto.getLastname()%> </p></td>
                        <td bgcolor="#FFD7AE"><span class="style12" style="font-size:22px;"><%=DateWrapper.parseDate(frienddto.getBirdthdate1())%></span></td>
                        <td bgcolor="#FFD7AE"><span class="style12" style="font-size:22px;"><%=frienddto.getCity()%></span></td>
                        
                        <%}}
                        }catch(Exception e){} %>
                      </tr>
                    </table>
                  	<div align="center"></div></td>
                </tr>
                  </table>
 </BODY></HTML>
  
   

      

