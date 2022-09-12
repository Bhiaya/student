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
	</head>
	<body style="background-image: url('./images/bcak01.jpg'); background-repeat: no-repeat; background-size: cover;opacity:0.8;">
	

 <jsp:include page="Header.jsp"></jsp:include>
<br/>         
        
       
        
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
                    </table>
					
                  	<p align="center" class="style4" style="font-size:30px; font-weight: bold">Batchmates </p><br/>
                  	<form action="">
                  	<table width="559" border="0" align="center" bordercolor="#655FE2" bgcolor="#D1C33C">
                      <tr>
                        <td width="216" bgcolor="skyblue"><div align="center" class="style15" style="font-size:20px; font-weight: bold"> Name </div></td>
                        <td width="134" bgcolor="skyblue"><div align="center" class="style15" style="font-size:20px; font-weight: bold">Birth Date</div></td>
                        <td width="135" bgcolor="skyblue"><div align="center" class="style15" style="font-size:20px; font-weight: bold">Profession</div></td>
                        <td width="135" bgcolor="skyblue"><div align="center" class="style15"></div></td>
                      </tr>
                      <%
                         String loginname = (String)session.getAttribute("user");
                      	 ArrayList al = new FriendDAO().getBatchmates(loginname);
                      	 FriendDTO frienddto = null;
                      	 Iterator iterate = al.iterator();
                      	 String name="";
                      	 while(iterate.hasNext())
                      	 {
                      	      frienddto = (FriendDTO)iterate.next();
                      	      name = frienddto.getLoginame(); 
                       %>
                      <tr>
                        <td bgcolor="#FFD7AE" style="font-size:18px; font-weight: bold"><p class="style12" onClick="javascript:path='viewuserfrienddetails.jsp?loginname=<%=name%>' 
hwnd = window.open(path,'profile','width=600,height=400,scrollbars=yes,resizable=no,toolbar=no,location=no,status=no,menubar=no' );"><%=frienddto.getFirstname()%>&nbsp;<%=frienddto.getLastname()%> </p></td>
                        <td bgcolor="#FFD7AE" style="font-size:18px; font-weight: bold"><span class="style12"><%=DateWrapper.parseDate(frienddto.getBirdthdate1())%></span></td>
                        <td bgcolor="#FFD7AE" style="font-size:18px; font-weight: bold"><span class="style12"><%=frienddto.getProfession()%></span></td>
                        <td bgcolor="#FFD7AE" style="font-size:18px; font-weight: bold"><span class="style12"><a href="Compose.jsp?loginname=<%=name%>">Send message</a></span></td>
                      </tr>
                      <%} %>
                    </table>
                    </form>
                  	<div align="center"></div></td>
                </tr>
                  </table></TD>
            </TR></TBODY></TABLE></TD></TR>
        <TR vAlign=top>
          <TD height="2" colSpan=4>
          </TABLE>
 </BODY></HTML>
  
   

      

