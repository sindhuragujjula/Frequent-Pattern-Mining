<%-- 
    Document   : addpract
    Created on : May 17, 2011, 4:27:00 AM
    Author     : SattvaQ Pvt Ltd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <%
    
    try{
        
    org.hibernate.SessionFactory sf=new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
org.hibernate.Session s=sf.openSession();
org.hibernate.Transaction tx=s.beginTransaction();
String uid=session.getAttribute("suid").toString();
String pid=request.getParameter("pid");
String bookdate=request.getParameter("bookdate");
String dadd=request.getParameter("dadd");
int nodays=Integer.parseInt(request.getParameter("nodays"));
String status="BOOK";

foreign.BookingProductData gd=new foreign.BookingProductData(pid, uid, bookdate, status, dadd, nodays);


s.save(gd);
tx.commit();

response.sendRedirect("userhome.jsp?m=<h2><b><font color='green'>You have Booked The Product Successfully</b></font></h2>");

    }catch(Exception e){
        out.print(e);
}
%>
    </body>
</html>
