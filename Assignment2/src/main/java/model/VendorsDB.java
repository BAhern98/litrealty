/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.List;
import javax.persistence.EntityManager;

/**
 *
 * @author Brendan
 */
public class VendorsDB {
        public static List<Vendors> getAllVendors() {
        EntityManager em = DBUtil.getEMF().createEntityManager();
        List<Vendors> list = null;
        try {
            list = em.createNamedQuery("Vendors.findAll")
                    .getResultList();
            if (list == null || list.isEmpty()) {
                list = null;
            }
        } catch (Exception ex) {
            System.out.println(ex);
        } finally {
            em.clear();
        }
        return list;
    }
        
        
            public static Vendors getVendorByID(String vendorId) {
        EntityManager em = DBUtil.getEMF().createEntityManager();
        Vendors vendor = null;
        try {
            vendor = em.createNamedQuery("Vendors.findByVendorId", Vendors.class)
                    .setParameter("vendorId", Integer.parseInt(vendorId))
                    .getSingleResult();
        } catch (Exception ex) {
            System.out.println("Error in getting property details: " + ex);
        } finally {
            em.clear();
        }
        return vendor;
    }
}
