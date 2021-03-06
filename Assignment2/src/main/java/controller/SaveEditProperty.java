/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
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
@WebServlet(name = "SaveEditProperty", urlPatterns = {"/SaveEditProperty"})
public class SaveEditProperty extends HttpServlet {

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
        
        
        
            String street = request.getParameter("street");
            String description = request.getParameter("description");
            String listingnum = request.getParameter("listingnum");
            String city = request.getParameter("city");
            String price = request.getParameter("price");
            String bedrooms = request.getParameter("bedrooms");
            String bathrooms = request.getParameter("bathrooms");
            String squarefeet = request.getParameter("squarefeet");
            String berRating = request.getParameter("berRating");
            String lotsize = request.getParameter("lotsize");
            String garagesize = request.getParameter("garagesize");
            String garagetype = request.getParameter("garagetype");
            String propertytype = request.getParameter("propertytype");
            String style = request.getParameter("styletype");
      String propertyId = request.getParameter("propertyId");
            String agent = request.getParameter("agent");
            String vendorid = request.getParameter("vendorid");
            
            
           
          
            Properties p = PropertiesDB.getPropertyByID(propertyId);
                 //Properties p = new Properties();
         //p.setId(Integer.valueOf(propertyId));
            p.setAgentId(Integer.valueOf(agent));
            p.setStreet(street);
            p.setCity(city);
            p.setListingNum(Integer.valueOf(listingnum));
            p.setStyleId(Integer.valueOf(style));
            p.setTypeId(Integer.valueOf(propertytype));
            p.setBedrooms(Integer.valueOf(bedrooms));
            p.setBathrooms(Float.valueOf(bathrooms));
            p.setSquarefeet(Integer.valueOf(squarefeet));
            p.setBerRating(berRating);
            p.setDescription(description);
            p.setLotsize(lotsize);
            p.setGaragesize(Short.valueOf(garagesize));
            p.setGarageId(Integer.valueOf(garagetype));
        p.setVendorid(Integer.valueOf(vendorid));
            p.setPrice(Double.valueOf(price));
            Date d = new Date();

            p.setDateAdded(d);

            PropertiesDB.updateProperty(p);
            
            RequestDispatcher dispatcher = request.getRequestDispatcher("ManageAgentProperties");
            dispatcher.forward(request, response);
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
