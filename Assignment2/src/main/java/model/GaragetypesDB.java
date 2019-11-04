/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

/**
 *
 * @author Brendan
 */
public class GaragetypesDB {
      public static List<Garagetypes> getAllGaragetypes() {
        EntityManager em = DBUtil.getEMF().createEntityManager();
        String q = "SELECT g FROM Garagetypes g";
        TypedQuery<Garagetypes> tq = em.createQuery(q, Garagetypes.class);

        List<Garagetypes> list;
        try {
            list = tq.getResultList();
            if(list ==null|| list.isEmpty())
               list = null;
       
        }  finally {
            em.close();
        }
        return list;
      
    }
        public static Garagetypes getGarageTypeByID(String id) {
        EntityManager em = DBUtil.getEMF().createEntityManager();
        Garagetypes garagetype = null;
        try {
            String q = "SELECT g FROM Garagetypes g WHERE g.garageId = " + id;
            TypedQuery<Garagetypes> tq = em.createQuery(q, Garagetypes.class);
            garagetype = tq.getSingleResult();
        } catch (Exception ex) {
            System.out.println(ex);
        } finally {
            em.clear();
        }
        return garagetype;
    }
}
