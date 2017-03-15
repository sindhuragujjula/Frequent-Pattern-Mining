
                    <%
            try{        String pid=request.getParameter("pid");
                  
            org.hibernate.SessionFactory sf=new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
            org.hibernate.Session s=sf.openSession();
            org.hibernate.Transaction t=s.beginTransaction();
            foreign.GoodsData sa=new foreign.GoodsData();
                
            org.hibernate.Query q=s.createQuery("delete from GoodsData where pid="+pid+"");
   
  
     int i=q.executeUpdate();
     t.commit();
     if(i>0)
                 {
         
           org.hibernate.SessionFactory sf1=new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
            org.hibernate.Session s1=sf1.openSession();
            org.hibernate.Transaction t1=s1.beginTransaction();
            foreign.ImageUpdate sa1=new foreign.ImageUpdate();
                
            org.hibernate.Query q1=s1.createQuery("delete from ImageUpdate where pid="+pid+"");
   
  
     int i1=q1.executeUpdate();
     t1.commit();
     if(i1>0)
                 {
         
      response.sendRedirect("adminhome.jsp?d=<h2><b><font color='green'>The Product Has Been Deleted Successfully</b></font></h2>");
             } else{
    response.sendRedirect("adminhome.jsp?d=<h2><b><font color='green'>The Product Has Been Deleted Successfully</b></font></h2>");         
             }   }
        
}catch(Exception eee){ out.print(eee);  } 
                    %>