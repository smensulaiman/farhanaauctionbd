package com.farhana.controllers;

import com.farhana.db.QueryHelper;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class JobController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            try {
                String jobTitle = request.getParameter("jobTitle");
                String jobType = request.getParameter("jobType");
                String jobLocation = request.getParameter("jobLocation");
                String jobDescription = request.getParameter("jobDescription");
                String skills = request.getParameter("skills");
                String salary = request.getParameter("salary");
                String poser = (String) request.getSession().getAttribute("username");

                QueryHelper helper = new QueryHelper();

                if (helper.postJob(jobTitle, jobType, jobLocation, jobDescription, skills, salary, poser)) {
                    response.sendRedirect("admin/index.jsp");
                } else {
                    request.setAttribute("error", "Log In First !!!");
                    response.sendRedirect("auctionbd_eCommerce/registration/login_error.jsp");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }

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
