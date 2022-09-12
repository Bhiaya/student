<!DOCTYPE HTML>
<%@ page import="com.bbau.aoc.dao.VacancyDAO,com.bbau.aoc.dto.VacancyDTO,com.dts.core.util.DateWrapper" %>
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
<script type="text/javascript">
	 
	 function CheckAvailable()
	 {
	   
	    var userid=document.getElementById("userid").value;
	    var user="";
	    if(userid==user)
	    {
	        alert("user id is required");
	        return false;
	    }
	    window.location.href="<%=request.getContextPath()%>/ChekUserAction?userid="+userid+"&path=./RegistrationForm.jsp";
	 }
	 
	 function  checkPass()
	 {	 
	   var pwd1=document.getElementById("userpwd").value;
	   var pwd2=document.getElementById("repwd").value;
	   if(pwd1!=pwd2){
	     alert("password not mathed");
	     return false;
	   }
	 }
	 
   
   </script>
   <script language="javascript">
function showAmount()
{

 var selectWidget = document.getElementById("acctype").value ;
 alert(selectWidget);
 if(selectWidget=="")
 {

alert("Plz select U R account type");
return false;
 
}
else if(selectWidget=="Current")
{
document.getElementById("accbal").value='1000';
 
 
}
else if(selectWidget=="JointAccount")
{
document.getElementById("accbal").value='5000';
  
}else if(selectWidget=="SavingAccount")
{
document.getElementById("accbal").value='500';
  
}
}
</script>
<script language="JavaScript" type="text/javascript"
		src="<%=request.getContextPath()+"/scripts/ts_picker.js"%>"></script>
		
		<script language="JavaScript" src="<%=request.getContextPath()+"/scripts/gen_validatorv31.js"%>" type="text/javascript"></script>

