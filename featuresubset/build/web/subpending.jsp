<%
                 String uid=session.getAttribute("subaid").toString();        
             %>
<%@include file="subhead.jsp" %>

<div id="content">


    <div id="content_top"></div>
    <div id="content_main">

        <p>&nbsp;</p>
        <p>&nbsp;</p>  
 
                    <%
                    try
                                       {
                        String cdate=request.getParameter("cdate");
                    String uid1=request.getParameter("uid");
                    String pendate=request.getParameter("pendate");
                    int tid=Integer.parseInt(request.getParameter("tid"));
                
                   
            org.hibernate.SessionFactory sf=new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
            org.hibernate.Session s=sf.openSession();
            org.hibernate.Transaction t=s.beginTransaction();
            foreign.BookingProductData sa=new foreign.BookingProductData();
                //int newpendate=pendate-cdate;
            org.hibernate.Query q=s.createQuery("update BookingProductData set status= :approve, date_of_booking= :pendate where uid= :id and tid= :st ");
            q.setParameter("approve", "PENDING");
            q.setParameter("st", tid);
            q.setParameter("pendate", pendate);
            q.setParameter("id", uid1);
     int i=q.executeUpdate();
     t.commit();
     if(i>0)
                 {
          response.sendRedirect("subaminhome.jsp?n=<h2><b><font color='green'>The New Order Has Been Pending Upto</b></font></h2>&pendate="+pendate);
            }}catch(Exception er)
                                       {
                out.println(er);
            }
        
        %>
      <p>&nbsp;</p>
    </div>
    <div id="content_bottom"></div>

    <div id="footer"><h3><a href="#"></a></h3></div>
</div>
<%@include file="foot.jsp" %>
