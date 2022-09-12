<!DOCTYPE HTML>
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

<script language="JavaScript" type="text/javascript">

	function check(){
		var x=document.getElementById("ownquest").disabled;
		if(x==true){
		document.getElementById("ownquest").disabled=false;
		}
		if(x==false){
			document.getElementById("ownquest").disabled=true;
			}
	}

</script>
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
                                     <td width="412"> <form action="ChangequestionAction.jsp" method="post" name="changequestion">
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
                        <td><table width="296" border="0" align="center" bordercolor="#CD817E" bgcolor="#FAF9DE" cellspacing="20">
                          <tr>
                            <td width="1" height="57" valign="top"></td>
                            <td width="300"><div align="center" class="style24" style="font-size: 25px; font-weight: bold;">Change &nbsp;Question </div></td>
                            <td width="10"></td>
                          </tr>
                          <tr>
                            <td align="right"></td>
                            <td><table width="500" border="0" align="center" cellspacing="10">
                              <tr>
                                <td width="101" class="style23" style="font-size: 20px; font-weight: bold;">Login Name </td>
                                <td width="269"><label>
                                  <input type="text" name="username" style="height:25px; font-size:12pt">
                                </label></td>
                              </tr>
                              <tr>
                                <td class="style23" style="font-size: 20px; font-weight: bold;">Password </td>
                                <td><label>
                                  <input type="password" name="password" style="height:25px; font-size:12pt">
                                </label></td>
                              </tr>
                              <tr>
                                <td class="style23" ><label style="font-size: 20px; font-weight: bold;">Secret Question</label></td>
                                <td><select name="squest" style="height:25px; font-size:12pt">
                                	<option value="">-Select-</option>
                                    <option value="1">What is your favorite pastime?</option>
                                    <option value="2">Who was your childhood hero?</option>
                                    <option value="3">What was the name of your first school?</option>
                                    <option value="4">Where did you meet your spouse?</option>
                                    <option value="5">What is your favorite sports team?</option>
                                    <option value="6">What is your father's middle name?</option>
                                    <option value="7">What was your high school mascot?</option>
                                    <option value="8">What make was your first car or bike?</option>
                                    <option value="9">What is your pet's name?</option>
                                </select></td>
                              </tr>
                              <tr class="style23">
                                <td colspan="2"><label style="font-size: 20px; font-weight: bold;">
                                  <input type="checkbox" name="ch" value="1" onchange="check()" style="height:25px; font-size:12pt">
                                  Own Question </label></td>
                              </tr>
                              <tr>
                                <td class="style23" style="font-size: 20px; font-weight: bold;">Own Question </td>
                                <script>
        
                            </script>
                                <td><label>
                                  <input type="text" name="ownquest" id="ownquest" style="height:25px; font-size:12pt"  disabled>
                                </label></td>
                              </tr>
                              <tr>
                                <td height="38" class="style23" style="font-size: 20px; font-weight: bold;">Secret Answer </td>
                                <td><input name="sanswer" type="text" style="height:25px; font-size:12pt"></td>
                              </tr>
                              <tr>
                                <td colspan="2"><div align="center">
                                  <input name="Input" type="submit" value="Change" style="height:40px; width: 100px; font-size:20px;">
                                </div>
                                    <div align="center"></div></td>
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
  
   

      

