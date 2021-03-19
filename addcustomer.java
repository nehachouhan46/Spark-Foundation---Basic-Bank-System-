
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

public class addcustomer extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Registration Done</title>");            
            out.println("</head>");
            out.println("<body>");
            
            String name = request.getParameter("name");
            
             String email = request.getParameter("email");

            int balance = Integer.parseInt(request.getParameter("balance"));
           try
            {
                Class.forName("com.mysql.jdbc.Driver");
System.out.println("Driver LOaded");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/internship", "root", "root");
               System.out.println("Connection ");
                String sql = "insert into customer(name,email,balance) values(?,?,?)";
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, name);
                ps.setString(2, email);
                ps.setInt(3, balance);
                if(ps.executeUpdate()!=0)
                {
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Customer Added Successfull...');");
                    out.println("location='viewcustomer.jsp';");
                    out.println("</script>");
                }
                else
                {
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Something went wrong plz try again');");
                    out.println("location='addcustomer.jsp';");
                    out.println("</script>");
                }
            }
            catch(Exception e)
            {
                e.printStackTrace();
                out.println("<h1>Error occured....</h1>");
            }
            
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
