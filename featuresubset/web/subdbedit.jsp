<%
                 String uid=session.getAttribute("subaid").toString();        
             %>
   <%@include file="subhead.jsp" %>

<div id="content">


    <div id="content_top"></div>
    <div id="content_main">

        <p>&nbsp;</p>
        <p>&nbsp;</p>
       <H1>The List of  Delivery Boys Details</h1>
 
                    <%
                    String did=request.getParameter("did");
            org.hibernate.SessionFactory sf=new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
            org.hibernate.Session s=sf.openSession();
            org.hibernate.Transaction t=s.beginTransaction();
            foreign.DelivBoy sa=new foreign.DelivBoy();
                
            org.hibernate.Query q=s.createQuery("From DelivBoy where dbid= :id ");
                q.setParameter("id", did);
            java.util.ArrayList al=new java.util.ArrayList();
            al=(java.util.ArrayList)q.list();
            java.util.Iterator it = al.iterator();
                %>
                <form action="subdbupdate.jsp" method="post">
           <table border="0">
             
                            <%
            
            while (it.hasNext()) 
            {
              sa=(foreign.DelivBoy)it.next();
                %>
        
                <tr>
                    <td>Delivery Boy Id</td><td><%= sa.getDbid()%><input type="hidden" name="dbid" value="<%= sa.getDbid()%>" /></td> </tr>
                             <tr>
                                 <td>Name</td> <td><input type="text" name="dbname" value="<%=sa.getDname()%>" /></td> </tr>
                              <tr>
                    <td>Location</td><td><input type="text" name="loc" value="<%=sa.getLocation()%>" /></td> </tr>
                             <tr>
                    <td>Area of Coverage</td> <td><input type="text" name="coverage" value="<%=sa.getAreaOfCoverage()%>" /></td> </tr>
                             <tr>
                    <td>Phone Number</td> <td><input type="text" name="phno" value="<%=sa.getPhone()%>" /></td> </tr>
                                   <tr>
                    <td>Daily Deliver Goods Capacity</td>  <td><input type="text" name="capacity" value="<%=sa.getDailyDelvGoodsCapacity()%>" /></td>
                
                </tr>
                <%
                
            }
        
        %>
        <tr><td><input type="submit" value="Update" /></td></tr> 
           </table></form>
        <p>&nbsp;</p>
    </div>
    <div id="content_bottom"></div>

    <div id="footer"><h3><a href="#"></a></h3></div>
</div>
<%@include file="foot.jsp" %>