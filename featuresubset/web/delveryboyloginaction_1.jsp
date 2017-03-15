
    <%
String uid=request.getParameter("did");
String psw=request.getParameter("psw");

org.hibernate.SessionFactory sf=new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
org.hibernate.Session s=sf.openSession();
org.hibernate.Transaction t=s.beginTransaction();
foreign.DelivBoy sa=new foreign.DelivBoy();
 org.hibernate.Query q = s.createQuery("From DelivBoy where dbid='" + uid + "'");

java.util.ArrayList al=new java.util.ArrayList();
al=(java.util.ArrayList)q.list();
java.util.Iterator it=al.iterator();
if(it.hasNext())
       {
    sa=(foreign.DelivBoy)it.next();
    if(psw.equals(sa.getPsw()))
               {
        session.setAttribute("sdid",uid);
        response.sendRedirect("deliveyboyhome.jsp");
    }else
               {
      response.sendRedirect("delveryboylogin.jsp?msg=Wrong Password");
    }
}else
       {
      response.sendRedirect("delveryboylogin.jsp?msg=Not Registerd With "+uid);
}


%>
      