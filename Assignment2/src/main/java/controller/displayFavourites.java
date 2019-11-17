/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Properties;
import model.PropertiesDB;

/**
 *
 * @author Brendan
 */
@WebServlet(name = "displayFavourites", urlPatterns = {"/displayFavourites"})
public class displayFavourites extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 response.setContentType("text/html;charset=UTF-8");

        Cookie[] cookies = request.getCookies();
        Cookie cookie = null;
        List<Properties> favouritesList = new ArrayList<>();

        for (Cookie c : cookies) {
            if (c.getName().equals("favourites") && c.getValue() != "") {
                cookie = c;
                if (c.getValue().contains("-")) {
                    String[] ids = cookie.getValue().split("-", 0);
                    for (String id : ids) {
                        Properties property = PropertiesDB.getPropertyByID(id);
                        favouritesList.add(property);
                    }
                } else {
                    Properties property = PropertiesDB.getPropertyByID(cookie.getValue());
                    favouritesList.add(property);
                }
            }
        }
        try {
            request.setAttribute("favourites", favouritesList);
            RequestDispatcher rd = request.getRequestDispatcher("favourites.jsp");
            rd.forward(request, response);
        } catch (Exception ex) {
            log("ERROR: " + ex);
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
