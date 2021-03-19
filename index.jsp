<%-- 
    Document   : home
    Created on : 19 Mar, 2021, 2:37:35 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title> Home </title>
<style>
    body{
        
        background-color: #FFFFFF;
    }
.bank{
	margin-top: 12px;
	margin-right: 90px;
	 display: inline-block;
	 float: right;
}
.first{
	 display: inline-block;
	float: left;
	margin-left: 200px;
	margin-top: 170px;
	
}
.table1{
	margin-top: 20px;
}
.table2{
margin-top: 505px;
}
</style>
</head>

<body>
<table border="0" width="100%" class="table1">
<tr>
<td width="14%">
</td>
<td width="14%">
</td>
<td width="5%">
</td>

<td width="13%">
<a href="addcustomer.jsp" style="text-decoration: none;"><font size="5"color="black">Add Customer</font></a>
</td>
<td width="14%">
    <a href="viewcustomer.jsp" style="text-decoration: none;"><font size="5" color="black">View Customer</font></a>
</td>
<td width="14%">
<a href="transfer.jsp" style="text-decoration: none;"><font size="5" color="black">Transfer Money</font></a>
</td>
<td width="16%">
<a href="history.jsp" style="text-decoration: none;"><font size="5" color="black">Transection History</font></a>
</td>
<td width="14%">
<a href="aboutus.jsp" style="text-decoration: none;"><font size="5" color="black">About Us</font></a>
</td>
</tr>
</table>
<font class="first" size="10px">Yono Bank
<br>
Welcome You!!</font>

<img class="bank" src="images/bank.jpg" width=55%; height=440px;>

<table class="table2" border="0" width="100%" >

<tr>
<th>
<a href="addcustomer.jsp"><img class="customer" src="images/customer.png" width=45%; height=180px;></a>
</th>
<th>
<a href="transfer.jsp"><img class="transfer" src="images/transfer.png" width=45%; height=180px;></a>
</th>
<th>
<a href="history.jsp"><img class="history" src="images/history.png" width=45%; height=180px;></a>
</th>
<tr>
    <th><font size="5px">Add Customer</font></th>
    <th><font size="5px">Transfer Money</font></th>
    <th><font size="5px">Check History</font></th>
</tr>
</table>
</body>
</html>