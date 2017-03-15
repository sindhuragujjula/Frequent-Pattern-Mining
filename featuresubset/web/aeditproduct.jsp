<%@include file="ahead.jsp" %>

<div id="content">


    <div id="content_top"></div>
    <div id="content_main">

        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <h1>Foreign Freighters Tracking Tool</h1>
                   <%
                 String uid=session.getAttribute("said").toString();        
           
                    String pid=request.getParameter("pid");
            org.hibernate.SessionFactory sf=new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
            org.hibernate.Session s=sf.openSession();
            org.hibernate.Transaction t=s.beginTransaction();
            foreign.GoodsData sa=new foreign.GoodsData();
                
            org.hibernate.Query q=s.createQuery("From GoodsData where pid='"+pid+"'");
           // q.setParameter("id", pid);
            java.util.ArrayList al=new java.util.ArrayList();
            al=(java.util.ArrayList)q.list();
            java.util.Iterator it = al.iterator();
                %>
                    <form action="aupdateproduct.jsp" method="post">
           <table border="2" cellpadding="5">
           
              <%
            
            while (it.hasNext()) 
            {
              sa=(foreign.GoodsData)it.next();
                %>
        
                <tr>
                    <td>Product ID</td><td><%= sa.getPid()%><input type="hidden" name="pid" value="<%= sa.getPid()%>"/></td> </tr>
                <tr> <td>Product Name</td><td><input type="text" name="prname" value="<%=sa.getProductName()%>" /></td> </tr>
                <tr> <td>Unit Price</td> <td><input type="text" name="up" value="<%=sa.getUnitPrice()%>" /></td> </tr>
                <tr><td>Available Quantity</td><td><input type="text" name="avai" value="<%=sa.getAvailableQuantity()%>" /></td> </tr>
                <tr><td>Category Id</td><td><input type="text" name="cid" value="<%=sa.getCid()%>" /></td>
                              
               
                    
                </tr>
                <%
                
            }
        
        %>
        <tr><td><input type="submit" value="Update"/></td></tr> 
              
           </table>
        <p>&nbsp;</p>
    </div>
    <div id="content_bottom"></div>

    <div id="footer"><h3><a href="#"></a></h3></div>
</div>
<%@include file="foot.jsp" %>