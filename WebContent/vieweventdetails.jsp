<!DOCTYPE HTML>
<%@ page import="java.util.*,com.bbau.aoc.dao.EventsDAO,com.bbau.aoc.dto.EventsDTO,com.dts.core.util.DateWrapper" %>
<%@ page import="java.util.*,com.bbau.aoc.dao.VacancyDAO,com.bbau.aoc.dto.VacancyDTO,com.dts.core.util.DateWrapper" %>

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
	<body bgcolor="#F5FFFA">
	

 <jsp:include page="Header.jsp"></jsp:include>
<br/>         
        
       
        
            <TABLE width=900 height="358" border=0 cellPadding=0 cellSpacing=0>
              <TBODY>
              <TR>
             
                <TD vAlign=top align=right colSpan=2><div align="left">
                    <span class="style1"><FONT size="2" color="red"> <script language="JavaScript" type="text/javascript">
      //document.write(TODAY);	</script></FONT></span><BR>
                </div></TD>
                </TR>
             
         
             
            <TR>
                <TD height="381" colspan="5" align="right" vAlign=top><table width="888" height="448" border="0" align="right">
                <tr>
                  <td width="242">
				 <jsp:include page="scroll.html"/> 
				  </td>
                  <td width="412"> <form action="UpdateEventAction.jsp" method="post" name="eventregister">
                    <table width="200" border="0" align="center">
                      <tr>
                        <td><div align="center" class="style25">
					  
					  <% if(request.getParameter("status")!=null)
					  {%>
					  <%=request.getParameter("status")%>
					  <%}%>
					  </div></td>
                      </tr>
                      <tr>
                        <td>
                        <%
                            String eventid = request.getParameter("eventid");
                            EventsDTO eventdto = new EventsDAO().getEventDetails(Integer.parseInt(eventid));
                        
                         %>
                        <input type="hidden" name="eventid" value="<%=eventid%>"/>
                        <table width="500" border="0" align="center" bordercolor="#CD817E" bgcolor="#FAF9DE" cellspacing="20px">
                          <tr>
                            <td width="1" height="57" valign="top"></td>
                            <td width="300"><div align="center" class="style24" style="font-size: 28px; font-weight: bold;">Event  Details</div></td>
                            <td width="10"></td>
                          </tr>
                          <tr>
                            <td align="right"></td>
                            <td><table width="459" border="0" align="center" cellspacing="10px">
                                <tr>
                                  <td width="177"><span class="style23" style="font-size: 20px; font-weight: bold;">Event Name</span></td>
                                  <td width="172"><input type="text" name="eventname" style="font-size:13pt; height: 25px" value="<%=eventdto.getEventname()%>">
                                  </td>
                                </tr>
                                <tr>
                                  <td><span class="style23" style="font-size: 20px; font-weight: bold;">Date</span></td>
                                  <td><label>
                                    <input type="text" name="eventdate" style="font-size:12pt; height: 25px" readonly value=<%=DateWrapper.parseDate(eventdto.getEventdate1())%>><a href="javascript:show_calendar('document.eventregister.eventdate', document.eventregister.eventdate.value);">
									<img src="images/cal.gif" width="18" height="18" border="0"/>
                                  </label></td>
                                </tr>
                                <tr>
                                  <td><span class="style23" style="font-size: 20px; font-weight: bold;">Time</span></td>
                                  <td><label>
                                    <input type="text" name="eventtime" style="font-size:13pt; height: 25px" value="<%=eventdto.getEventtime()%>">
                                  </label></td>
                                </tr>
                                <tr>
                                  <td><span class="style23" style="font-size: 20px; font-weight: bold;">Venue</span></td>
                                  <td><label>
                                    <input type="text" name="venue" style="font-size:13pt; height: 25px" value="<%=eventdto.getVenue()%>">
                                  </label></td>
                                </tr>
                                <tr>
                                  <td><span class="style23" style="font-size: 20px; font-weight: bold;">Description</span></td>
                                  <td><label>
                                    <input type="text" name="eventdesc" style="font-size:13pt; height: 25px" value="<%=eventdto.getDescription()%>">
                                  </label></td>
                                </tr>
                                <tr>
                                  <td><span class="style23" style="font-size: 20px; font-weight: bold;">Status</span></td>
                                  <td><label>
                                    <select name="status" style="font-size:13pt; height: 25px" style="height:40px; width: 100px; font-size:20px;">
                                    <%
                                     String select="";
                                     if(eventdto.getStatus().equals("Completed"))
                                     {
                                         select="selected";
                                     }
                                     %>
                                       <option>Scheduled</option>
                                       <option <%=select%>>Completed</option>
                                    </select>
                                  </label></td>
                                </tr>
                                <tr></tr>  
                                <tr></tr>  
                                <tr></tr>  
                                <tr></tr>  
                                
                                  
                                <tr>
                                  <td colspan="2"><label>
                                      <div align="center">
                                        <input type="submit" name="Submit" value="Update" style="height:30px; width: 80px; font-size:18px;">
                                        &nbsp;&nbsp;&nbsp;
                                        <input name="Input2" type="reset" value="Clear" style="height:30px; width: 80px; font-size:18px;">
                                      </div>
                                    </label></td>
                                </tr>
                            </table></td>
                            <td>&nbsp;</td>
                          </tr>
                          
                        </table></td>
                      </tr>
                    </table>
                    </form>			</td>
                </tr>
                  </table>			      </TD>
              </TR></TBODY></TABLE></TD></TR>
        <TR vAlign=top>
          <TD height="2" colSpan=4>
</TABLE>
</BODY></HTML>
  
   

      

