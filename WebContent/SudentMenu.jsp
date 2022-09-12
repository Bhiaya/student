<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html>
	<head>
		<meta http-equiv="content-type" content="text/html;charset=utf-8" />
		<title>Style 12 (Teal) - Menu by Apycom.com</title>
		<link type="text/css" href="menu/menu.css" rel="stylesheet" />
		<script type="text/javascript" src="menu/jquery.js">
</script>
		<script type="text/javascript" src="menu/menu.js">
</script>
<%
if(session.getAttribute("role")==null || session.getAttribute("user")==null)
{
   RequestDispatcher rd = request.getRequestDispatcher("LoginForm.jsp?status=Session Expired");
   rd.forward(request,response);
}      
%>



	</head>
	<body style="background-image: url('./images/bcak01.jpg'); background-repeat: no-repeat; background-size: cover;opacity:0.8;">
	<br>

		<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

div#menu {
	margin-left: 10px;
	position: relative;
	top: 05px;
}

div#copyright {
	display: none;
}
</style>

		<div id="menu">
			<ul class="menu">
				<li>
					<a href="userhome.jsp" class="parent"><span>HOME</span> </a>
					

				</li>
				
				<li>
					<a href="#" class="parent"><span>MAILS</span> </a>
					<div>
						<ul>
							
							<li>
								<a href="ViewInbox.jsp"><span>VIEW MAILS</span> </a>
							</li>
							<li>
								<a href="ViewOutbox.jsp"><span>SEND MAILS</span> </a>
							</li>
						</ul>
					</div>
				</li>
				<li>
					<a href="#" class="parent"><span>VIEW FRIEND</span> </a>
					<div>
						<ul>
							<li>
								<a href="ViewFriendsDetails.jsp"><span>VIEW FRIEND</span> </a>
							</li>
							
						</ul>
					</div>
				</li>
				<li>
					<a href="#" class="parent"><span>SEARCH FRIEND</span> </a>
					<div>
						<ul>
							<li>
								<a href="search.jsp"><span>SEARCH FRIEND</span> </a>
							</li>
						</ul>
					</div>
				</li>
				
				<li>
					<a href="#" class="parent"><span>EVENTS</span> </a>
					<div>
						<ul>

							<li>
								<a href="ViewUserEventsDetails.jsp"><span>VIEW EVENTS</span> </a>
							</li>


						</ul>
					</div>
				</li>
				<li>
					<a href="#" class="parent"><span>OPPORTUNITIES</span> </a>
					<div>
						<ul>


							<li>
								<a href="ViewUserVacanciesDetails.jsp"><span>VIEW OPPORTUNITIES</span> </a>
							</li>
						</ul>
					</div>
				</li>
				
				<li>
					<a href="#" class="parent"><span>PROFILE</span> </a>
					<div>
						<ul>
							<li>
								<a href="viewpersonalinfo.jsp"><span>PERSONAL INFO</span> </a>
							</li>
							
						</ul>
					</div>
				</li>
				<li>
					<a href="#" class="parent"><span>ACADEMIC</span> </a>
					<div>
						<ul>
							
							<li>
								<a href="viewacadamicdetails.jsp"><span>ACADEMIC INFO</span> </a>
							</li>
						</ul>
					</div>
				</li>
				<li>
					<a href="#" class="parent"><span>SECURITY</span> </a>
					<div>
						<ul>
							<li>
								<a href="Changepassword.jsp?role=admin"><span>CHANGE PASSWORD</span> </a>
							</li>
							<li>
								<a href="Changequestion.jsp?role=admin"><span>CHANGE QUESTION</span> </a>
							</li>
						</ul>
					</div>
				</li>
				
				
				
				
				
				
				
				
<li>
					<a href="#"><span></span> </a>
				</li><li>
					<a href="#"><span></span> </a>
				</li>
				<li>
					<a href="#"><span></span> </a>
				</li>
				<li>
					<a href="#"><span></span> </a>
				</li><li>
					<a href="#"><span></span> </a>
				</li>
				
				<li>
					<a href="#"><span></span> </a>
				</li>
				<li>
					<a href="#"><span></span> </a>
				</li>
				<li>
					<a href="#"><span></span> </a>
				</li>
				<li>
					<a href="#"><span></span> </a>
				</li>
				<li class="last">
					<a href="LogoutAction.jsp"><span>LOGOUT</span> </a>
				</li>
				<li>
					<a href="#"><span></span> </a>
				</li>

				
				

			</ul>
		</div>
		<div id="copyright">
			<a href="http://apycom.com/"></a>
		</div>
	</body>
</html>