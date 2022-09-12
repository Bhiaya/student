<!DOCTYPE HTML>
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
                <TD height="381" colspan="5" align="right" vAlign=top><table width="981" height="420" border="0" align="right">
                <tr>
                  <td width="242">
				 <jsp:include page="scroll.html"/> 
				  </td>
                 
                  <td width="412"> <form action="NewEventAction.jsp" method="post" name="eventregister">
                    <table width="20" border="0" align="center">
                      <tr>
                        <td><div align="center" class="style25">
					  
					  <% if(request.getParameter("status")!=null)
					  {%>
					  <%=request.getParameter("status")%>
					  <%}%>
					  </div></td>
                      </tr>
                      <tr>
                        <td><table width="513" border="0" align="center" bordercolor="#CD817E" bgcolor="#F5FFFA" height="320" cellspacing="25px">
                          <tr>
                       
                            <td width="400"><div align="center" class="style24" style="font-size: 28px; font-weight: bold;">New  Event</div></td>
                            
                          </tr>
                          <tr>
                           
                            <td><table width="359" border="0" align="center" cellspacing="10px">
                                <tr>
                                  <td width="77"><span class="style23" style="font-size: 20px; font-weight: bold;">EventName&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br></span></td>
                                  <td width="172"><input type="text" name="eventname" style="height:25px; font-size:12pt">
                                  </td>
                                </tr>
                                <tr>
                                   <td width="77"><span class="style23" style="font-size: 20px; font-weight: bold;">Date</span></td>
                                  <td width="672"><label>
                                    <input type="text" name="eventdate" style="height:25px; font-size:10pt" readonly><a href="javascript:show_calendar('document.eventregister.eventdate', document.eventregister.eventdate.value);">
<img src="images/cal.gif" width="20" height="25" border="0" style="margin: 0"/>
                                  </label></td>
                                </tr>
                                <tr>
                                  <td><span class="style23" style="font-size: 20px; font-weight: bold;">Time</span></td>
                                  <td><label>
                                    <input type="text" name="eventtime" style="height:25px; font-size:12pt">
                                  </label></td>
                                </tr>
                                <tr>
                                  <td><span class="style23" style="font-size: 20px; font-weight: bold;">Venue</span></td>
                                  <td><label>
                                    <input type="text" name="venue" style="height:25px; font-size:12pt">
                                  </label></td>
                                </tr>
                                <tr>
                                  <td><span class="style23" style="font-size: 20px; font-weight: bold;">Description</span></td>
                                  <td><label>
                                    <input type="text" name="eventdesc" style="height:25px; font-size:12pt">
                                  </label></td>
                                </tr>
                                <tr>
                                  <td><span class="style23" style="font-size: 20px; font-weight: bold;">Status</span></td>
                                  <td><label>
                                    <select name="status" style="height:25px; font-size:12pt">
                                       <option>Scheduled</option>
                                       <option>Completed</option>
                                    </select>
                                  </label></td>
                                </tr>
                                <tr></tr>
                                <tr></tr>
                                <tr></tr>
                                <tr></tr>
                                <tr></tr>
                                <tr>
                                  <td colspan="2"><label>
                                      <div align="center">
                                        <input type="submit" name="Submit" value="Register" style="height:30px; width: 120px; font-size:18px;">
                                        &nbsp;
                                        <input name="Input2" type="reset" value="Clear" style="height:30px; width: 120px; font-size:18px;">
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
              </TR></TBODY></TABLE>
</BODY></HTML>
  
   

      

