
<%

   // try {

        org.hibernate.SessionFactory sf = new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
        org.hibernate.Session s = sf.openSession();
        org.hibernate.Transaction tx = s.beginTransaction();
        String sadminid = session.getAttribute("subaid").toString();
        String dbid = request.getParameter("dbid");
        String psw = request.getParameter("psw");
        String na = request.getParameter("na");

        String loc = request.getParameter("loc");
    int locid = Integer.parseInt("0");
        String area = request.getParameter("area");
        String phno = request.getParameter("phno");
        int capacity = Integer.parseInt(request.getParameter("capacity"));


        foreign.DelivBoy sa = new foreign.DelivBoy(dbid, psw, sadminid, na, loc, locid, area, phno, capacity);



        s.save(sa);
        tx.commit();
        response.sendRedirect("subaminhome.jsp?g=<h2><b><font color='green'>Delivery Boy Has Been Registered Successfully</b></font></h2>");

   // } catch (Exception e) { out.print(e);}
       
    


%>    