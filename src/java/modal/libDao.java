
package modal;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class libDao {
      public boolean check(lib u)
    {
        lib db = null;
        Configuration cf = new Configuration();
        cf.configure();
        SessionFactory sf = cf.buildSessionFactory();
        Session session =sf.openSession();
        Transaction tx = session.beginTransaction();
        db = (lib)session.get(lib.class,u.getName());
        
        tx.commit();
        session.close();
        sf.close();
        
        if(db==null)
        {
            return false;
        }
        else 
        {
          return u.equals(db);
        }
    }
}
