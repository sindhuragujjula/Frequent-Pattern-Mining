 <%
                 String uid=session.getAttribute("subaid").toString();        
             %>
 
 
                    <%
                    String dbid=request.getParameter("dbid");
                    String dbname=request.getParameter("dbname");
                    String did=request.getParameter("loc");
                    String coverage=request.getParameter("coverage");
                    String phno=request.getParameter("phno");
                    String capacity=request.getParameter("capacity");
            org.hibernate.SessionFactory sf=new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
            org.hibernate.Session s=sf.openSession();
            org.hibernate.Transaction t=s.beginTransaction();
            foreign.DelivBoy sa=new foreign.DelivBoy();
                
            org.hibernate.Query q=s.createQuery("update DelivBoy set dname= :name, location= :loc, area_of_coverage= :area, phone= :phone, daily_delv_goods_capacity= :cap where dbid= :id ");
            q.setParameter("name", dbname);
            q.setParameter("loc", did);
            q.setParameter("area", coverage);
            q.setParameter("phone", phno);
            q.setParameter("cap", capacity);
            q.setParameter("id", dbid);
     int i=q.executeUpdate();
     t.commit();
     if(i>0)
                 {
          response.sendRedirect("subaminhome.jsp?h=<h2><b><font color='green'>The Delivery Boy Details are Updated Successfully</b></font></h2>");
            }
        
        %>
    




