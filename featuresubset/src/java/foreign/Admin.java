package foreign;
// Generated Mar 24, 2013 9:34:32 PM by Hibernate Tools 3.2.1.GA



/**
 * Admin generated by hbm2java
 */
public class Admin  implements java.io.Serializable {


     private String loginid;
     private String password;

    public Admin() {
    }

    public Admin(String loginid, String password) {
       this.loginid = loginid;
       this.password = password;
    }
   
    public String getLoginid() {
        return this.loginid;
    }
    
    public void setLoginid(String loginid) {
        this.loginid = loginid;
    }
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }




}


