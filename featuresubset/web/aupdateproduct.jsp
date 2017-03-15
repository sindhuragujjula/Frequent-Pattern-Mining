
                   <%
                 String uid=session.getAttribute("said").toString();        
             %>
  
                    <%
                    String pid=request.getParameter("pid");
                    String pname=request.getParameter("prname");
                    String up=request.getParameter("up");
                    String avai=request.getParameter("avai");
                    String cid=request.getParameter("cid");
            org.hibernate.SessionFactory sf=new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
            org.hibernate.Session s=sf.openSession();
            org.hibernate.Transaction t=s.beginTransaction();
            foreign.GoodsData sa=new foreign.GoodsData();
                
            org.hibernate.Query q=s.createQuery("update GoodsData set product_name='"+pname+"', unit_price='"+up+"', available_quantity='"+avai+"', cid='"+cid+"' where pid='"+pid+"'");
   
     int i=q.executeUpdate();
     t.commit();
     if(i>0)
                 {
      response.sendRedirect("adminhome.jsp?c=<h2><b><font color='green'>The Product Has Been Updated Successfully</b></font></h2>");
            }
        
        %>