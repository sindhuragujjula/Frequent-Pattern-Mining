
    <%
String uid=request.getParameter("sid");
String psw=request.getParameter("psw");

org.hibernate.SessionFactory sf=new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
org.hibernate.Session s=sf.openSession();
org.hibernate.Transaction t=s.beginTransaction();
foreign.Subadmin sa=new foreign.Subadmin();
 org.hibernate.Query q = s.createQuery("From Subadmin where s_loginid='" + uid + "'");

java.util.ArrayList al=new java.util.ArrayList();
al=(java.util.ArrayList)q.list();
java.util.Iterator it=al.iterator();
if(it.hasNext())
       {
    sa=(foreign.Subadmin)it.next();
    if(psw.equals(sa.getPassword()))
               {
        session.setAttribute("subaid",uid);
        response.sendRedirect("subaminhome.jsp");
    }else
               {
        out.println("Wrong Password");
         response.sendRedirect("sublogin.jsp?msg=Wrong Password");
    }
}else
       {
        out.println("Wrong Id");
         response.sendRedirect("sublogin.jsp?msg=Not Registerd With "+uid);
}


%>