<script type = "text/javascript" >
function disableBackButton()
{
window.history.forward();
}
setTimeout("disableBackButton()", 0);
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
           <TD height="381" colspan="5" vAlign=top><table width="902" height="341" border="0" align="right">
                <tr>
                  <td width="242">
				 <jsp:include page="scroll.html"/> 
				 </td>
                   <td width="412" valign="top">
                    <table width="200" border="0" align="center">
                      <tr>
                        <td><div align="center" class="style25">
					  
					  <% if(request.getParameter("status")!=null)
					  {%>
					  <span class="style3"><%=request.getParameter("status")%></span>
					  <%}%>
					  </div></td>
                      </tr>
                      <tr>
                        <td></td>
                      </tr>
                   
			        <TR>
                <TD height="381" colspan="5" align="right" vAlign=top><table width="761" height="334" border="0" align="right">
                <tr>
                 
                   <td width="412"> <form action="UpdateVacancyAction.jsp" method="post" name="vacancyregister">
                    
                    <table width="421" border="0" align="center">
                      <tr>
                        <td width="415"><div align="center" class="style25">
					  
					  <% if(request.getParameter("status")!=null)
					  {%>
					  <%=request.getParameter("status")%>
					  <%}%>
					  </div></td>
                      </tr>
                      <tr>
                        <td>
                        <%
                            String vacancyid = request.getParameter("vacancyid");
                            VacancyDTO vacancydto = new VacancyDAO().getVacancyDetails(Integer.parseInt(vacancyid));
                        
                         %>
                         <input type="hidden" name="vacancyid" value="<%=vacancydto.getVacancyid()%>"/>    
                        <table width="379" border="0" align="center" bordercolor="" bgcolor="#FAF9DE" cellspacing="25px">
                          <tr>
                            <td width="1" height="57" valign="top"></td>
                            <td width="357"><div align="center" class="style24" style="font-size: 28px; font-weight: bold;">Opportunity  Details</div></td>
                            <td width="10"></td>
                          </tr>
                          <tr>
                            <td align="right"></td>
                            <td><table width="394" height="504" border="0" align="center" cellspacing="15px">
                                <tr>
                                  <td width="114" height="27"><span class="style23" style="font-size: 20px; font-weight: bold;">Company Name</span></td>
                                  <td width="270"><input type="text" name="compname" style="font-size:13pt; height: 25px" value="<%=vacancydto.getCompanyname()%>">                                  </td>
                                </tr>
                                <tr>
                                  <td height="27"><span class="style23" style="font-size: 20px; font-weight: bold;">Profile</span></td>
                                  <td><label>
                                    <input type="text" name="profile" style="font-size:13pt; height: 25px" value="<%=vacancydto.getCompanyprofile()%>">
                                  </label></td>
                                </tr>
                                <tr>
                                  <td height="27"><span class="style23" style="font-size: 20px; font-weight: bold;">Vacancy Position</span></td>
                                  <td><label>
                                    <input type="text" name="vacposition" style="font-size:13pt; height: 25px" value="<%=vacancydto.getVacancyposition()%>">
                                  </label></td>
                                </tr>
                                <tr>
                                  <td height="69"><span class="style23" style="font-size: 20px; font-weight: bold;">Description</span></td>
                                  <td><label>
                                    <textarea name="jobdesc" style="font-size:13pt;" rows="4"><%=vacancydto.getJobdesc()%></textarea>
                                  </label></td>
                                </tr>
                                <tr>
                                  <td height="24"><span class="style23" style="font-size: 20px; font-weight: bold;">Category</span></td>
                                  <td><label>
                                    <select name="category" style="font-size:13pt; height: 25px">
                                    
									<option value="select"><%=vacancydto.getCategory()%></option>
									<optgroup label="Top Categories"></optgroup>
									<option>Accounts, Finance, Tax, CS, Audit</option>
									<option>Banking, Insurance</option>
									<option>Engineering Design, R&D</option>
									<option>HR / Administration, IR</option>
									<option>ITES/BPO/KPO, Customer Service, Ops.</option>
									<option>Marketing, Advertising, MR, PR</option>
									<option>Production, Maintenance, Quality</option>
									<option>Sales, BD</option>
									<option>Site Engg., Project Management</option>
									<option>Telecom</option>
									<optgroup label="IT Software Categories"></optgroup>
									<option>Application Programming, Maintenance</option>
									<option>Client Server</option>
									<option>DBA, Datawarehousing</option>
									<option>E-Commerce, Internet Technologies</option>
									<option>Embedded/EDA/VLSI/ASIC/Chip Design</option>
									<option>ERP, CRM</option>
									<option>Mainframe</option>
									<option>Middleware</option>
									<option>Mobile</option>
									<option>Network Administration, Security</option>
									<option>QA & Testing</option>
									<option>System Programming</option>
									<option>Systems, EDP, MIS</option>
									<option>Other</option>
									<option>Architecture, Interior Design</option>
									<option>Content, Journalism</option>
									<optgroup label="More Categories"></optgroup>
									<option>Corporate Planning, Consulting</option>
									<option>Export, Import, Merchandising</option>
									<option>Fashion, Garments, Merchandising</option>
									<option>Freshers, Trainee Jobs</option>
									<option>Guards, Security Services</option>
									<option>Healthcare, Medical, R&D</option>
									<option>Hotels, Restaurants</option>
									<option>IT-Support, Telecom, Hardware </option>
									<option>Legal</option>
									<option>NGO, Government, Defence Jobs</option>
									<option>Overseas, International Jobs</option>
									<option>Packaging</option>
									<option>Pharma, Biotech</option>
									<option>Purchase, Logistics, Supply Chain</option>
									<option>Retailing</option>
									<option>Secretary, Front Off, Data Entry</option>
									<option>Self Employed, Consultants</option>
									<option>Teaching, Education</option>
									<option>Telecom Software</option>
									<option>Top Management- IT Jobs</option>
									<option>Top Management- Non IT Jobs</option>
									<option>Travel, Ticketing, Airlines</option>
									<option>TV, Films, Production</option>
									<option>Web, Graphic Design, Visualiser</option>
									</select>
                                  </label></td>
                                </tr>
                                <tr>
                                  <td height="27"><span class="style23" style="font-size: 20px; font-weight: bold;">Location</span></td>
                                  <td><label>
                                    <input type="text" name="location" style="font-size:13pt; height: 25px" value="<%=vacancydto.getLocation()%>">
                                  </label></td>
                                </tr>
                                <tr>
                                  <td height="27"><span class="style23" style="font-size: 20px; font-weight: bold;">Desired Profile</span></td>
                                  <td><label>
                                    <input type="text" name="desiredprofile" style="font-size:13pt; height: 25px" value="<%=vacancydto.getDesiredprofile()%>">
                                  </label></td>
                                </tr>
                                <tr>
                                  <td height="27"><span class="style23" style="font-size: 20px; font-weight: bold;">Experience</span></td>
                                  <td><label>
                                    <input type="text" name="exp" style="font-size:13pt; height: 25px" value="<%=vacancydto.getDesiredexp()%>">
                                  </label></td>
                                </tr>
                                <tr>
                                  <td height="27"><span class="style23" style="font-size: 20px; font-weight: bold;">Created Date</span></td>
                                  <td><label>
                                    <input type="text" name="cdate" style="font-size:13pt; height: 25px" readonly value="<%=DateWrapper.parseDate(vacancydto.getCreateddate1())%>"><a href="javascript:show_calendar('document.vacancyregister.cdate', document.vacancyregister.cdate.value);">
