/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;


import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
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
        public static Properties getPropertyByID(String id) {
        EntityManager em = DBUtil.getEMF().createEntityManager();
        Properties property = null;
        try {
            String q = "SELECT p FROM Properties p WHERE p.id = " + id;
            TypedQuery<Properties> tq = em.createQuery(q, Properties.class);
            property = tq.getSingleResult();
        } catch (Exception ex) {
            System.out.println(ex);
        } finally {
            em.clear();
        }
        return property;
    }
//          public static Properties archiveProperty(String id) {
//        EntityManager em = DBUtil.getEMF().createEntityManager();
//        Properties property = null;
//        try {
//            String q = "SELECT p FROM Properties p WHERE p.id = " + id;
//            TypedQuery<Properties> tq = em.createQuery(q, Properties.class);
//            property = tq.getSingleResult();
//        } catch (Exception ex) {
//            System.out.println(ex);
//        } finally {
//            em.clear();
//        }
//        return property;
//    }
    
   public static void insertProperty(Properties p) {
        EntityManager em = DBUtil.getEMF().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        try {
            trans.begin();
            em.persist(p);
            trans.commit();
        } catch (Exception ex) {
            System.out.println(ex);
        } finally {
            em.close();
        }
    }
public static void archiveProperty(String property) {
        EntityManager em = DBUtil.getEMF().createEntityManager();


        try {
            String q = "INSERT INTO archive SELECT * FROM properties WHERE p.id = " + property + "DELETE FROM properties where p.id="+ property;
            TypedQuery<Properties> tq = em.createQuery(q, Properties.class);
            tq.executeUpdate();
        } catch (Exception ex) {
            System.out.println(ex);
        } finally {
            em.clear();
        }
    }
 public static List<Properties> searchProperty(String city, String maxPrice,String minPrice) {
        EntityManager em = DBUtil.getEMF().createEntityManager();

        List<Properties> list = null;
        try {
            String q = "SELECT p FROM Properties p WHERE p.city = " + "'"+city+"'" + " AND p.price < " + maxPrice + " AND p.price > "+ minPrice;
            
            
            TypedQuery<Properties> tq = em.createQuery(q, Properties.class);

            list = tq.getResultList();

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
  
    
}
