
    <%
    
    try{
        
org.hibernate.SessionFactory sf=new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
org.hibernate.Session s=sf.openSession();
org.hibernate.Transaction tx=s.beginTransaction();

String pid=request.getParameter("fbid");
String nm=request.getParameter("dbid");
String av=request.getParameter("fb");
int fbstarno=Integer.parseInt(request.getParameter("fbstarno"));
java.util.Date d=new java.util.Date();
String cdate=d.toString();
String status="OK";
String uid=session.getAttribute("suid").toString();

foreign.UserFeedback gd=new foreign.UserFeedback(pid, uid, nm, av, fbstarno, cdate, status);


s.save(gd);
tx.commit();

response.sendRedirect("userhome.jsp?k=<h2><b><font color='green'>The Feedback Has Been Sent Successfully</b></font></h2>");

    }catch(Exception e){
        out.print(e);
}
%>
    