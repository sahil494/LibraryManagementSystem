
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modal.student;
import modal.studentDao;

public class studentServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
          String sid = request.getParameter("sid");
            String sname =  request.getParameter("sname");
            String br =  request.getParameter("br");
            String email =  request.getParameter("email");
            student s = new student();
            s.setSname(sname);
            s.setSid(sid);
            s.setEmail(email);
            s.setBranch(br);
            studentDao sd = new studentDao();
            if(sd.add(s))
            {
                  HttpSession session = request.getSession();
            session.setAttribute("sid", sid);
             out.print("<script>alert('Your Student Details Added..'); setTimeout(function(){window.location='libHome.jsp'}, 1*500);</script>");
            }
            else 
            {
                 out.print("<script>alert('Not Added...Please Check Details..'); setTimeout(function(){window.location='libHome.jsp'}, 1*500);</script>");
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
