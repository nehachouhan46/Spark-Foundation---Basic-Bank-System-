<%-- 
    Document   : addcustomer
    Created on : 19 Mar, 2021, 2:37:50 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Transfer Money</title>
<style>
	body{
		background-image: url("images/add_customer.jpg");
		background-size: cover;
	background-repeat: no-repeat;
        background-size: 100% 140%;
       
	}

.form-box{
	width: 400px;
	height: 390px;
	
	position: relative;
	margin-left: 140px;
    margin-top:140px;
	border-radius: 5px;
	border: pink solid 20px;
	
	
	background: #fff;
	padding: 5px;
	overflow: hidden;
}
.button-box{
	width: 220px;
	margin-top: -130px;
	margin-left: 60px;
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
	background: linear-gradient(to right, #ff105f, #ffad06);
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
				
	
<form id="login" action="transfermoney" method="post" class="input-group">
				<center><font size="6px" class="heading" style="">Transfer Money</font></center>
				<br>
				<br>
				<input type="text" class="input-field" name="sender" placeholder="Enter Sender Name" required>
				<input type="text" class="input-field" name="reciver" placeholder="Enter Reciver Name" id="myInput" required>
				<input type="text" class="input-field" name="amount" placeholder="Enter Amount" id="myInput" required>
				
				<br>
				<br><br>
				<button type="submit" class="submit-btn"><font size="3">Send</font></button>
                                
                                    
                           
			</form>
			</div></div></div>
</body>

</html>