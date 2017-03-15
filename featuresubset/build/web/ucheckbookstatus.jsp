<%@include file="uhead.jsp" %>

<div id="content">


    <div id="content_top"></div>
    <div id="content_main">

        <p>&nbsp;</p>
        <p>&nbsp;</p> 
                   <%
                 String uid=session.getAttribute("suid").toString();        
             %>
  
       <H1>The List of  Product Details</h1>
 
                    <%
        String suid=session.getAttribute("suid").toString();
            org.hibernate.SessionFactory sf=new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
            org.hibernate.Session s=sf.openSession();
            org.hibernate.Transaction t=s.beginTransaction();
            foreign.BookingProductData sa=new foreign.BookingProductData();
                
            org.hibernate.Query q=s.createQuery("From BookingProductData where uid='"+suid+"'");
           // q.setParameter("id", cid);
            java.util.ArrayList al=new java.util.ArrayList();
            al=(java.util.ArrayList)q.list();
            java.util.Iterator it = al.iterator();
                %>
           <table border="2" cellpadding="5">
                    <tr>
                       
                        <th>Product Type</th>
                        <th>Delivery Address</th>
                         <th>Date of Booking</th>
                         <th>Status</th>
                          
                   
                    </tr>
                            <%
            
            while (it.hasNext()) 
            {
              sa=(foreign.BookingProductData)it.next();
             
                %>
        
                <tr>
                    <td><%= sa.getPid() %></td>
                              <td><%= sa.getDeliveryAddress() %></td>
                              <td><%= sa.getDateOfBooking() %></td>
                              <td>
                                  <%= sa.getStatus() %>
                              </td>
                 
                </tr>
                <%
                
            }
        
        %>
            </table>
      
    </div>
    <div id="content_bottom"></div>

    <div id="footer"><h3><a href="#"></a></h3></div>
</div>
<%@include file="foot.jsp" %>
