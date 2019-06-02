
package modal;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class issueDao {
     public boolean add(issue a)
    {
           boolean flag=false;
        try {
       Configuration cf = new Configuration();
        cf.configure("cfg/hibernate1.cfg.xml");
        SessionFactory sf = cf.buildSessionFactory();
        Session session =sf.openSession();
        Transaction tx = session.beginTransaction();
        session.save(a);
        flag=true;
         tx.commit();
        session.close();
        sf.close();
        }
        catch(Exception e)
        {
         e.printStackTrace();   
        }
        
        return flag;
    }
     public boolean vapis(issue i)
     {
         boolean flag=false;
          try 
        {
            Configuration cf=new Configuration();
            cf.configure("cfg/hibernate1.cfg.xml");
            SessionFactory sf = cf.buildSessionFactory();
            Session session1 =sf.openSession();
            session1 =sf.openSession();
            Transaction tx = session1.beginTransaction();
             String sql = "delete from issue where bid='"+i.getBid()+"' and sid='"+i.getSid()+"' and sname='"+i.getSname()+"'";
            Query query = session1.createQuery(sql);
           int i1 = query.executeUpdate();
            tx.commit();
           if(i1!=0)
           {
               flag=true;
           }
        session1.close();
        sf.close();
        
        }
        catch(Exception e)
        {
             e.printStackTrace();
        }
         return flag;
     }
}
