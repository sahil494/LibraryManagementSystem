

package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modal.issue;
import modal.issueDao;

public class issueServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
           PrintWriter out = response.getWriter();
           String bid1 = request.getParameter("bid1");
            String bt1 =  request.getParameter("bt1");
            String sid =  request.getParameter("sid");
            String sname =  request.getParameter("sname");
            String br =  request.getParameter("br");
            issue i = new issue();
            Date now = new Date();
            i.setBid(bid1);
            i.setBt(bt1);
            i.setSid(sid);
            i.setSname(sname);
            i.setBranch(br);
            Date cur = new Date();
            Calendar c = Calendar.getInstance();
            c.add(Calendar.DATE, 20);
            Date newdate = c.getTime();
            i.setRegdate(now);
            i.setReturndate(newdate);
            issueDao id = new issueDao();
            if(id.add(i))
            {
                     HttpSession session = request.getSession();
            session.setAttribute("sid", sid);
             out.print("<script>alert('Book has been Issue'); setTimeout(function(){window.location='libHome.jsp'}, 1*500);</script>");
           
            }
            else 
            {
                  out.print("<script>alert('Not Issue...Please Check Details..'); setTimeout(function(){window.location='libHome.jsp'}, 1*500);</script>");
         
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
