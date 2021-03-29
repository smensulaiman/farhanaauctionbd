package com.farhana.controllers;

import com.farhana.db.QueryHelper;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class BidController extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           
            int id = Integer.parseInt(request.getParameter("id"));
            int value = Integer.parseInt(request.getParameter("item"));
            String name = (String) request.getSession().getAttribute("username");
            if(value == 1){
                value = Integer.parseInt(request.getParameter("custom"));
            }
            System.out.println("Id : "+id+"Name : "+name+", Value : "+value+" id : "+id);
           
            QueryHelper helper = new QueryHelper();
            
            if(helper.postBid(name, value, new Date().toString(), id)){
                response.sendRedirect("auctionbd_eCommerce/index.jsp");
            }else{
                request.setAttribute("error", "Log In First !!!");
                response.sendRedirect("auctionbd_eCommerce/registration/login_error.jsp");
            }
                       
            
        } catch (Exception ex) {
           ex.printStackTrace();
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

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
