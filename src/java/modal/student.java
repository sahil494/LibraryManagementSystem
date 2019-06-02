
package modal;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class student {
    @Id
    private String sid;
    private String sname;
    private String branch;
    private String email;

    public String getSid() {
        return sid;
    }

    public void setSid(String sid) {
        this.sid = sid;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    public boolean eqauls(Object o)
    {
        student s = (student)o;
        if(sid.equals(s.getSid()) && sname.equals(s.getSname()) && branch.equals(s.getBranch()) && email.equals(s.getEmail()))
        {
            return true;
        }
        else 
        {
            return false;
        }
    }
}
