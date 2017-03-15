<%-- 
    Document   : addpract
    Created on : May 17, 2011, 4:27:00 AM
    Author     : SattvaQ Pvt Ltd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <%
    
    try{
        
    org.hibernate.SessionFactory sf=new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
org.hibernate.Session s=sf.openSession();
org.hibernate.Transaction tx=s.beginTransaction();


String nm=request.getParameter("catname");


foreign.CategoryData gd=new foreign.CategoryData(nm);

org.hibernate.Query q=s.createQuery("from CategoryData where category_name='"+nm+"' ");
    // q.setParameter("id", did);
            java.util.ArrayList al=new java.util.ArrayList();
            al=(java.util.ArrayList)q.list();
            java.util.Iterator it = al.iterator();

if(it.hasNext())
          {
   gd=(foreign.CategoryData)it.next();
  // String cname=gd.getCategoryName();
  
       response.sendRedirect("subgrpspro.jsp?pr=This category name already existed");
}
            
 else
       {
s.save(gd);
tx.commit();

response.sendRedirect("subaminhome.jsp?l=<h2><b><font color='green'>The Category Has Been Registered Successfully</b></font></h2>");

    
     }
                        }catch(Exception e){
        out.print(e);
}
%>
    </body>
</html>
