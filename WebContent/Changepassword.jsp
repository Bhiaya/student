<!DOCTYPE HTML>
<%@ page import="java.util.*,com.bbau.aoc.dao.EventsDAO,com.bbau.aoc.dto.EventsDTO,com.dts.core.util.DateWrapper" %>
<%@ page import="java.util.*,com.bbau.aoc.dao.VacancyDAO,com.bbau.aoc.dto.VacancyDTO,com.dts.core.util.DateWrapper" %>
<%@ page import="java.util.*,com.bbau.aoc.dao.MessageDAO,com.bbau.aoc.dto.MessageDTO,com.dts.core.util.DateWrapper" %>
<%@ page import="java.util.*,com.bbau.aoc.dao.FriendDAO,com.bbau.aoc.dto.FriendDTO,com.dts.core.util.DateWrapper" %>


<HTML>
<HEAD>


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
           
                     <td width="412"> <form action="ChangepasswordAction.jsp" method="post" name="changepassword">
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
                        <td><table width="296" border="0" align="center" bordercolor="#CD817E" bgcolor="#FAF9DE" cellspacing="20px">
                          <tr>
                            <td width="1" height="57" valign="top"></td>
                            <td width="300"><div align="center" class="style24" style="font-size: 25px; font-weight: bold;">Change Password </div></td>
                            <td width="10"></td>
                          </tr>
                          <tr>
                            <td align="right"></td>
                            <td><table width="400" border="0" align="center" cellspacing="20px">
                              <tr>
                                <td  class="style23" style="font-size: 20px; font-weight: bold;">User Name</td>
                                <td ><label>
                                  <input type="text" name="username" emsg="Username is required" style="height:25px; font-size:12pt">
                                </label></td>
                              </tr>
                              <tr>
                                <td class="style23" style="font-size: 20px; font-weight: bold;">Old Password</td>
                                <td><label>
                                  <input type="password" name="oldpassword" emsg="Password is required" style="height:25px; font-size:12pt">
                                </label></td>
                              </tr>
                              <tr>
                                <td class="style23" style="font-size: 20px; font-weight: bold;">New Password </td>
                                <td><label>
                                  <input type="password" name="newpassword" emsg="Password is required" style="height:25px; font-size:12pt">
                                </label></td>
                              </tr>
                              <tr>
                                <td colspan="2"><label>
                                    <div align="center">
                                      <input type="submit" name="Submit" value="Change" style="height:40px; width: 120px; font-size:20px;">
                                      &nbsp;
                                      <input type="reset" name="Submit2" value="Reset" style="height:40px; width: 120px; font-size:20px; ">
                                    </div>
                                  </label></td>
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
                    </form>			</td>
                </tr>
                  </table>			      </TD>
              </TR></TBODY></TABLE></TD></TR>
        <TR vAlign=top>
          <TD height="2" colSpan=4>
</TABLE>
</BODY></HTML>
  
   

      

