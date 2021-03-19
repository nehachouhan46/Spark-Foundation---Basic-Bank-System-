
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

public class transfermoney extends HttpServlet {

  
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
            
           String sender = request.getParameter("sender");
            String reciver = request.getParameter("reciver");
            String amount = request.getParameter("amount");
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/internship", "root", "root");
                String sql = "insert into transectionhistory(sender,reciver,amount) values(?,?,?)";
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, sender);
                ps.setString(2, reciver);
                ps.setString(3, amount);
                if(ps.executeUpdate()!=0)
                {
                    
                    
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Transection Successfull Done...');");
                    out.println("location='history.jsp';");
                    out.println("</script>");
                }
                else
                {
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Something went wrong plz try again');");
                    out.println("location='transfermoney.jsp';");
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
