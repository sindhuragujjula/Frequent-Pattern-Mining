<%
                 String uid=session.getAttribute("subaid").toString();        
             %>
                    <%
                    String dbid=request.getParameter("did");
                   
            org.hibernate.SessionFactory sf=new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
            org.hibernate.Session s=sf.openSession();
            org.hibernate.Transaction t=s.beginTransaction();
            foreign.DelivBoy sa=new foreign.DelivBoy();
                
            org.hibernate.Query q=s.createQuery("delete from DelivBoy where dbid= :id ");
          
            q.setParameter("id", dbid);
     int i=q.executeUpdate();
     t.commit();
     if(i>0)
                 {
          response.sendRedirect("subaminhome.jsp?i=<h2><b><font color='green'>The Delivery Boy Has Been Deleted Successfully</b></font></h2>");
            }
        
        %>