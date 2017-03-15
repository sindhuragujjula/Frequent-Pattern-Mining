<%@include file="subhead.jsp" %>

<div id="content">


    <div id="content_top"></div>
    <div id="content_main">

        <p>&nbsp;</p>
        <p>&nbsp;</p> <%
                 String uid=session.getAttribute("subaid").toString();        
             %>
 
       <H1>The List of New Orders Details</h1>
 
                    <%
                   //String uid1=session.getAttribute("suid").toString();
            org.hibernate.SessionFactory sf=new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
            org.hibernate.Session s=sf.openSession();
            org.hibernate.Transaction t=s.beginTransaction();
            foreign.BookingProductData sa=new foreign.BookingProductData();
                
            org.hibernate.Query q=s.createQuery("From BookingProductData where status= :book");
            q.setParameter("book", "BOOK");
            java.util.ArrayList al=new java.util.ArrayList();
            al=(java.util.ArrayList)q.list();
            java.util.Iterator it = al.iterator();
            
              %>
           <table border="1" cellpadding="5">
                    <tr>
                        <th>Product Id</th>
                        <th>User Id</th>
                         <th>Date of Booking</th>
                          <th>Delivery Address</th>
                           <th>No of Days of Delivery from Booking</th>
                            
                           <th>Available Quantity</th>                   
                    </tr>
                            <%
            
            while (it.hasNext()) 
            {
              sa=(foreign.BookingProductData)it.next();
            foreign.GoodsData fg=new foreign.GoodsData();
            org.hibernate.Query q1=s.createQuery("From GoodsData where productName='"+sa.getPid()+"'");
            //q.setParameter("book", "BOOK");
            java.util.ArrayList al1=new java.util.ArrayList();
            al1=(java.util.ArrayList)q1.list();
            java.util.Iterator it1 = al1.iterator();
            if(it1.hasNext())
                               {
                fg=(foreign.GoodsData)it1.next();
            
            int id=fg.getPid();
            
            
              
            
             int ttid=sa.getTid();
                %>
        
                <tr>
                    <td><%= sa.getPid()%></td>
                              <td><%=sa.getUid()%></td>
                              <td><%=sa.getDateOfBooking()%></td>
                              <td><%=sa.getDeliveryAddress()%></td>
                              <td><%=sa.getNoOfDaysOfDeliveryFromBooking()%></td>
                              <td><%=fg.getAvailableQuantity()%> </td>
                              <td><a href="subapprove.jsp?bid=<%= sa.getTid() %>&uid=<%=sa.getUid()%>&tid=<%=ttid%>&qua=<%=fg.getAvailableQuantity()%>&gid=<%=id%>">Approve Order</a></td>
                  <td><a href="subapprovepending.jsp?uid=<%=sa.getUid()%>&tid=<%=ttid%>">Approve Pending</a></td>   
                </tr>
                <%
                
            }}
        
        %>
            </table>
        <p>&nbsp;</p>
    </div>
    <div id="content_bottom"></div>

    <div id="footer"><h3><a href="#"></a></h3></div>
</div>
<%@include file="foot.jsp" %>
