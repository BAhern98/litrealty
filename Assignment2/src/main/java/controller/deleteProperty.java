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
import model.Archive;
import model.ArchiveDB;
import model.Properties;
import model.PropertiesDB;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Brendan
 */
@WebServlet(name = "deleteProperty", urlPatterns = {"/deleteProperty"})
public class deleteProperty extends HttpServlet {

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

        try {
           String property = request.getParameter("propertyId");
            Properties p = PropertiesDB.getPropertyByID(property);
            PropertiesDB.deleteProperty(p);
            

  

            Archive archive = new Archive();
          
            archive.setAgentId(p.getAgentId());
            archive.setStreet(p.getStreet());
            archive.setCity(p.getCity());
            archive.setListingNum(p.getListingNum());
            archive.setStyleId(p.getStyleId());
            archive.setTypeId(p.getTypeId());
            archive.setBedrooms(p.getBedrooms());
            archive.setBathrooms(p.getBathrooms());
            archive.setSquarefeet(p.getSquarefeet());
            archive.setBerRating(p.getBerRating());
            archive.setDescription(p.getDescription());
            archive.setLotsize(p.getLotsize());
            archive.setGaragesize(p.getGaragesize());
            archive.setGarageId(p.getGarageId());
            archive.setPrice(p.getPrice());
            archive.setVendorid(p.getVendorid());
             archive.setPhoto(p.getPhoto());
         

            archive.setDateAdded(new Date());


            ArchiveDB.insertArchive(archive);
        } catch (Exception ex) {
            log("ERROR: " + ex);
        }
        RequestDispatcher rd = request.getRequestDispatcher("ManageAgentProperties");
        rd.forward(request, response);
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