<img src="images/cal.gif" width="18" height="18" border="0"/></a>
                                  </label></td>
                                </tr>
                                <tr>
                                  <td height="27"><span class="style23" style="font-size: 20px; font-weight: bold;">Expiry Date</span></td>
                                  <td><label>
                                    <input type="text" name="expdate" style="font-size:13pt; height: 25px" readonly value="<%=DateWrapper.parseDate(vacancydto.getExpirydate1())%>"><a href="javascript:show_calendar('document.vacancyregister.expdate', document.vacancyregister.expdate.value);">
<img src="images/cal.gif" width="18" height="18" border="0"/></a>
                                  </label></td>
                                </tr>
                                <tr>
                                  <td height="27"><span class="style23" style="font-size: 20px; font-weight: bold;">Contact Person</span></td>
                                  <td><label>
                                    <input type="text" name="contperson" style="font-size:13pt; height: 25px" value="<%=vacancydto.getContactperson()%>">
                                  </label></td>
                                </tr>
                                <tr>
                                  <td height="27"><span class="style23" style="font-size: 20px; font-weight: bold;">Designation</span></td>
                                  <td><label>
                                    <input type="text" name="desig" style="font-size:13pt; height: 25px" value="<%=vacancydto.getDesignation()%>">
                                  </label></td>
                                </tr>
                                <tr>
                                  <td height="27"><span class="style23" style="font-size: 20px; font-weight: bold;">Phone</span></td>
                                  <td><label>
                                    <input type="text" name="phone" style="font-size:13pt; height: 25px" value="<%=vacancydto.getPhoneno()%>">
                                  </label></td>
                                </tr>
                                 <tr>
                                  <td height="27"><span class="style23" style="font-size: 20px; font-weight: bold;">Email</span></td>
                                  <td><label>
                                    <input type="text" name="email" style="font-size:13pt; height: 25px" value="<%=vacancydto.getEmail()%>">
                                  </label></td>
                                </tr>
                                <tr></tr>
                                <tr>
                                  <td colspan="2"><label>
                                      <div align="center">
                                        <input type="submit" name="Submit" value="Update" style="height:30px; width: 80px; font-size:18px;">
                                        &nbsp;
                                        <input name="Input2" type="reset" value="Clear" style="height:30px; width: 80px; font-size:18px;">
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
  
   

      

