<!DOCTYPE HTML>
<%@ page import="com.dts.dae.dao.ProfileDAO,com.dts.dae.dto.RegistrationBean,com.dts.core.util.DateWrapper" %>

<%@ page import="java.util.*,com.bbau.aoc.dao.EventsDAO,com.bbau.aoc.dto.EventsDTO,com.dts.core.util.DateWrapper" %>
<%@ page import="java.util.*,com.bbau.aoc.dao.VacancyDAO,com.bbau.aoc.dto.VacancyDTO,com.dts.core.util.DateWrapper" %>
<%@ page import="java.util.*,com.bbau.aoc.dao.MessageDAO,com.bbau.aoc.dto.MessageDTO,com.dts.core.util.DateWrapper" %>
<%@ page import="java.util.*,com.bbau.aoc.dao.FriendDAO,com.bbau.aoc.dto.FriendDTO,com.dts.core.util.DateWrapper" %>
<HTML><HEAD>


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
	<body style="background-image: url('./images/bcak01.jpg'); background-repeat: no-repeat; background-size: cover;opacity:0.8;">
	

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
                  <td width="412" valign="top">
                        <td width="462"><form action="UpdateProfileAction.jsp" method="post" name="register">
                  <table width="200" border="0">
                    <tr>
                      
                    </tr>
                    <tr>
                      <td><table width="481" border="0" align="center" bordercolor="#CD817E" bgcolor="#FAF9DE" cellspacing="20px">
                        <tr>
                          <td width="7" height="57" valign="top">&nbsp;</td>
                          <td width="471"><div align="center"><span class="style11" style="font-size: 25px; font-weight: bold;">Personal Details</span></div></td>
                          <td width="10">&nbsp;</td>
                        </tr>
                        <%
                        String username=(String)session.getAttribute("user");
                        System.out.println(username);
                        RegistrationBean rb = new ProfileDAO().getProfile(username);
                        if(rb!=null)
                        {
                        %>
                        <tr>
                          <td align="right">&nbsp;</td>
                          <td>
                          <input name="loginname" type="hidden" value="<%=rb.getLoginID()%>">                          
                          <table width="407" border="0" align="center" cellspacing="10px">
                              <tr>
                                <td width="128"><span class="style17" style="font-size: 20px; font-weight: bold;">First Name </span></td>
                                <td width="269"><label>
                                  <input type="text" name="fname" style="height:25px; font-size:12pt" value="<%=rb.getFirstName()%>">
                                </label></td>
                              </tr>
                              <tr>
                                <td><span class="style17" style="font-size: 20px; font-weight: bold;">Last Name </span></td>
                                <td><label>
                                  <input type="text" name="lname" style="height:25px; font-size:12pt" value="<%=rb.getLastName()%>">
                                </label></td>
                              </tr>
                              <tr>
                                <td><span class="style17" style="font-size: 20px; font-weight: bold;">Birth Date </span></td>
                                <td><label>   
                                  <input type="text" name="bdate" readonly style="height:25px; font-size:12pt" value="<%=DateWrapper.parseDate(rb.getBirthDate1())%>"><a href="javascript:show_calendar('document.register.bdate', document.register.bdate.value);">
									<img src="images/cal.gif" width="18" height="18" border="0"/></a>
                                </label></td> 
                              </tr>
                              <tr>
                                <td><span class="style17" style="font-size: 20px; font-weight: bold;">City</span></td>
                                <td><label>
                                  <select name="city" style="height:25px; font-size:12pt">
                                  	<option><%=rb.getCity()%></option>
                                    <option>Lucknow</option>
                                    <option>chandighar</option>
                                  </select>
                                </label></td>
                              </tr>
                              <tr>
                                <td><span class="style17" style="font-size: 20px; font-weight: bold;">State</span></td>
                                <td><label>
                                  <select name="state" style="height:25px; font-size:12pt">
                                  	<option><%=rb.getState()%></option>
                                    <option>Madhya pradesh</option>
                                    <option>Maharashtra</option>
                                  </select>
                                </label></td>
                              </tr>
                              <tr>
                                <td><span class="style17" style="font-size: 20px; font-weight: bold;">Country</span></td>
                                <td><label>
                                  <select name="country" style="height:25px; font-size:12pt">
                                    <option><%=rb.getCountry()%></option>
                                  </select>
                                </label></td>
                              </tr>
                              
                              <tr>
                                <td colspan="2"><div align="center"><br/>
                                    <input name="Input" type="submit" value="Update" style="height:30px; width: 100px; font-size:18px;">
                                </div></td>
                              </tr>
                          </table></td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td valign="baseline"><img src="images/regisbot.gif" alt="a" width="465" height="4"></td>
                          <td>&nbsp;</td>
                        </tr>
                      </table></td>
                    </tr>
                  </table>
                </form></td>
              </tr>
            </table>
            <%
            }
             %>
			<h1 align="center">&nbsp;</h1>
			</TD>
            </TR></TBODY></TABLE></TD></TR>
        <TR vAlign=top>
          <TD height="2" colSpan=4>
</TABLE>
</BODY></HTML>
  
   

      

