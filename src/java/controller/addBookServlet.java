
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modal.addBook;
import modal.addBookDao;

public class addBookServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
            String bid1 = request.getParameter("bid");
            String bt1 =  request.getParameter("bt");
            String an1 =  request.getParameter("an");
            String qa1 =  request.getParameter("qa");
            
            addBook ad = new addBook();
            ad.setBookId(bid1);
            ad.setbName(bt1);
            ad.setAname(an1);
             ad.setQuantity(qa1);
            addBookDao d = new addBookDao();
            if(d.add(ad))
            {
                 HttpSession session = request.getSession();
            session.setAttribute("bName", bt1);
         out.print("<script>alert('Book has been Added Successfully'); setTimeout(function(){window.location='adminHome.jsp'}, 1*500);</script>");
           
            }
            else 
            {
               out.print("<script>alert('Book detail Not...Please Check Details..'); setTimeout(function(){window.location='adminHome.jsp'}, 1*500);</script>");
           
            }
//            <script>alert('Your Book Detail Added'); setTimeout(function(){window.location='adminHome.jsp'}, 1*500);</script>
        
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
