package foreign;
// Generated Mar 24, 2013 9:34:32 PM by Hibernate Tools 3.2.1.GA



/**
 * CategoryData generated by hbm2java
 */
public class CategoryData  implements java.io.Serializable {


     private Integer cid;
     private String categoryName;

    public CategoryData() {
    }

    public CategoryData(String categoryName) {
       this.categoryName = categoryName;
    }
   
    public Integer getCid() {
        return this.cid;
    }
    
    public void setCid(Integer cid) {
        this.cid = cid;
    }
    public String getCategoryName() {
        return this.categoryName;
    }
    
    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }




}


