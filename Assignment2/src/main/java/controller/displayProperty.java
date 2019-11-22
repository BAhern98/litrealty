/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Agents;
import model.AgentsDB;
import model.Properties;
import model.PropertiesDB;

/**
 *
 * @author Brendan
 */
@WebServlet(name = "displayProperty", urlPatterns = {"/displayProperty"})
public class displayProperty extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */ protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String propertyId = request.getParameter("propertyId");
   if (propertyId == null || propertyId.isEmpty()) {
    RequestDispatcher rd = request.getRequestDispatcher("404.jsp");
            rd.forward(request, response);
}
        Cookie[] cookies = request.getCookies();

        boolean propertyInfavourites = false;

        if (cookies != null) {
            for (Cookie c : cookies) {
                if (c.getName().equals("favourites")) {
                    String[] ids = c.getValue().split("-", 0);
                    for (String id : ids) {
                        if (id.equals(propertyId)) {
                            propertyInfavourites = true;
                            break;
                        }
                    }
                }
            }

            request.setAttribute("propertyInfavourites", propertyInfavourites);

            try {
                Properties property = PropertiesDB.getPropertyByID(propertyId);
                request.setAttribute("property", property);
                if(property == null){
                RequestDispatcher rd = request.getRequestDispatcher("404.jsp");
            rd.forward(request, response);
                }
            } catch (Exception ex) {
                log("ERROR: " + ex);
            }
            RequestDispatcher rd = request.getRequestDispatcher("viewProperty.jsp");
            rd.forward(request, response);
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
