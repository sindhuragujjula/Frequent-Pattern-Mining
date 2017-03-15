 <%@include file="dhead.jsp" %>
<script type="text/javascript" src="date-picker.js"></script>
<div id="content">


    <div id="content_top"></div>
    <div id="content_main">

        <p>&nbsp;</p>
        <p>&nbsp;</p> 
                   <%
                 String uid=session.getAttribute("sdid").toString();        
             %>

       <H1>The List of Customer Approved Details</h1>
 
                    <%
      try{      org.hibernate.SessionFactory sf=new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
            org.hibernate.Session s=sf.openSession();
            org.hibernate.Transaction t=s.beginTransaction();
            foreign.BookingProductData sa=new foreign.BookingProductData();
                
            org.hibernate.Query q=s.createQuery("From BookingProductData where status= :approve");
            q.setParameter("approve", "APPROVED");
            java.util.ArrayList al=new java.util.ArrayList();
            al=(java.util.ArrayList)q.list();
            java.util.Iterator it = al.iterator();
                %>
           <table border="2" cellpadding="5">
                    <tr>
                        <th>Product Id</th>
                        <th>User Id</th>
                         <th>Date of Booking</th>
                          <th>Delivery Address</th>
                          <th>No of Days of Delivery from Booking</th>
                            
                   
                    </tr>
                            <%
            
            while (it.hasNext()) 
            {
              sa=(foreign.BookingProductData)it.next();
            int ttid=sa.getTid();
                %>
        
                <tr>
                            <td><%= sa.getPid()%></td>
                              <td><%=sa.getUid()%></td>
                              <td><%=sa.getDateOfBooking()%></td>
                              <td><%=sa.getDeliveryAddress()%></td>
                              <td><%=sa.getNoOfDaysOfDeliveryFromBooking()%></td>
                              <td><a href="ddeliverpro.jsp?prid=<%= sa.getPid()%>&tid=<%=ttid%>&db=<%=sa.getDateOfBooking()%>">Deliver This Product</a></td>
                </tr>
                <%
                
            }
                       }catch(Exception ee){ out.print(ee);
                        }
        
        %>
            </table>
    </div>
    <div id="content_bottom"></div>

    <div id="footer"><h3><a href="#"></a></h3></div>
</div>
<%@include file="foot.jsp" %>
