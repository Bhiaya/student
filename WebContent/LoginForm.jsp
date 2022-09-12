
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

input:invalid:required{
	background-image: linear-gradient(to right, red, lightgreen);
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
  <br/>     
       
       <form action="LoginAction.jsp" method="post" name="login">
        
        <table  border="0" align="center"   width="100%">
               <tr>
              
             
                
                
               <td height="237" width="330"> 
                 </td>
                 <td height="120" align="right"></td>
                 <td><table border="0" align="center" width="240" height="200" bgcolor="#000000" cellspacing="45px" >
                <tr align="center"><strong><font color="black" size="30px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>Login Form</b></font></strong><br/>
 	</tr>
                   <tr>
                     <td ><font color="#CD5C5C" size="20px"><b>UserID</b></font></td>
                      <td ><input type="text" name="username" style="height:30px; font-size:20pt" required> </td>
                      </tr>
                   <tr>
                     <td><font color="#CD5C5C" size="20px"><b>Password</b></font></td>
                      <td>
                        <input type="password" name="password" style="height:30px; font-size:20pt" required><br><br>                      </td>
                      </tr>
                    <tr>
                     <td colspan="2">
                       <div align="center" class="style11">
                         <input type="submit" value="SUBMIT"  style="height:45px; width: 120px; font-size:25px; font-weight: bold">
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <input type="reset" value="RESET" style="height: 45px; width: 120px; font-size:25px; font-weight: bold">
                         </div> 
                         </tr>   
                                           <tr><br/>
                                                               
                         <td><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                         <a href="RegisterForm.jsp"><font color="#228B22" size="5.5px" style="verdana"><b>NewUserSignUp??</b></font></a>
                         
                         </div></td>
                         
                      </tr>
                      
               
                      
                 </table>
                 
              
               
               
               
             </table>
		
		
          </form>
        
          <script language="JavaScript" type="text/javascript">
//You should create the validator only after the definition of the HTML form
  var frmvalidator  = new Validator("login");

  frmvalidator.addValidation("username","req","Login Name is required");
  frmvalidator.addValidation("password","req","Password is required");
   
  </script>
          <br/>
                 
     <br/>
    <jsp:include page="./Footer.jsp"></jsp:include>
	</body>
</html>