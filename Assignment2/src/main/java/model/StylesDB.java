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
public class StylesDB {

    public static List<Styles> getAllStyles() {
        EntityManager em = DBUtil.getEMF().createEntityManager();
        String q = "SELECT s FROM Styles s";
        TypedQuery<Styles> tq = em.createQuery(q, Styles.class);

        List<Styles> list;
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

    public static Styles getStylesByID(String id) {
        EntityManager em = DBUtil.getEMF().createEntityManager();
        Styles style = null;
        try {
            String q = "SELECT s FROM Styles s WHERE s.styleId =" + id;
            TypedQuery<Styles> tq = em.createQuery(q, Styles.class);
            style = tq.getSingleResult();
        } catch (Exception ex) {
            System.out.println(ex);
        } finally {
            em.clear();
        }
        return style;

    }

}
