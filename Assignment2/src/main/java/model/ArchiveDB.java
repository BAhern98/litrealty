/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

/**
 *
 * @author Brendan
 */
public class ArchiveDB {
     public static void insertArchive(Archive p) {
        EntityManager em = DBUtil.getEMF().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        try {
            trans.begin();
            em.persist(p);
            trans.commit();
        } catch (Exception ex) {
            System.out.println("DB: " + ex);
        } finally {
            em.close();
        }
    }
}
