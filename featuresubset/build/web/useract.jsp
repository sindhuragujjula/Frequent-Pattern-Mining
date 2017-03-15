
       <%
String uid=request.getParameter("uid");
String psw=request.getParameter("psw");

org.hibernate.SessionFactory sf=new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
org.hibernate.Session s=sf.openSession();
org.hibernate.Transaction t=s.beginTransaction();
foreign.UserData ud=new foreign.UserData();
 org.hibernate.Query q = s.createQuery("From UserData where uid='" + uid + "'");

java.util.ArrayList al=new java.util.ArrayList();
al=(java.util.ArrayList)q.list();
java.util.Iterator it=al.iterator();
if(it.hasNext())
       {
    ud=(foreign.UserData)it.next();
    if(psw.equals(ud.getPassword()))
               {
        session.setAttribute("suid",uid);
        response.sendRedirect("userhome.jsp");
    }else
               {
         response.sendRedirect("userlogin.jsp?msg=Wrong Password");
    }
}else
       {
      response.sendRedirect("userlogin.jsp?msg=Not Registerd With "+uid);
}


%>
      