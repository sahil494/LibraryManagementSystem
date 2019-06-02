
package modal;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class addBookDao {
    public boolean add(addBook a)
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
    public boolean del(String bid,String bt)
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
             String sql = "delete from addBook where bookId='"+bid+"' and bName='"+bt+"'";
            Query query = session1.createQuery(sql);
           int i= query.executeUpdate();
            tx.commit();
           if(i!=0)
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
