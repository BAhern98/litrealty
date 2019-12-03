/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;


import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
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
        List<Properties> list = null;
        try {
            list = em.createNamedQuery("Properties.findAll")
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
       public static Properties getPropertyByID(String id) {
        EntityManager em = DBUtil.getEMF().createEntityManager();
        Properties property = null;
        try {
            property = em.createNamedQuery("Properties.findById", Properties.class)
                    .setParameter("id", Integer.parseInt(id))
                    .getSingleResult();
        } catch (Exception ex) {
            System.out.println("Error in getting property details: " + ex);
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
     public static void updateProperty(Properties p) {
        EntityManager em = DBUtil.getEMF().createEntityManager();
        EntityTransaction trans = em.getTransaction();
 
        try {
            trans.begin();
            em.merge(p);
            trans.commit();
        } catch (Exception ex) {
            System.out.println(ex);
        } finally {
            em.close();
        }
    }
       public static void archiveProperty(Properties p){
        EntityManager em = DBUtil.getEMF().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        try{
            trans.begin();
         
            em.remove(em.merge(p));
            trans.commit();
        }catch(Exception ex){
            System.out.println(ex);
        }finally{
            em.close();
        }
    }
     public static void deleteProperty(Properties p){
        EntityManager em = DBUtil.getEMF().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        try{
            trans.begin();
            em.remove(em.merge(p));
            trans.commit();
        }catch(Exception ex){
            System.out.println(ex);
        }finally{
            em.close();
        }
    }
        public static List<Properties> getRecentProperties() {
        EntityManager em = DBUtil.getEMF().createEntityManager();
        Date date = new Date();
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        Calendar c = Calendar.getInstance();
        c.add(Calendar.DATE, -7);
        Date week = c.getTime();
        
        String q = "SELECT p from Properties p WHERE p.dateAdded <='" + df.format(date) + "'AND p.dateAdded >='" + df.format(week) + "'";
        TypedQuery<Properties> tq = em.createQuery(q, Properties.class);
        List<Properties> list;

        try {
            list = tq.getResultList();
            if (list == null || list.isEmpty()) {
                list = null;
            }
        } finally {
            em.close();
        }
        return list;
    }
//public static void archiveProperty(String property) {
//        EntityManager em = DBUtil.getEMF().createEntityManager();
//
//
//        try {
//            //String q = "INSERT INTO archive SELECT * FROM properties WHERE p.id = " + "'" +property +"'"+"DELETE FROM properties where p.id="+ "'" + property+"'";
//            String q = "DELETE FROM properties where p.id="+ "'" + property+"'";
//            TypedQuery<Properties> tq = em.createQuery(q, Properties.class);
//            tq.executeUpdate();
//        } catch (Exception ex) {
//            System.out.println(ex);
//        } finally {
//            em.clear();
//        }
//    }
          public static List<Properties> searchProperty(String city, String maxPrice,String minPrice) {
        EntityManager em = DBUtil.getEMF().createEntityManager();
        List<Properties> list =null;
        try {
            list = em.createNamedQuery("Properties.findByCityAndPrice")
                    .setParameter("city", city)
                    .setParameter("minPrice", Double.parseDouble(minPrice))
                    .setParameter("maxPrice", Double.parseDouble(maxPrice))
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
        public static List<Properties> getPropertiesByAgentId(int agentId) {
        EntityManager em = DBUtil.getEMF().createEntityManager();
        List<Properties> list = null;
        try {
            list = em.createNamedQuery("Properties.findByAgentId")
                    .setParameter("agentId", agentId)
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

    
}
