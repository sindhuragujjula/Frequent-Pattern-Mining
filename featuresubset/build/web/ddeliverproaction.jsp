

<%

    try {


        org.hibernate.SessionFactory sf2 = new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
        org.hibernate.Session s2 = sf2.openSession();
        org.hibernate.Transaction tx2 = s2.beginTransaction();

        String dbid = session.getAttribute("sdid").toString();
        String pid = request.getParameter("pid");
        String adate = request.getParameter("adate");
        String ddate = request.getParameter("ddate");

        org.hibernate.Query ttt = s2.createQuery("update BookingProductData set status='DELIVERED' where tid=" + request.getParameter("tid") + "");
        //foreign.BookingProductData
        int tq = ttt.executeUpdate();
        tx2.commit();
        if (tq > 0) {
            org.hibernate.SessionFactory sf = new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
            org.hibernate.Session s = sf.openSession();
            org.hibernate.Transaction tx = s.beginTransaction();

//int tid=Integer.parseInt(request.getParameter("tid"));


            foreign.Status gd = new foreign.Status();

            gd.setSNo(0);
            gd.setDbid(dbid);
            gd.setDateOfAllocation(adate);
            gd.setDateOfDelivery(ddate);
            gd.setTid(pid);
            s.save(gd);
            tx.commit();

            response.sendRedirect("deliveyboyhome.jsp?m=<h2><b><font color='green'>You have Deliver The Product Successfully</b></font></h2>");
        }


    } catch (Exception e) {
        out.print(e);
    }
%>