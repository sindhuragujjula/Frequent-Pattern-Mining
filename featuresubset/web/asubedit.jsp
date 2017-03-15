<%@include file="ahead.jsp" %>

<div id="content">


    <div id="content_top"></div>
    <div id="content_main">

        <p>&nbsp;</p>
        <p>&nbsp;</p>
        
                   <%
                 String uid=session.getAttribute("said").toString();        
             %>
  
      <H1>Editing Sub-Admin Details</h1>
 
                    <%
                    String lid=request.getParameter("lid");
            org.hibernate.SessionFactory sf=new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
            org.hibernate.Session s=sf.openSession();
            org.hibernate.Transaction t=s.beginTransaction();
            foreign.Subadmin sa=new foreign.Subadmin();
                
            org.hibernate.Query q=s.createQuery("From Subadmin where s_loginid= :lid");
            q.setParameter("lid", lid);
            java.util.ArrayList al=new java.util.ArrayList();
            al=(java.util.ArrayList)q.list();
            java.util.Iterator it = al.iterator();
                %>
                <form action="asubupdate.jsp" method="post">
           <table border="0">
               
                            <%
            
            while (it.hasNext()) 
            {
              sa=(foreign.Subadmin)it.next();
                %>
        
                <tr>
                    <td>Sub Admin name</td><td> <input type="text" name="subname" value="<%= sa.getName()%>"/></td></tr>
                      <tr> <td>Login Id</td><td><%=sa.getSLoginid()%><input type="hidden" name="sublid" value="<%=sa.getSLoginid()%>" /></td></tr>
                     
                      <tr> <td>Branch</td>  <td><input type="text" name="subbranch" value="<%=sa.getBranch()%>" /></td></tr>
                      <tr> <td>Address</td>   <td><input type="text" name="subadd" value="<%=sa.getAddress()%>" /></td></tr>
                      <tr> <td>Phone</td>  <td><input type="text" name="subphno" value="<%=sa.getPhno()%>" /></td>
              
                </tr>
                <%
                
            }
        
        %>
        <tr><td><input type="submit" value="Update" /></td> </tr>
        
           </table></form>
        <p>&nbsp;</p>
    </div>
    <div id="content_bottom"></div>

    <div id="footer"><h3><a href="#"></a></h3></div>
</div>
<%@include file="foot.jsp" %>