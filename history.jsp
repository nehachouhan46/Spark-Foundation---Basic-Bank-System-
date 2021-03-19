<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
     
    <title>Transaction History</title>

<style>
    h1{
font-family: "Booter - Zero Zero";
font-size: 50px;
color: Black;
 letter-spacing: 3px;
}

#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 14px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #0000A0;
  color: white;
}
</style>
</head>
<body>

    <h1><center>Transaction History</center>  </h1>
    <br>

<table id="customers">
  <tr>
    <th>S.N.</th>
    <th>Sender Name</th>
    <th>Reciver Name</th>
    <th>Amount</th>
    <th>Date & Time</th>
 </tr>
 
 <%
     
     
            try {
                 Class.forName("com.mysql.cj.jdbc.Driver");

                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/internship", "root", "root");
                String sql = "select sno,sender,reciver,amount,date from transectionhistory";
                PreparedStatement ps = con.prepareStatement(sql);
//		ps.setString(1,id); 
//                ps.setString(2,pass);
	        ResultSet rs=ps.executeQuery();
                
                while(rs.next())
                {
                   
                    out.print("<tr>");
    out.print("<td>"+Integer.parseInt(rs.getString("sno"))+"</td>");
    out.print("<td>"+rs.getString("sender")+"</td>");
    out.print("<td>"+rs.getString("reciver")+"</td>");
    out.print("<td>"+Integer.parseInt(rs.getString("amount"))+"</td>");
    out.print("<td>"+rs.getTimestamp("date")+"</td>");
    out.print("</tr>");

}
                con.close();
                
    }
            
          catch (SQLException ex) 
        {
            System.out.println("Error Register "+ex.getMessage());
            
        }
     %>
  
  

  
  
</table>
</body>
</html>
