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
     
    <title>View Customer</title>

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
  background-color: #FF1493;
  color: white;
}
</style>
</head>
<body>

    <h1><center>All Customers Details</center>  </h1>
    <br>

<table id="customers">
  <tr>
    <th>S.N.</th>
    <th>Name</th>
    <th>Email-Id</th>
    <th>Balance</th>
    
 </tr>
 
 <%
     
     
            try {
                 Class.forName("com.mysql.cj.jdbc.Driver");

                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/internship", "root", "root");
                String sql = "select Sn,name,email,balance from customer";
                PreparedStatement ps = con.prepareStatement(sql);
//		ps.setString(1,id); 
//                ps.setString(2,pass);
	        ResultSet rs=ps.executeQuery();
                
                while(rs.next())
                {
                   
                    out.print("<tr>");
    out.print("<td>"+Integer.parseInt(rs.getString("Sn"))+"</td>");
    out.print("<td>"+rs.getString("name")+"</td>");
    out.print("<td>"+rs.getString("email")+"</td>");
    out.print("<td>"+Integer.parseInt(rs.getString("balance"))+"</td>");
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
