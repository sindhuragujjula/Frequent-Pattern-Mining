<%@include file="ahead.jsp" %>

<div id="content">


    <div id="content_top"></div>
    <div id="content_main">

        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <%

            if (request.getParameter("msg") != null) {
        %>

        <font color="red" size="4">
        <%= request.getParameter("msg")%>
        </font>

        <%
            }
        %>
        <p>&nbsp;</p> 
       <H1>The List of  Sub-Admin Details</h1>
 
                    <% 
                    String uid=session.getAttribute("said").toString();  
            org.hibernate.SessionFactory sf=new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
            org.hibernate.Session s=sf.openSession();
            org.hibernate.Transaction t=s.beginTransaction();
            foreign.Subadmin sa=new foreign.Subadmin();
                
            org.hibernate.Query q=s.createQuery("From Subadmin ");
            java.util.ArrayList al=new java.util.ArrayList();
            al=(java.util.ArrayList)q.list();
            java.util.Iterator it = al.iterator();
                %>
           <table border="2" cellpadding="5">
                    <tr>
                        <th>Sub Admin name</th>
                        <th>Login Id</th>
                         <th>Password</th>
                          <th>Branch</th>
                           <th>Address</th>
                            <th>Phone</th>
                   
                    </tr>
                            <%
            
            while (it.hasNext()) 
            {
              sa=(foreign.Subadmin)it.next();
                %>
        
                <tr>
                    <td><%= sa.getName()%></td>
                              <td><%=sa.getSLoginid()%></td>
                              <td><%=sa.getPassword()%></td>
                              <td><%=sa.getBranch()%></td>
                              <td><%=sa.getAddress()%></td>
                              <td><%=sa.getPhno()%></td>
                 <td><a href="asubedit.jsp?lid=<%=sa.getSLoginid()%>">Edit</a></td>
                  <td><a href="asubdelete.jsp?lid=<%=sa.getSLoginid()%>">Delete</a></td>   
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








