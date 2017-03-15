<%@include file="head.jsp" %>

<div id="content">


    <div id="content_top"></div>
    <div id="content_main">

        <p>&nbsp;</p>
        <p>&nbsp;</p> 
  <%
  
String uid=request.getParameter("phno");
  org.hibernate.SessionFactory sf=new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
            org.hibernate.Session s=sf.openSession();
            org.hibernate.Transaction t=s.beginTransaction();
            foreign.UserData sa=new foreign.UserData();
            
            org.hibernate.Query q=s.createQuery("from UserData where u_name= :name");
                q.setParameter("name", uid);
                    java.util.ArrayList al=new java.util.ArrayList();
            al=(java.util.ArrayList)q.list();
            java.util.Iterator it = al.iterator();
                %>
                      
                <table>

                  
                            <%
            
         while (it.hasNext()) 
            {
              sa=(foreign.UserData)it.next();
              String tpid=sa.getUName();
              if(tpid.equals(uid))
                                   {
                  
              
              
                %>
        
                <tr>
                    YOur Name Password Is:<td><%= sa.getPassword() %></td>
                             
                </tr>
               
                <%
                
            }
              else
                               {
               response.sendRedirect("forgotpswaction.jsp?wans=<font color='red'>Wrong Answer</font>");
            }
              }
        
        %>
               
     
      
                </table>
      
    </div>
    <div id="content_bottom"></div>

    <div id="footer"><h3><a href="#"></a></h3></div>
</div>
<%@include file="foot.jsp" %>
