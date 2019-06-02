
package modal;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class studentDao {
    public boolean add(student a)
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
    public boolean check1(student u){
        
        boolean flag=false;
        Configuration cf = null;
        SessionFactory sf = null;
        Session session = null;
        try{
            
            cf = new Configuration();

            cf.configure("cfg/hibernate1.cfg.xml");

            sf = cf.buildSessionFactory();

            session =sf.openSession();

            Transaction tx = session.beginTransaction();
            
            Query query = session.createQuery("From student where sid= :u_name and sname= :pass");
            
            query.setParameter("u_name",u.getSid());
            
            query.setParameter("pass",u.getSname());
            
            ArrayList<student> ul = (ArrayList<student>)query.list();
            
            if(ul!=null && !ul.isEmpty()){
            
                flag=true;
            }
            else{
                flag=false;
            }
            tx.commit();

        }
        catch(Exception e1){
            flag=false;
            
            System.out.println("Error"+e1);
            
            e1.printStackTrace();
        }
        finally{
            
            session.close();

            sf.close();
        }

        return flag;
    }
    
    
       public List<student> getProfile(String rno){
         
         System.out.println("In dao"+rno);
         
         ArrayList<student> records=null;
         try {
       Configuration cf = new Configuration();
        cf.configure("cfg/hibernate1.cfg.xml");
        SessionFactory sf = cf.buildSessionFactory();
        Session session =sf.openSession();
        Transaction tx = session.beginTransaction();
        Query query = session.createQuery("From student where sid = '"+rno+"' ");
       
        records = (ArrayList<student>)query.list();
        
        tx.commit();
        session.close();
        sf.close();
            }
            catch(Exception e)
            {
                 e.printStackTrace(); 
            }
         return records;
     }

}

