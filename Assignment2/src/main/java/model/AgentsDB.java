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
public class AgentsDB {
    public static List<Agents> getAllAgents() {
          EntityManager em = DBUtil.getEMF().createEntityManager();
        String q = "SELECT a FROM Agents a";
        TypedQuery<Agents> tq = em.createQuery(q, Agents.class);

        List<Agents> list;
        try {
            list = tq.getResultList();
            if(list ==null|| list.isEmpty())
               list = null;
       
        }  finally {
            em.close();
        }
        return list;
    }
    
    public static Agents getAgentByID(Integer id) {
        EntityManager em = DBUtil.getEMF().createEntityManager();
        Agents agent = null;
        try {
            String q = "SELECT a FROM Agents a WHERE a.agentId = " + id;
            TypedQuery<Agents> tq = em.createQuery(q, Agents.class);
            agent = tq.getSingleResult();
        } catch (Exception ex) {
            System.out.println(ex);
        } finally {
            em.clear();
        }
        return agent;
  

    }
    
  
    

    
}
