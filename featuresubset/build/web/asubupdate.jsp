
<%
    String uid = session.getAttribute("said").toString();
%>

<%
    String subname = request.getParameter("subname");
    String sublid = request.getParameter("sublid");

    String subadd = request.getParameter("subbranch");
    String subbranch = request.getParameter("subadd");
    String subphno = request.getParameter("subphno");
    org.hibernate.SessionFactory sf = new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
    org.hibernate.Session s = sf.openSession();
    org.hibernate.Transaction t = s.beginTransaction();
    foreign.Subadmin sa = new foreign.Subadmin();

    org.hibernate.Query q;
    q = s.createQuery("update Subadmin set name='" + subname + "', address='" + subadd + "', branch='" + subbranch + "', phno='" + subphno + "' where s_loginid= :lid");
          q.setParameter("lid", sublid);
    int i = q.executeUpdate();
    t.commit();
    if (i > 0) {
        response.sendRedirect("adminhome.jsp?e=<h2><b><font color='green'>The Sub-Admin Data Has Been Updated Successfully</b></font></h2>");
    }



%>