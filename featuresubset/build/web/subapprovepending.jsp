<%
                 String uid=session.getAttribute("subaid").toString();        
             %>
<%@include file="subhead.jsp" %>

<div id="content">


    <div id="content_top"></div>
    <div id="content_main">

        <p>&nbsp;</p>
        <p>&nbsp;</p>  
        <script language="javascript" src="date-picker.js" type="text/javascript"></script>
       <H1>Product Pending</h1>
       <br>
 
                    <%
                    String uid1=request.getParameter("uid");
                     int tid=Integer.parseInt(request.getParameter("tid"));
                   
            org.hibernate.SessionFactory sf=new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
            org.hibernate.Session s=sf.openSession();
            org.hibernate.Transaction t=s.beginTransaction();
            foreign.BookingProductData sa=new foreign.BookingProductData();
  
 org.hibernate.Query q = s.createQuery("From BookingProductData where uid='" + uid1 + "' and tid='"+tid+"'");

java.util.ArrayList al=new java.util.ArrayList();
al=(java.util.ArrayList)q.list();
java.util.Iterator it=al.iterator();
if(it.hasNext())
       {
    sa=(foreign.BookingProductData)it.next();
  String tdate=sa.getDateOfBooking();
  %>
  
  <form name="pendingform" action="subpending.jsp" method="post"/> 
  <table><tr><td>The Current Booking Date is:</td><td><font color="blue"><b><%=tdate%><input type="hidden" name="cdate" value="<%=tdate%>"/></b></font></td></tr>
      <tr><td></td><td><input type="hidden" name="uid" value="<%=uid1%>"/></td></tr>
      <tr><td></td><td><input type="hidden" name="tid" value="<%=tid%>"/></td></tr>
      <tr><td> Now Select Pending Date</td> <td><input type="text" name="pendate" placeholder="YYYY-MM-DD" class="required" />
                                <a href="javascript: show_cal('document.pendingform.pendate.value')">Pick Date</a>
                            </td></tr>
       
       
       
       <%
                      } 
          //response.sendRedirect("subaminhome.jsp?n=<h2><b><font color='green'>The New Order Has Been Pending Upto</b></font></h2>");
            
        
        %>
        <tr><td></td><td><input type="submit" value="Pending"/></td></tr></table></form>
        <p>&nbsp;</p>
    </div>
    <div id="content_bottom"></div>

    <div id="footer"><h3><a href="#"></a></h3></div>
</div>
<%@include file="foot.jsp" %>
