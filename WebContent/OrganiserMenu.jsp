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
	</head>
	<body style="background-image: url('./images/bcak01.jpg'); background-repeat: no-repeat; background-size: cover;opacity:0.8;"><br/>

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
					<a href="managerhome.jsp" class="parent"><span>HOME</span> </a>

				</li>
				<li>
					<a href="#" class="parent"><span>EVENTS</span> </a>
					<div>
						<ul>
							<li>
								<a href="Newevent.jsp"><span>ADD EVENT</span> </a>
							</li>


							<li>
								<a href="ViewEventsDetails.jsp"><span>VIEW EVENT</span> </a>
							</li>
							
							<li>
								<a href="UpdateEventsDetails.jsp"><span>UPDATE EVNET</span> </a>
							</li>
							
							
							


						</ul>
					</div>
				</li>
				
				<li>
					<a href="#" class="parent"><span>OPPORTUNITIES</span> </a>
					<div>
						<ul>
							<li>
								<a href="Newjob.jsp"><span>ADD VACANCY INFO</span> </a>
							</li>


							<li>
								<a href="ViewVacanciesDetails.jsp"><span>VIEW VACANCY</span> </a>
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

				<li>
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
				<li>
					<a href="#"><span></span> </a>
				</li>
				
				
				<li class="last">
					<a href="LogoutAction.jsp"><span>LOGOUT</span> </a>
				</li>
				

			</ul>
		</div>
		<div id="copyright">
			<a href="http://apycom.com/"></a>
		</div>
	</body>
</html>