
    <%
    
    try{
        
    org.hibernate.SessionFactory sf=new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
org.hibernate.Session s=sf.openSession();
org.hibernate.Transaction tx=s.beginTransaction();

String uid=request.getParameter("uid");
String psw=request.getParameter("psw");
String uname=request.getParameter("un");
String gen=request.getParameter("gen");
String add=request.getParameter("address");
String phno=request.getParameter("phone");


foreign.UserData fu=new foreign.UserData();
fu.setUid(uid);
fu.setUName(uname);
fu.setPassword(psw);
fu.setPhone(phno);
fu.setGender(gen);
fu.setAddress(add);

s.save(fu);
tx.commit();

 response.sendRedirect("userreg.jsp?msg=<h2><b><font color='green'>You have Registered Successfully</b></font></h2>");

    }catch(Exception e){
        out.print(e);
}
%>
 