
package modal;

import java.util.ArrayList;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class userDao {
       public boolean check(user u)
    {
        user db = null;
        Configuration cf = new Configuration();
        cf.configure();
        SessionFactory sf = cf.buildSessionFactory();
        Session session =sf.openSession();
        Transaction tx = session.beginTransaction();
        db = (user)session.get(user.class,u.getName());
        
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
