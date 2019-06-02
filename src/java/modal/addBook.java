
package modal;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class addBook {
   @Id
   private String bookId;
   private String bName;
   private String aname;
   private String quantity;
    public String getBookId() {
        return bookId;
    }

    public void setBookId(String bookId) {
        this.bookId = bookId;
    }

    public String getbName() {
        return bName;
    }

    public void setbName(String bName) {
        this.bName = bName;
    }

    public String getAname() {
        return aname;
    }

    public void setAname(String aname) {
        this.aname = aname;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }
     public boolean equals(Object o)
    {
        addBook u =(addBook) o;
        if(bookId.equals(u.getBookId()) && bName.equals(u.getbName()) && aname.equals(u.getAname()) && quantity.equals(u.getQuantity()))
        {
            return true;
        }
        else
        {
            return false;
        }
    }
}
