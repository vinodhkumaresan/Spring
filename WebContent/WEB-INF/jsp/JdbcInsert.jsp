<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html dir="ltr" lang="en" xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta charset=utf-8 />
		<title>Learn Java | JBT</title>
		<link rel=stylesheet href=css/style.css type=text/css>
		<link rel="stylesheet" type="text/css" href="css/menu.css">
		
		<!-- This style is for menu  Start -->
		
		<style>
	
	* { margin: 0; padding: 0; }
	body { background: url(img/bg.gif); }
	#content { padding: 40px 20px; font-family: "Helvetica Neue", Helvetica, Arial; font-size: 12px; line-height: 18px; color: #cfdae3; margin: 0 auto; width : 400px;}
	a { text-decoration: none; }
	h2, h3 { margin: 0 0 20px; color: #fff; }
	h2 { font-size: 28px; }
	h3 { font-size: 22px; }
	pre { background: #fff; width: 460px; padding: 10px 20px; border-left: 5px solid #ccc; margin: 0 0 20px; }
	p { width: 500px; font-size: 18px; line-height: 24px; margin: 0 0 30px; }
	input { margin: 0; padding: 0; }
	
	/* Dark Button CSS */
	.button {
		outline: 0;
		padding: 5px 12px;
		display: block;
		color: #9fa8b0;
		font-weight: bold;
		text-shadow: 1px 1px #1f272b;
		border: 1px solid #1c252b;
		border-radius: 3px;
		-moz-border-radius: 3px;
		-webkit-border-radius: 3px;
		background: #232B30; /* old browsers */
		background: -moz-linear-gradient(top, #3D4850 3%, #313d45 4%, #232B30 100%); /* firefox */
		background: -webkit-gradient(linear, left top, left bottom, color-stop(3%,#3D4850), color-stop(4%,#313d45), color-stop(100%,#232B30)); /* webkit */
		filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#3D4850', endColorstr='#232B30',GradientType=0 ); /* ie */
		box-shadow: 1px 1px 1px rgba(0,0,0,0.2); /* CSS3 */
		-moz-box-shadow: 1px 1px 1px rgba(0,0,0,0.2); /* Firefox */
		-webkit-box-shadow: 1px 1px 1px rgba(0,0,0,0.2); /* Safari, Chrome */
	}
	.button:hover {
		color: #fff;
		background: #4C5A64; /* old browsers */
		background: -moz-linear-gradient(top, #4C5A64 3%, #404F5A 4%, #2E3940 100%); /* firefox */
		background: -webkit-gradient(linear, left top, left bottom, color-stop(3%,#4C5A64), color-stop(4%,#404F5A), color-stop(100%,#2E3940)); /* webkit */
		filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#4C5A64', endColorstr='#2E3940',GradientType=0 ); /* ie */
	}
	.button:active {
		background-position: 0 top;
		position: relative;
		top: 1px;
		color: #fff;
		padding: 6px 12px 4px;
		background: #20282D; /* old browsers */
		background: -moz-linear-gradient(top, #20282D 3%, #252E34 51%, #222A30 100%); /* firefox */
		background: -webkit-gradient(linear, left top, left bottom, color-stop(3%,#20282D), color-stop(51%,#252E34), color-stop(100%,#222A30)); /* webkit */
		filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#20282D', endColorstr='#222A30',GradientType=0 ); /* ie */
		-moz-box-shadow: 1px 1px 1px rgba(255,255,255,0.1); /* Firefox */
		-webkit-box-shadow: 1px 1px 1px rgba(255,255,255,0.1); /* Safari, Chrome */
		box-shadow: 1px 1px 1px rgba(255,255,255,0.1); /* CSS3 */
	}
	
	/* Other stuff: */
	.button-list { list-style: none; padding: 0; margin: 0; width: 100%; float: left; display: block; margin: 0 0 30px; }
	.button-list li { float: left; margin: 0 10px 0 0; }
	.button-list li.search { border-left: 1px solid #273137; padding-left: 18px; margin-left: 10px; position: relative; }
	
	/* Search CSS: */
	.search-input {
		padding: 0 5px 0 22px;
		border: 1px solid #1c252b;
		height: 30px;
		color: #9fa8b0;
		font-size: 12px;
		line-height: 30px;
		font-weight: bold;
		text-shadow: 1px 1px #1f272b;
		border-radius: 25px;
		-moz-border-radius: 25px;
		-webkit-border-radius: 25px;
		background: #20282D; /* old browsers */
		background: -moz-linear-gradient(top, #20282D 3%, #252E34 51%, #222A30 100%); /* firefox */
		background: -webkit-gradient(linear, left top, left bottom, color-stop(3%,#20282D), color-stop(51%,#252E34), color-stop(100%,#222A30)); /* webkit */
		filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#20282D', endColorstr='#222A30',GradientType=0 ); /* ie */
		-moz-box-shadow: 1px 1px 1px rgba(255,255,255,0.1); /* Firefox */
		-webkit-box-shadow: 1px 1px 1px rgba(255,255,255,0.1); /* Safari, Chrome */
		box-shadow: 1px 1px 1px rgba(255,255,255,0.1); /* CSS3 */
	}
	.search-input:focus {outline: none;}
	.search-submit {
		width: 13px;
		height: 13px;
		border: none;
		background: url(mag-glass.png) no-repeat;
		display: block;
		position: absolute;
		left: 26px;
		top: 10px;
		text-indent: -9999em;
	}
	
	/* Vertical List: */
	.vertical-list {
		list-style: none;
		padding: 10px;
		width: 200px;
		border-radius: 5px;
		-moz-border-radius: 5px;
		-webkit-border-radius: 5px;
		background: #20282D; /* old browsers */
		background: -moz-linear-gradient(top, #20282D 3%, #252E34 51%, #222A30 100%); /* firefox */
		background: -webkit-gradient(linear, left top, left bottom, color-stop(3%,#20282D), color-stop(51%,#252E34), color-stop(100%,#222A30)); /* webkit */
		filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#20282D', endColorstr='#222A30',GradientType=0 ); /* ie */
		-moz-box-shadow: 1px 1px 1px rgba(255,255,255,0.1); /* Firefox */
		-webkit-box-shadow: 1px 1px 1px rgba(255,255,255,0.1); /* Safari, Chrome */
		box-shadow: 1px 1px 1px rgba(255,255,255,0.1); /* CSS3 */
	}
	.vertical-list .button {
		border-radius: 5px;
		-moz-border-radius: 5px;
		-webkit-border-radius: 5px;
		background: #515B62; /* old browsers */
		background: -moz-linear-gradient(top, #515B62 3%, #444E55 5%, #394147 100%); /* firefox */
		background: -webkit-gradient(linear, left top, left bottom, color-stop(3%,#515B62), color-stop(5%,#444E55), color-stop(100%,#394147)); /* webkit */
		filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#515B62', endColorstr='#394147',GradientType=0 ); /* ie */
	}
	.vertical-list .button:hover {
		background: #5F6B72; /* old browsers */
		background: -moz-linear-gradient(top, #5F6B72 3%, #56646C 4%, #4D5A62 50%, #434D54 100%); /* firefox */
		background: -webkit-gradient(linear, left top, left bottom, color-stop(3%,#5F6B72), color-stop(4%,#56646C), color-stop(50%,#4D5A62), color-stop(100%,#434D54)); /* webkit */
		filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#5F6B72', endColorstr='#434D54',GradientType=0 ); /* ie */
	}
	.vertical-list .button:active {
		padding: 5px 12px;
		top: 0;
		background: #515B62; /* old browsers */
		background: -moz-linear-gradient(top, #515B62 3%, #444E55 5%, #394147 100%); /* firefox */
		background: -webkit-gradient(linear, left top, left bottom, color-stop(3%,#515B62), color-stop(5%,#444E55), color-stop(100%,#394147)); /* webkit */
		filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#515B62', endColorstr='#394147',GradientType=0 ); /* ie */		-moz-box-shadow: 1px 1px 1px rgba(255,255,255,0.1); /* Firefox */
		-moz-box-shadow: 1px 1px 1px rgba(0,0,0,0.2); /* Firefox */
		-webkit-box-shadow: 1px 1px 1px rgba(0,0,0,0.2); /* Safari, Chrome */
		box-shadow: 1px 1px 1px rgba(0,0,0,0.2); /* CSS3 */

	}
	.vertical-list li { margin: 0 0 5px; }
	.vertical-list li:last-child { margin: 0; }
</style>
		
		<!-- This style is for menu END -->
		
		
		
	</head>
	<body>
	
	
	
<div id="content">
	
	<ul class="button-list">
		<li><a href='/' class='button' onclick="return false;">Home</a></li>
		<li><a href='insertJdbcContact.do' class='button' >Insert (Create)</a></li>
		<li><a href='searchJdbcContact.do' class='button' >Search (Read)</a></li>
		<li><a href='deleteJdbcContact.do' class='button' >Delete</a></li>
	</ul>
	<!-- <h3>Vertical Menu:</h3>
	<ul class="vertical-list">
		<li><a href='/' class='button' onclick="return false;">Home</a></li>
		<li><a href='/' class='button' onclick="return false;">Our Studio</a></li>
		<li><a href='/' class='button' onclick="return false;">Portfolio</a></li>
		<li><a href='/' class='button' onclick="return false;">Our Team</a></li>
		<li><a href='/' class='button' onclick="return false;">Get in Touch</a></li>
	</ul> -->
</div>
	
		<h1 style="margin: 0px auto; width: 400px;">User form</h1>
		
<form:form commandName="insertUser" method="POST" action="insertJdbcContact.do" id="userdetailsid" >		

			<fieldset>
				<legend>User details</legend>
				<ol>
					<li>
						<label for=name>Name</label>
						<form:input path="name"  type="text" placeholder="First and last name" />
					</li>
					<li>
						<label for=name>Date</label>
					<form:input path="dob" type="date" required="true" />
					</li>
					<li>
						<label for=email>Email</label>
						<form:input path="email" type="text" required="true" />
					</li>
					<li>
						<label for=phone>Phone</label>
						<form:input path="phone" type="text" required="true" />
					</li>
				</ol>
			</fieldset>
			<fieldset>
				<legend>User address</legend>
				<ol>
					<li>

						<label for=address>Address</label>
						<form:input path="address" type="text" required="true" />
					</li>
					<li>
						<label for=postcode>Post code</label>
						<form:input path="pincode" type="text" required="true" />
					</li>
					<li>
						<label for=country>Country</label>
						<form:input path="country" type="text" required="true" />
					</li>
				</ol>
			</fieldset>
			<fieldset>
				<button type=submit>Save User Details!</button>
			</fieldset>
		</form:form>
	</body>
</html>