 <%
                 String uid=session.getAttribute("subaid").toString();        
             %>
  <%@include file="subhead.jsp" %>

<div id="content">


    <div id="content_top"></div>
    <div id="content_main">

        <p>&nbsp;</p>
        <p>&nbsp;</p>  
       <H1>The List of  FeedBacks from Customers </h1>
       <br><br>
 
                    <%
       try{     org.hibernate.SessionFactory sf=new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
            org.hibernate.Session s=sf.openSession();
            org.hibernate.Transaction t=s.beginTransaction();
            foreign.UserFeedback sa=new foreign.UserFeedback();
                
            org.hibernate.Query q=s.createQuery("From UserFeedback where feedbackstatus= :status");
            q.setParameter("status", "OK");
            java.util.ArrayList al=new java.util.ArrayList();
            al=(java.util.ArrayList)q.list();
            java.util.Iterator it = al.iterator();
                %>
           <table border="2" cellpadding="5">
                    <tr>
                        <th>User Id</th>
                        <th>Delivery Boy Id</th>
                         <th>FeedBack Content</th>
                          <th>FeedBack Star No's</th>
                           <th>Date</th>
                            
                   
                    </tr>
                            <%
            
            while (it.hasNext()) 
            {
              sa=(foreign.UserFeedback)it.next();
                %>
        
                <tr>
                  
                              <td><%=sa.getUid()%></td>
                              <td> <%= sa.getDbid()%></td>
                              <td><%=sa.getFeedbackContent()%></td>
                              <td><%=sa.getFeedbackStarNo()%></td>
                              <td><%=sa.getCdateoffeedback()%></td>
                
                </tr>
                <%
                
            }
                   }catch(Exception ee){  out.print(ee);       }
        %>
            </table>
        <p>&nbsp;</p>
    </div>
    <div id="content_bottom"></div>

    <div id="footer"><h3><a href="#"></a></h3></div>
</div>
<%@include file="foot.jsp" %>
