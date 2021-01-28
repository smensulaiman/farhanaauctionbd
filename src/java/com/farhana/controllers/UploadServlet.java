package com.farhana.controllers;

import com.farhana.db.QueryHelper;
import com.farhana.model.ProductModel;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "UploadServlet", urlPatterns = {"/UploadServlet"})
public class UploadServlet extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            String productTitle = request.getParameter("productTitle");
            String productPrice = request.getParameter("productPrice");
            String productStock = request.getParameter("productStock");
            String productSeller = request.getParameter("productSeller");
            String productTime = request.getParameter("productTime");
            String productCategory = request.getParameter("productCategory");
            String img = request.getParameter("img");
            String productStartTime = String.valueOf(System.currentTimeMillis());
            String productEndTime = String.valueOf(System.currentTimeMillis() + (long)Integer.parseInt(productTime)*60*60*1000);
            
            productPrice = String.valueOf(Integer.parseInt(productPrice) * Integer.parseInt(productStock));
            
            System.out.println(" title : "+productTitle+" price : "+productPrice+" stock : "+productStock+" : "+productSeller+" : "+productTime+" category : "+productCategory+" img : "+img);
            
            ProductModel productModel =  new ProductModel( 0, productTitle, Integer.parseInt(productPrice), Integer.parseInt(productStock), productSeller,  productStartTime,  productEndTime, Integer.parseInt(productCategory),  img);
            QueryHelper helper = new QueryHelper();
            helper.insertProduct(productModel);
            
            response.sendRedirect("admin/addproduct.jsp");
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
