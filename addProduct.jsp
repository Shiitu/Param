<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Home</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
	<%
	/* Checking the user credentials */
		String userType = (String)session.getAttribute("usertype");
		String username = (String)session.getAttribute("username");
		String password = (String)session.getAttribute("password");
	
		if(userType== null || !userType.equals("admin")){
			
			response.sendRedirect("loginFirst.jsp");
			
		}
		
		else if(username == null || password==null){
	
			response.sendRedirect("loginFirst.jsp");
		}	
		
	%>

	<%@ include file="adminHeader.html"%>

	<div class="products" style="background-color: #E6F9E6;">

		<p id="message" class="tab" align="center">

			Add Company
			<!-- <form>
			<button type="submit" formaction="addProduct.jsp" style="background-color:red; color:white">Add products</button>
			<button type="submit" formaction="#">Remove Products</button>
			<button type="submit" formaction="#">Update Products</button>
			</form> -->

		</p>
		<br>

		<div class="tab" align="center">

			<div style="margin: 5px">

				<form action="./AddProductSrv" method="post"
					enctype="multipart/form-data">
					<table border="0">
						<tr>
							<td>Company Name:</td>
							<td><input type="text" name="name"
								style="font-size: 15px; font-weight: normal; width: 80%"
								required></td>
						</tr>
						<tr>
							<td><br></td>
							<td><br></td>
						</tr>
						<tr>
							<td>UserName:</td>
							<td><input type="text" name="username"
								style="font-size: 15px; font-weight: normal; width: 100%"
								required></td>
						</tr>
						<tr>
							<td><br></td>
							<td><br></td>
						</tr>
						<tr>
							<td>Mobile No.&nbsp;</td>
							<td><input type="Phone" name="mobile"
								style="font-size: 15px; font-weight: normal;" required></td>
						</tr>
						<tr>
							<td><br></td>
							<td><br></td>
						</tr>
						<tr>
							<td>Email Id</td>
							<td><input type="email" name="email"
								style="font-size: 15px; font-weight: normal;" required></td>
						</tr>

						<tr>
							<td><br></td>
							<td><br></td>
						</tr>
						<tr>
							<td>Company Type&nbsp;</td>
							<td><select name="type"
								style="font-size: 15px; font-weight: normal; width: 80%">
									<option value="IT">IT</option>
									<option value="FOOD AND SNACKS">FOOD AND SNACKS</option>
									<option value="AUTOMOBILE">AUTOMOBILE</option>
									<option value="ELECTRONICS">ELECTRONICS</option>
									<option value="CHEMICAL">CHEMICAL</option>
									<option value="GARMENTS">GARMENTS</option>
									<option value="Some Other">Some Other</option>
							</select></td>
						</tr>
						<tr>
							<td><br></td>
							<td><br></td>
						</tr>
						<tr>
							<td>Detail Info</td>
							<td><textarea name="info"
									style="font-size: 15px; font-weight: normal; width: 80%; height: 80px"
									required></textarea></td>
						</tr>
						<tr>
							<td><br></td>
							<td><br></td>
						</tr>
						<tr>
							<td>Penny Price</td>
							<td><input type="text" name="price"
								style="font-size: 15px; font-weight: normal; width: 80%;"
								required></td>
						</tr>
						<tr>
							<td><br></td>
							<td><br></td>
						</tr>
						<tr>
							<td>Quantity</td>
							<td><input type="number" name="quantity"
								style="font-size: 15px; font-weight: normal; width: 80%"
								required></td>
						</tr>
						<tr>
							<td><br></td>
							<td><br></td>
						</tr>
						<tr>
							<td>Picture</td>
							<td><input type="file" name="image"></td>
						</tr>
						<tr>
							<td><br></td>
							<td><br></td>
						</tr>
						<tr colspan="2" align="center">
							<td><button>
									<a href="adminHome.jsp">Cancle</a>
								</button>&nbsp;</td>
							<td><input type="submit" name="submit" value="Add Item"></td>
						</tr>

					</table>

				</form>
			</div>

		</div>
	</div>

	<%@ include file="footer.html"%>
</body>
</html>