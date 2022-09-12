
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<%
	String st = "";
	if (request.getParameter("userid") != null) {
%>
<%
	st = request.getParameter("userid");
%>
<%
	}
%>
<html>
<head>

<style>
	
	input:invalid:required{
		background-image: linear-gradient(to right, red, lightgreen);
	}
	
	
</style>

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
	
 </head>
  
  <body bgcolor="#F5FFFA">
	

 <jsp:include page="Header.jsp"></jsp:include>
<br/>
         
      
										<table width="900" height="555" border="0" align="center">
											<tr>
												<td width="442" align="center"><jsp:include page="scroll.html" /></td>
												
												<td width="562" align="center">
													<form action="RegisterAction.jsp" method="post"
														name="register">
														<table width="200" border="0" height="10">
															<tr>
																<td height="10">
																	<div align="center" class="style25">

																		<%
																			if (request.getParameter("status") != null) {
																		%>
																		<span style="font-size: 28px; font-weight: bold; color:yellow"><%=request.getParameter("status")%></span>
																		<%
																			}
																		%>
																	</div>
																</td>
															</tr>
															<tr>
																<td align="center">
																	<table width="700px" border="0" align="center" bordercolor="" bgcolor="black" cellspacing="10px">
																		<tr>
																			<td width="7" height="57" valign="top">
																				&nbsp;
																			</td>
																			<td width="471">
																				<div align="center">
													<span class="style11" style="color:white; font-size:28px; font-weight: bold;">R E G I S T R A T I O N</span>
																				</div>
																			</td>
																			<td width="10">
																				&nbsp;
																			</td>
																		</tr>
																		<tr>
																			<td align="right">
																				&nbsp;
																			</td>
																			<td>
																				<table width="607" border="0" align="center"  height="504" border="0" align="center" cellspacing="10px">
																					<tr>
																						<td width="128">
																							<span class="style17" style="color:#CD5C5C;font-size:25px;font-weight: bold">First Name </span>
																						</td>
																						<td width="269">
																							<label>
																								<input type="text" name="fname" id="fname" style="height:25px; font-size:15pt" required>
																							</label>
																						</td>
																					</tr>
																					<tr>
																						<td>
																							<span class="style17" style="color:#CD5C5C;font-size:25px;font-weight: bold">Last Name </span>
																						</td>
																						<td>
																							<label>
																								<input type="text" name="lname" style="height:25px; font-size:15pt" required>
																							</label>
																						</td>
																					</tr>
																					<tr>
																						<td>
																							<span class="style17" style="color:#CD5C5C;font-size:25px;font-weight: bold">Birth Date </span>
																						</td>
																						<td>
																							<label>
																								<input type="text" name="bdate" style="height:25px; font-size:15pt" readonly>
																							<a href="javascript:show_calendar('document.register.bdate', document.register.bdate.value);">
																							<img src="images/cal.gif" width="18" height="18" border="0" /> </a>
																							</label>
																						</td>
																					</tr>
																					<tr>
																						<td>
																							<span class="style17" style="color:#CD5C5C;font-size:25px;font-weight: bold">City</span>
																						</td>
																						<td>
																							<label>
																								<select name="city" style="height:25px; font-size:13pt" required>
																									<option>--city--</option>
																									<option>
																										Ayodhya
																									</option>
																									<option>
																										Lucknow
																									</option>
																									<option>
																										Vranasi
																									</option>
																								</select>
																							</label>
																						</td>
																					</tr>
																					<tr>
																						<td>
																							<span class="style17" style="color:#CD5C5C;font-size:25px;font-weight: bold">State</span>
																						</td>
																						<td>
																							<label>
																								<select name="state" style="height:25px; font-size:13pt" required>
																									<option>--state--</option>
																									<option>
																										Uttar pradesh
																									</option>
																									<option>
																										Madhya pradesh
																									</option>
																									<option>
																										Chandighar
																									</option>
																								</select>
																							</label>
																						</td>
																					</tr>
																					<tr>
																						<td>
																							<span class="style17" style="color:#CD5C5C;font-size:25px;font-weight: bold">Country</span>
																						</td>
																						<td>
																							<label>
																								<select name="country" style="height:25px; font-size:13pt" required>
																									<option>--country--</option>
																									<option>
																										India
																									</option>
																								</select>
																							</label>
																						</td>
																					</tr>
																					<tr>
																						<td>
																							<span class="style17" style="color:#CD5C5C;font-size:25px;font-weight: bold">Login Name </span>
																						</td>
																						<td>
																							<label>
																								<input type="text" name="loginname" style="height:25px; font-size:15pt" required>
																							</label>
																						</td>
																					</tr>
																					<tr>
																						<td>
																							<span class="style17" style="color:#CD5C5C;font-size:25px;font-weight: bold">Password</span>
																						</td>
																						<td>
																							<label>
																								<input name="password" type="password" id="password" style="height:25px; font-size:15pt" required>
																							</label>
																						</td>
																					</tr>
																					<tr>
																						<td>
																							<span class="style17" style="color:#CD5C5C;font-size:25px;font-weight: bold"> <label>
																									Secret Question
																								</label> </span>
																						</td>
																						<td>
																							<select name="squest" style="height:25px; font-size:12pt" required>
																								<option value="">--choose question--</option>
																								<option value="1">
																									What is your favorite pastime?
																								</option>
																								<option value="2">
																									Who was your childhood hero?
																								</option>
																								<option value="3">
																									What was the name of your first school?
																								</option>
																								<option value="4">
																									Where did you meet your spouse?
																								</option>
																								<option value="5">
																									What is your favorite sports team?
																								</option>
																								<option value="6">
																									What is your father's middle name?
																								</option>
																								<option value="7">
																									What was your high school mascot?
																								</option>
																								<option value="8">
																									What make was your first car or bike?
																								</option>
																								<option value="9">
																									What is your pet's name?
																								</option>
																										<option value="9">
																									Hai how are u?
																								</option>
																							</select>
																						</td>
																					</tr>
																					<tr>
																						<td colspan="2">
																							<span class="style17"> </span><span
																								class="style18"> <label>
																									<input type="checkbox" name="ch" value="1"
																										onchange="check()">
																									<span class="style20" style="color:#CD5C5C;font-size:25px;font-weight: bold">Own Question</span>
																								</label> </span><span class="style17"> </span>
																						</td>
																					</tr>
																					<tr>
																						<td>
																							<span class="style17" style="color:#CD5C5C;font-size:25px;font-weight: bold">Own Question </span>
																						</td>
																						<td>
																							<label>
																								<input type="text" name="ownquest" id="ownquest" style="height:25px; font-size:15pt" required disabled>
																							</label>
																						</td>
																					</tr>
																					<tr>
																						<td>
																							<span class="style17" style="color:#CD5C5C;font-size:25px;font-weight: bold">Secret Answer </span>
																						</td>
																						<td>
																							<input name="sanswer" type="text" style="height:25px; font-size:15pt" required>
																						</td>
																					</tr>
																					<tr>
																						<td colspan="2">
																							<div align="center">
																								<input type="submit" name="Submit" value="Register" style="height:35px; width: 120px; font-size:23px;">
																							</div>
																						</td>
																					</tr>
																				</table>
																			</td>
																			<td >
																				&nbsp;
																			</td>
																		</tr>
																		<tr>
																			<td>
																				&nbsp;
																			</td>
																			<td valign="baseline" align="center">
																				<img src="images/regisbot.gif" alt="a" width="465"
																					height="4">
																			</td>
																			<td>
																				&nbsp;
																			</td>
																		</tr>
																	</table>
																</td>
															</tr>
														</table>
													</form>
												</td>
											</tr>
										</table>
										<h1 align="center">
											&nbsp;
										</h1>
									</TD>
								</TR>
							</TBODY>
						</TABLE>
					</TD>
				</TR>
				<TR vAlign=top>
					<TD height="2" colSpan=4>
		</TABLE>
	</BODY>
</html>