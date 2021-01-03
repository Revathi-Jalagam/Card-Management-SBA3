<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
	<title>Navigations</title>

		<link type="text/css"
			  rel="stylesheet"
			  href="${pageContext.request.contextPath}/css/style.css"/>
	
		<link type="text/css"
			  rel="stylesheet"
			  href="${pageContext.request.contextPath}/css/add-customer-style.css"/>
</head>

<body>
	
	<div id="wrapper">
		<div id="header">
		   <h2>IBS - Integrated Banking System</h2>
		</div>
	</div>

	<div id="container">
	
	<h3>Navigations</h3>
	
		<div id="content">
		
			<!--  add our html table here -->
		<div class="topnav-right">
				<a href="login"> Logout </a>
				<br/><br/>
		</div>
		
				
				<!-- loop over and print our customers -->
				
			<!-- <c:url var="debitCard" value="/api/debit"> -->
				<!--	</c:url>  -->
					
					<c:url var="creditCard" value="/api/debit">
					</c:url>
									
						<tr><td> <a href="${debitCard}"> Debit Card </a></td></tr>
						<tr><td> <a href="${creditCard}"> Credit Card </a></td></tr>
						

			</table>
					
		</div>
	
	</div>

</body>

</html>










