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
	<h3>Debit Card Details</h3>
	
		<div id="content">
		
		<a href="showMenu"> Home </a>
		<br/><br/>
	
<!-- 	<h3>Navigations</h3> -->
	
		<div id="content">
		
			<!--  add our html table here -->
		<div class="topnav-right">
				<a href="login"> Logout </a>
				<br/><br/>
		</div>


<form action="debit" method="Get">
			<table>
			
				<tr>
				<td>Customer id :</td><td><input type="text" name="customerid" /></td>
				
				</tr>
				
				<tr>
				<td><td><input type="submit" name="Submit" /></td></td>
				</tr>
				
				<tr>
					<th>Debit Card Number</th>
					
					<th>Expiry Date</th>
					<th>Available Balance</th>
					<th>Status</th>
				</tr>
						
				<tr>
						
						<td>${cards.cardnumber}</td>
						<td>${cards.expirydate} </td>
						<td>${cards.balance} </td>
						<td>${cards.status}</td>
					</tr>
		
				<!-- loop over and print our customers -->
				
					<c:url var="reportdc" value="/api/reportdc">
					</c:url>
					
					<c:url var="upgradedc" value="/api/upgradedc">
					</c:url>
					<c:url var="resetpindc" value="/api/resetpindc">
					</c:url>
									
						<tr><td> <a href="${reportdc}"> Report Loss of Card/Deactivate </a></td></tr>
						<tr><td> <a href="${upgradedc}"> Upgrade Debit Card </a></td></tr>
						<tr><td> <a href="${resetpindc}"> Reset PIN </a></td></tr>			
			</table>
			</form>	

		</div>
	
	</div>

</body>

</html>










