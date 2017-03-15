
        <h1>Foreign Fighters Tracking Tool</h1>
                   <%
                 String uid=session.getAttribute("said").toString();        
             %>

     
           <%
          
    try{
        
    org.hibernate.SessionFactory sf=new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
org.hibernate.Session s=sf.openSession();
org.hibernate.Transaction tx=s.beginTransaction();
String sid=request.getParameter("id");
String sname=request.getParameter("nm");
String psw=request.getParameter("psw");

String branch=request.getParameter("branch");
String add1=request.getParameter("add");
String phone=request.getParameter("phone");


foreign.Subadmin sa=new foreign.Subadmin();
sa.setAddress(add1);
sa.setBranch(branch);
sa.setName(sname);
sa.setPassword(psw);
sa.setPhno(phone);
sa.setSLoginid(sid);


s.save(sa);
tx.commit();
response.sendRedirect("adminhome.jsp?a=<h2><b><font color='green'>Sub-Admin Has Been Registered Successfully</b></font></h2>");

    }catch(Exception e){
        out.print(e);
}
          
          
%>    
 