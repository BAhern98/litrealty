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
 * @author Brendans
 */
public class PropertytypesDB {
    public static List<Propertytypes> getAllPropertyTypes() {
        EntityManager em = DBUtil.getEMF().createEntityManager();
        String q = "SELECT p FROM Propertytypes p";
        TypedQuery<Propertytypes> tq = em.createQuery(q, Propertytypes.class);

        List<Propertytypes> list;
        try {
            list = tq.getResultList();
            if(list ==null|| list.isEmpty())
               list = null;
       
        }  finally {
            em.close();
        }
        return list;
      
    }
      public static Propertytypes getPropertytypeByID(String id) {
        EntityManager em = DBUtil.getEMF().createEntityManager();
        Propertytypes propertytype = null;
        try {
            String q = "SELECT p FROM Propertytypes p WHERE p.typeId = " + id;
            TypedQuery<Propertytypes> tq = em.createQuery(q, Propertytypes.class);
            propertytype = tq.getSingleResult();
        } catch (Exception ex) {
            System.out.println(ex);
        } finally {
            em.clear();
        }
        return propertytype;
    }
}
