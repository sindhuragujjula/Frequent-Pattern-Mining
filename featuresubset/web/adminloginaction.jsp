
    <%
String uid=request.getParameter("aid");
String psw=request.getParameter("psw");

org.hibernate.SessionFactory sf=new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
org.hibernate.Session s=sf.openSession();
org.hibernate.Transaction t=s.beginTransaction();
foreign.Admin fu=new foreign.Admin();
 org.hibernate.Query q = s.createQuery("From Admin where loginid='" + uid + "'");

java.util.ArrayList al=new java.util.ArrayList();
al=(java.util.ArrayList)q.list();
java.util.Iterator it=al.iterator();
if(it.hasNext())
       {
    fu=(foreign.Admin)it.next();
    if(psw.equals(fu.getPassword()))
               {
        session.setAttribute("said",uid);
        response.sendRedirect("adminhome.jsp");
    }else
               {
        out.println("");
        response.sendRedirect("adminlogin.jsp?msg=Wrong Password");
    }
}else
       {
        out.println("");
        response.sendRedirect("adminlogin.jsp?msg=Wrong Mail Id");
}


%>