package com.farhana.controllers;

import com.farhana.db.QueryHelper;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SignUpController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            String fullName = request.getParameter("fullname");
            String email = request.getParameter("email");
            String password = request.getParameter("pass");

            if (!email.isEmpty() && !password.isEmpty()) {
                System.out.println(fullName + "\n" + email + "\n" + password);

                QueryHelper queryHelper = new QueryHelper();
                int x = 0;
                if ((x = queryHelper.signUpUser(email, fullName, password)) > 0) {
                    if (x == 2) {
                        request.getSession().setAttribute("email_validation","Email Already In Use");
                        out.write("Email Already In Use");
                        response.sendRedirect("auctionbd_eCommerce/registration/signup.jsp");
                    } else {
                        out.write("Success");
                        response.sendRedirect("auctionbd_eCommerce/registration/login.jsp");
                    }
                } else {
                    request.getSession().setAttribute("email_validation","Faild");
                    out.write("Faild");
                    response.sendRedirect("auctionbd_eCommerce/registration/signup.jsp");
                }

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
