 <%@include file="subhead.jsp" %>
<script type="text/javascript" src="date-picker.js"></script>
<div id="content">


    <div id="content_top"></div>
    <div id="content_main">

        <p>&nbsp;</p>
        <p>&nbsp;</p> 
                   <%
                 String uid=session.getAttribute("subaid").toString();        
             %>

       <H1>The List of Delivery Product Details</h1>
 
                    <%
        String suid=session.getAttribute("subaid").toString();
            org.hibernate.SessionFactory sf=new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
            org.hibernate.Session s=sf.openSession();
            org.hibernate.Transaction t=s.beginTransaction();
            foreign.Status sa=new foreign.Status();
                
            org.hibernate.Query q=s.createQuery("From Status");
           // q.setParameter("id", cid);
            java.util.ArrayList al=new java.util.ArrayList();
            al=(java.util.ArrayList)q.list();
            java.util.Iterator it = al.iterator();
                %>
           <table border="2" cellpadding="5">
                    <tr>
                        <th>SNO</th>
                        <th>Product Name</th>
                        <th>Delivery Boy Id</th>
                         <th>Date of Delivery</th>
                          
                   
                    </tr>
                            <%
            
            while (it.hasNext()) 
            {
              sa=(foreign.Status)it.next();
              int tsno=sa.getSNo();
              String tpid=sa.getTid();
              String tcid=sa.getDbid();
              String tdate=sa.getDateOfDelivery();
                %>
        
                <tr>
                    <td><%= tsno%></td>
                              <td><%=tpid%></td>
                              <td><%=tcid%></td>
                                 <td><%=tdate%></td>
                 
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
