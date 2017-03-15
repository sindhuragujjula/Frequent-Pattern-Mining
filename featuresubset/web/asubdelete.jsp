
 
                    <%
                   
                    String sublid=request.getParameter("lid");
                 
            org.hibernate.SessionFactory sf=new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
            org.hibernate.Session s=sf.openSession();
            org.hibernate.Transaction t=s.beginTransaction();
            foreign.Subadmin sa=new foreign.Subadmin();
                
            org.hibernate.Query q=s.createQuery("delete from Subadmin where s_loginid= :lid");
          q.setParameter("lid", sublid);
            int i=q.executeUpdate();
            t.commit();
            if(i>0)
                               {
                response.sendRedirect("adminhome.jsp?f=<h2><b><font color='green'>The Sub-Admin Deleted Successfully</b></font></h2>");
            }
       
            
        
        %>
       