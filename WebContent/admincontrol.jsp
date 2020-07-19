<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<title><%@include file="tabtitle.jsp"%></title>
<meta charset="utf-8">
<meta name="description" content="Your description">
<meta name="keywords" content="Your keywords">
<meta name="author" content="Your name">
<meta name="format-detection" content="telephone=no" />
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<!--CSS-->
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet" href="styles.css">
<link rel="stylesheet" href="css/camera.css">
<!--JS-->
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<script src="js/superfish.js"></script>
<script src="js/jquery.mobilemenu.js"></script>
<script src="js/jquery.cookie.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/jquery.ui.totop.js"></script>
<script src="js/jquery.equalheights.js"></script>
<script src="js/camera.js"></script>
<script src="js/jquery.touchSwipe.min.js"></script>
<script>
	$(document).ready(function() {
		jQuery('.camera_wrap').camera();
	});

	function reg() {
		var name = document.devreg.name.value;
		var pass = document.devreg.pass.value;
		var email = document.devreg.email.value;
		var bankname = document.devreg.bankname.value;
		var sex = document.devreg.sex.value;
		var age = document.devreg.age.value;
		var acno = document.devreg.acno.value;
		var location = document.devreg.location.value;
		var workdetails = document.devreg.workdetails.value;

		if (name == 0) {
			alert("please enter name");
			document.devreg.name.focus();
			return false;
		}
		if (email == 0) {
			alert("please enter email");
			document.devreg.email.focus();
			return false;
		}

		if (pass == 0) {
			alert("please enter password");
			document.devreg.pass.focus();
			return false;
		}
		if (sex == 0) {
			alert("please enter sex");
			document.devreg.sex.focus();
			return false;
		}
		if (acno == 0) {
			alert("please enter AC NO");
			document.devreg.acno.focus();
			return false;
		}

		if (location == 0) {
			alert("please enter location");
			document.devreg.location.focus();
			return false;
		}
		if (bankname == 0) {
			alert("please enter bankname");
			document.devreg.bankname.focus();
			return false;
		}
		if (workdetails = 0) {
			alert("please enter working details");
			document.devreg.workdetails.focus();
			return false;
		}
		if (age = 0) {
			alert("please enter age");
			document.devreg.age.focus();
			return false;
		}

	}
</script>
<script src="js/jquery.mobile.customized.min.js"></script>
</head>
<body>
	<div class="global">
		<!--header-->
		<header>
			<div>
				<div class="container">
					<div class="row">
						<article class="span12">
							<div class="navbar navbar_ clearfix">
								<div class="navbar-inner">
									<div class="clearfix">
										<div class="nav-collapse nav-collapse_">
											<ul class="nav sf-menu clearfix">
												<li><a href="index.jsp">Home</a></li>
												<!-- <li><a href="dlogin.jsp">Dev Login</a></li>
                                                    <li><a href="tpalogin.jsp">TL Login</a></li>
                                                    <li><a href="contact.html">Registration</a></li> -->
												<li class="active"><a href="agentRegForm.jsp">Agent
														Registration form</a></li>
												<li><a href="policyHolderRegForm.jsp">Policy Holder
														Registration form</a></li>
												<li><a href="adminForm.jsp">Admin Form</a></li>
												<li><a href="agentForm.jsp">Agent Form</a></li>
												<li><a href="PolicyHolderForm.jsp">Policy Holder
														Form</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>

						</article>

						<br> <br>
						<h1 style="margin-left: 10px" class="brand">
							<a href=""></a>
						</h1>
					</div>
				</div>
			</div>
		</header>
		<!--content-->
		<div class="container">
			<div class="row">

				<article class="span8 form-box" style="margin-left: 450px">
					<div>
						<br>
						<h5 style="margin-left: -70px; color: white">Admin Form</h5>
						<s:form action="select">
							<s:select list="{'agent','policy holder'}" name="usertype"
								lable="UserType"></s:select>
							<s:submit value="go"></s:submit>
						</s:form>
					</div>
				</article>
			</div>
		</div>

		<div hidden class="met">
			Web Development: <a class="cop" href="http://www.metamorphozis.com"></a>
		</div>
	</div>
	<footer>
		<div class="container">
			<div class="row">
				<article class="span12">
					<div class="row">
						<nav class="span6">
							<!--                                <ul>
                                    <li class="active"><a href="index.jsp">Home</a></li>
                                    <li><a href="abstract.jsp">Abstract</a></li>
                                    <li><a href="alogin.jsp">Manager</a></li>
                                    <li><a href="dlogin.jsp">Dev Login</a></li>
                                    <li><a href="tpalogin.jsp">TL Login</a></li>
                                    <li><a href="contact.html">Registration</a></li>
                                </ul>-->
						</nav>
						<div class="span3 offset3">
							<!--                                <p>Copyright @ Registered</p>-->
						</div>
					</div>
				</article>
			</div>
		</div>
	</footer>
</body>
</html>