<!DOCTYPE HTML>
<%@ page import="com.bbau.aoc.dao.AcadamicDAO,com.bbau.aoc.dto.AcadamicDTO,com.dts.core.util.DateWrapper" %>

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
        
       
        <TABLE><TR><TD>
            <TABLE width=900 height="358" border=0 cellPadding=0 cellSpacing=0>
              <TBODY>
              <TR>
             
                <TD vAlign=top align=right colSpan=2><div align="left">
                    <span class="style1"><FONT size="2" color="red"> <script language="JavaScript" type="text/javascript">
      document.write(TODAY);	</script></FONT></span><BR>
                </div></TD>
                </TR>
             
         
             
            <TR>
                <TD height="381" colspan="5" align="right" vAlign=top><table width="888" height="448" border="0" align="right">
                <tr>
                  <td width="242">
				 <jsp:include page="scroll.html"/> 
				  </td>
                  <td width="412" valign="top">
                                <td width="412" valign="top"> <form action="AcadamicUpdateAction.jsp" method="post" name="acadamicupdate">
                  <input type="hidden" name="loginname" value="<%=(String)session.getAttribute("user")%>"/>
                    <table width="200" border="0" align="center">
                      <tr>
                        <td><div align="center" class="style25">
                            <% if(request.getParameter("status")!=null)
					  		{%>
                            <strong><%=request.getParameter("status")%></strong>
                            <%}%>
                        </div></td>
                      </tr>
                      <tr>
                        <td>
                         <%
                        String username=(String)session.getAttribute("user");
                        AcadamicDTO acdto = new AcadamicDAO().getAcademicDetails(username);
                        %>
                        
                        <table width="500" border="0" align="center" bordercolor="#CD817E" bgcolor="#FAF9DE" cellspacing="25px">
                            <tr>
                              <td width="1" height="57" valign="top"></td>
                              <td width="300"><div align="center" class="style24" style="font-size: 25px; font-weight: bold;">Acadamic Details </div></td>
                              <td width="10"></td>
                            </tr>
                            <tr>
                              <td align="right"></td>
                              <td><table width="480" border="0" align="center" cellspacing="15">
                                  <tr>
                                    <td width="190"><span class="style23" style="font-size: 20px; font-weight: bold;">Year of Passed out </span></td>
                                    <td width="214"><label>
                                      <select name="yearofpass" style="height:25px; font-size:12pt">
									  <%
									     String select="";
									     for(int year=1980;year<=2022;year++)
										 {
										   select="";
										   if(acdto.getYearofpass()==year)
										      select="selected";
									  %>
									      <option <%=select%>><%=year%></option>
										  <%}%>
                                      </select>
                                    </label></td>
                                  </tr>
                                  <tr>
                                    <td><span class="style23" style="font-size: 20px; font-weight: bold;">Year of Joining </span></td>
                                    <td><label>
                                      <select name="yearofjoin" style="height:25px; font-size:12pt">
									  <%
									     for(int year=1980;year<=2020;year++)
										 {
										   select="";
										   if(acdto.getYearofjoining()==year)
										      select="selected";
									  %>
									      <option <%=select%>><%=year%></option>
										  <%}%>
                                      </select>
                                    </label></td>
                                  </tr>
                                  <tr>
                                    <td><span class="style28" style="font-size: 20px; font-weight: bold;">Profession</span></td>
                                    <td>
                                      <select name="profession" style="height:25px; font-size:12pt">
                                      <OPTION><%=acdto.getProfession()%></OPTION>
									  <OPTION>Accounting/Finance</OPTION>
          							  <OPTION>Computer related (IS,MIS,DP)</OPTION>
         							  <OPTION>Computer related (www)</OPTION>
     							      <OPTION>Consulting</OPTION>
  							          <OPTION>Customer service/support</OPTION>
          							  <OPTION>Education/training</OPTION>
 							          <OPTION>Engineering</OPTION>
 							          <OPTION>Executive/senior management</OPTION>
  							          <OPTION>Administrative/supervisory</OPTION>
  							          <OPTION>Government/Military</OPTION>
						              <OPTION>Manufacturing  Production</OPTION>
							          <OPTION>Professional Services</OPTION>
							          <OPTION>Research and development</OPTION>
 							          <OPTION>Retired </OPTION>
 							          <OPTION>Sales/Marketing/Advertising</OPTION>
							          <OPTION>Self-employed/Owner</OPTION>
							          <OPTION>Student</OPTION>
  							          <OPTION>Unemployed/Between Jobs</OPTION>
  							          <option>Any Other</OPTION>
                                      </select>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td><span class="style28" style="font-size: 20px; font-weight: bold;">Roll No </span></td>
                                    <td>
                                      <input type="text" name="rollno" style="height:25px; font-size:12pt" style="height:25px; font-size:12pt" value="<%=acdto.getRollno()%>">
                                   </td>
                                  </tr>
                                  <tr>
                                    <td colspan="2"><div align="center"><br/>
                                      <input type="submit" name="Submit" value="Update" style="height:30px; width: 100px; font-size:18px;">
                                     &nbsp;&nbsp;&nbsp; <input name="Input2" type="reset" value="Clear" style="height:30px; width: 100px; font-size:18px;">
                                    </div></td>
                                  </tr>
                              </table></td>
                              <td>&nbsp;</td>
                            </tr>
                            <tr>
                              <td height="21">&nbsp;</td>
                              <td valign="baseline"><div align="center"><img src="images/regisbot.gif" alt="a" width="280" height="3"></div></td>
                              <td>&nbsp;</td>
                            </tr>
                        </table></td>
                      </tr>
                    </table>
                    <p>&nbsp;</p>
                  </form>			</td>
                </tr>
                  </table></TD>
            </TR></TBODY></TABLE></TD></TR>
        <TR vAlign=top>
          <TD height="2" colSpan=4>
</TABLE>
</BODY></HTML>
  
   

      

