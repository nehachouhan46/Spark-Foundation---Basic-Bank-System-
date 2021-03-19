<%-- 
    Document   : addcustomer
    Created on : 19 Mar, 2021, 2:37:50 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Add Customer</title>
<style>
	body{
		background-image: url("images/customer.jpg");
		background-size: cover;
	background-repeat: no-repeat;
        background-size: 100% 140%;
       
	}

.form-box{
	width: 380px;
	height: 390px;
	
	position: relative;
	margin-left: 60px;
    margin-top:140px;
	border-radius: 5px;
	border: #000080 solid 20px;
	
	
	background: #fff;
	padding: 5px;
	overflow: hidden;
}
.button-box{
	width: 220px;
	margin-top: -130px;
	margin-left: 50px;
	position: relative;
	
	
}.input-group{
	top: 180px;
	position: absolute;
	width: 280px;
	transition: .5s;
	
	
	
}
.input-field{
	width: 100%;
	padding: 10px;
	margin: 5px 0;
	border-left: 0;
	border-top: 0;
	border-right: 0;
	border-bottom: 1px solid #999;
	background: transparent;
	
}

.submit-btn{
	width: 85%;
	padding: 10px 30px;
	cursor: pointer;
	display: block;
	margin: auto;
	background: linear-gradient(to right, #151B8D, violet);
	border: 0;
	outline: none;
	border-radius: 30px;
	
}


</style>
</head>

<body>
<div class="hero">
		<div class="form-box">
			<div class="button-box">
				
	
<form id="login" action="addcustomer" method="post" class="input-group">
    <center><font size="6px" class="heading" style="">Add Customer</font></center>
				<br>
				<br>
				<input type="text" class="input-field" name="name" placeholder="Enter Customer Name" required>
				<input type="email" class="input-field" name="email" placeholder="Enter Email-Id" id="myInput" required>
				<input type="text" class="input-field" name="balance" placeholder="Enter Bank Balance" id="myInput" required>
				
				<br>
				<br><br>
				<button type="submit" class="submit-btn"><font size="3"><b>Create</b></font></button>
                                
                                    
                           
			</form>
			</div></div></div>
</body>

</html>