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
public class PropertiesDB {

    public static List<Properties> getAllProperties() {
        EntityManager em = DBUtil.getEMF().createEntityManager();
        String q = "SELECT p FROM Properties p";
        TypedQuery<Properties> tq = em.createQuery(q, Properties.class);

        List<Properties> list;
        try {
            list = tq.getResultList();
            if(list ==null|| list.isEmpty())
               list = null;
       
        }  finally {
            em.close();
        }
        return list;
      
    }
   

  
    
}
