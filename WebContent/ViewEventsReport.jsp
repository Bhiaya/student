<!DOCTYPE HTML>
<%@ page import="java.util.*,com.bbau.aoc.dao.ReportsDAO,com.bbau.aoc.dto.EventsDTO,com.dts.core.util.DateWrapper" %>

<%@ page import="java.util.*,com.bbau.aoc.dao.ReportsDAO,com.bbau.aoc.dto.FriendDTO,com.bbau.aoc.dto.AcadamicDTO,com.dts.core.util.DateWrapper" %>

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
                          <form method="post" action="ViewEventsReport.jsp" name="report" onSubmit="return checkfields()">
                          <%
                      String from="";
                      String to="";
                      if(request.getParameter("from")!=null)
                      {
                      		from = request.getParameter("from");
                      		to = request.getParameter("to");
                      }
                   %>
                  <table width="600" border="0" align="center">
                    
                    <tr>
                      <td height="27"><span class="style16" style="font-size:25px; font-weight: bold;">From</span> 
                        <input type="text" name="from" style="height:26px; font-size:13pt" readonly value="<%=from%>">
                          <a href="javascript:show_calendar('document.report.from', document.report.from.value);"> <img src="images/cal.gif" width="18" height="18" border="0"/></a>
                          <label></label>                      </td>
                      <td><span class="style16" style="font-size:25px; font-weight: bold;">To</span> 
                        <input type="text" name="to" style="height:26px; font-size:13pt" readonly value="<%=to%>">
                        <a href="javascript:show_calendar('document.report.to', document.report.to.value);"> <img src="images/cal.gif" width="18" height="18" border="0"/></a></td>
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
              	 <table width="534" height="60" border="0" align="center" bordercolor="#655FE2" bgcolor="#D1C33C">
                      <tr>
                        <td width="149" bgcolor="skyblue"><div align="center" class="style15" style="font-size:25px;font-weight: bold">Event Name </div></td>
                        <td width="167" bgcolor="skyblue"><div align="center" class="style15" style="font-size:25px;font-weight: bold">Venue</div></td>
                        <td width="101" bgcolor="skyblue"><div align="center" class="style15" style="font-size:25px;font-weight: bold">Status</div></td>
                        <td width="101" bgcolor="skyblue"><div align="center"><span class="style15" style="font-size:25px;font-weight: bold">Date</span></div></td>
                      </tr>
                      
                      	<%
                      try{
                        if(request.getParameter("from")!=null)
                        {
                          String fromdate = request.getParameter("from");
                          String todate = request.getParameter("to");
                          String criteria = request.getParameter("criteria");
                         
                          ArrayList al = new ReportsDAO().getEventsReport(fromdate, todate);
                  
                      	 EventsDTO eventsdto = null;
                      	 Iterator iterate = al.iterator();
                      	 int eventid=0;
                      	 String eventname = "";
                      	 String venue = "";
                      	 String status = "";
						 String date = "";
                      	 while(iterate.hasNext())
                      	 {
                      	      eventsdto = (EventsDTO)iterate.next();
                      	      eventid = eventsdto.getEventid();
                      	      eventname = eventsdto.getEventname();
                      	      venue = eventsdto.getVenue();
                      	      status = eventsdto.getStatus();
							  date = DateWrapper.parseDate(eventsdto.getEventdate1());
                      	       
                       %>
                      <tr align="center">
                        <td bgcolor="white"><p class="style12" style="font-size:22px;" onClick="showevent(<%=eventid%>)"><%=eventname %></p></td>
                        <td bgcolor="white"><span class="style12" style="font-size:22px;"><%=venue%></span></td>
                        <td bgcolor="white"><span class="style12" style="font-size:22px;"><%=status%></span></td>
                        <td bgcolor="white"><span class="style12" style="font-size:22px;"><%=date%></span></td>
                      </tr>
                      <%}}
                        }catch(Exception e){e.printStackTrace();} %>
                    </table>
                  	<div align="center"></div></td>
                </tr>
                  </table>
 </BODY></HTML>
  
   

      

