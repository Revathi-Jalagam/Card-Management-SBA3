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
	<h3>Credit Card Details</h3>
	
		<div id="content">
		
		<a href="showMenu"> Home </a>
		<br/><br/>
	
	
	
		<div id="content">
		
			<!--  add our html table here -->
		<div class="topnav-right">
				<a href="login"> Logout </a>
				<br/><br/>
		</div>
<!-- 			<table> -->
<!-- 				<tr> -->
<!-- 					<th></th> -->
<!-- 					<th></th> -->
<!-- 					<th></th> -->
<!-- 				</tr> -->
				
<!-- 				loop over and print our customers -->
				
<%-- 					<c:url var="debitCard" value="/api/debit"> --%>
<%-- 					</c:url> --%>
					
<%-- 					<c:url var="creditCard" value="/api/credit"> --%>
<%-- 					</c:url> --%>
									
<%-- 						<tr><td> <a href="${debitCard}"> Debit Card </a></td></tr> --%>
<%-- 						<tr><td> <a href="${creditCard}"> Credit Card </a></td></tr> --%>
						

<!-- 			</table> -->

<table>
				<tr>
					<th>Credit Card Number</th>
					<th>Card Holder Name</th>
					<th>Expiry Date</th>
					<th>Card Limit</th>
					<th>Status</th>
				</tr>
				
				<!-- loop over and print our customers -->
				<c:forEach var="model" items="${mini}">
							
					<tr>
						<td>${model.id}</td>
						<td>${model.cusid}</td>
						<td>${model.date} </td>
						<td>${model.transType} </td>
						<td>${model.amount}</td>
					</tr>
				
				</c:forEach>
<!-- 					<tr> -->
<!-- 					<th></th> -->
<!-- 					<th></th> -->
<!-- 					<th></th> -->
<!-- 				</tr> -->
				
				<!-- loop over and print our customers -->
				
					<c:url var="reportcc" value="/api/reportcc">
					</c:url>
					
					<c:url var="upgradecc" value="/api/upgradecc">
					</c:url>
					<c:url var="resetpincc" value="/api/resetpincc">
					</c:url>
									
						<tr><td> <a href="${reportcc}"> Report Loss of Card/Deactivate </a></td></tr>
						<tr><td> <a href="${upgradecc}"> Upgrade Credit Card </a></td></tr>
						<tr><td> <a href="${resetpincc}"> Reset PIN </a></td></tr>		
			</table>
		</div>
	
	</div>

</body>

</html>










