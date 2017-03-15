<%@include file="subhead.jsp" %>

<div id="content">


    <div id="content_top"></div>
    <div id="content_main">

        <p>&nbsp;</p>
        <p>&nbsp;</p>
       <H1>The List of  Delivery Boys Details</h1>
 
                    <%
            org.hibernate.SessionFactory sf=new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
            org.hibernate.Session s=sf.openSession();
            org.hibernate.Transaction t=s.beginTransaction();
            foreign.DelivBoy sa=new foreign.DelivBoy();
                
            org.hibernate.Query q=s.createQuery("From DelivBoy ");
            java.util.ArrayList al=new java.util.ArrayList();
            al=(java.util.ArrayList)q.list();
            java.util.Iterator it = al.iterator();
                %>
           <table border="2" cellpadding="5">
                    <tr>
                        <th>Delivery Boy Id</th>
                        <th>Name</th>
                         <th>Location</th>
                          <th>Area of Coverage</th>
                           <th>Phone Number</th>
                            <th>Daily Deliver Goods Capacity</th>
                   
                    </tr>
                            <%
            
            while (it.hasNext()) 
            {
              sa=(foreign.DelivBoy)it.next();
                %>
        
                <tr>
                    <td><%= sa.getDbid()%></td>
                              <td><%=sa.getDname()%></td>
                              <td><%=sa.getLocation()%></td>
                              <td><%=sa.getAreaOfCoverage()%></td>
                              <td><%=sa.getPhone()%></td>
                              <td><%=sa.getDailyDelvGoodsCapacity()%></td>
                 <td><a href="subdbedit.jsp?did=<%= sa.getDbid()%>">Edit</a></td>
                  <td><a href="subdbdelete.jsp?did=<%= sa.getDbid()%>">Delete</a></td>   
                </tr>
                <%
                
            }
        
        %>
            </table>
        <p>&nbsp;</p>
    </div>
    <div id="content_bottom"></div>

    <div id="footer"><h3><a href="#"></a></h3></div>
</div>
<%@include file="foot.jsp" %>
