

<%
    try {
        String uid1 = request.getParameter("uid");
        String gid = request.getParameter("gid");
        String qua = request.getParameter("qua");
        int bid = Integer.parseInt(request.getParameter("bid"));
        int qua1 = Integer.parseInt(qua.toString());
        //int qua1=0;
        // qua1=qua;
        int qua2 = qua1 - 1;
        org.hibernate.SessionFactory sf = new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
        org.hibernate.Session s = sf.openSession();
        org.hibernate.Transaction t = s.beginTransaction();
        foreign.BookingProductData sa = new foreign.BookingProductData();



        org.hibernate.Query q = s.createQuery("update BookingProductData set status='APPROVED' where tid=" + bid + "");


        int i = q.executeUpdate();
        t.commit();
        s.close();
        if (i > 0) {
            org.hibernate.SessionFactory sf1 = new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
            org.hibernate.Session s1 = sf1.openSession();
            org.hibernate.Transaction t1 = s1.beginTransaction();
            foreign.GoodsData fg1 = new foreign.GoodsData();
            org.hibernate.Query q11 = s1.createQuery("From GoodsData where pid=" + gid + "");
            //q.setParameter("book", "BOOK");
            java.util.ArrayList al1 = new java.util.ArrayList();
            al1 = (java.util.ArrayList) q11.list();
            java.util.Iterator it1 = al1.iterator();
            if (it1.hasNext()) {
                fg1 = (foreign.GoodsData) it1.next();
                int tqua = fg1.getAvailableQuantity();
                int tquaa = tqua - 1;


                org.hibernate.SessionFactory sf11 = new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
                org.hibernate.Session s11 = sf11.openSession();
                org.hibernate.Transaction t11 = s11.beginTransaction();
                org.hibernate.Query q1 = s11.createQuery("update GoodsData set availableQuantity=" + tquaa + " where pid=" + gid + "");
                int sd = q1.executeUpdate();
                t11.commit();
                s11.close();
                if (sd > 0) {
                    response.sendRedirect("subaminhome.jsp?msg=<h2><b><font color='green'>The New Order Has Been Approved</b></font></h2>");
                }



            }
        }

    } catch (Exception ee) {
        out.print(ee);
    }
%>