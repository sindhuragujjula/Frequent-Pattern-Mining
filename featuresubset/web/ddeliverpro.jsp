 <%
                 String uid=session.getAttribute("sdid").toString();        
             %><%@include file="dhead.jsp" %>
<script type="text/javascript" src="date-picker.js"></script>
<div id="content">


    <div id="content_top"></div>
    <div id="content_main">

        <p>&nbsp;</p>
        <p>&nbsp;</p> 
      <form name="deliveryform" action="ddeliverproaction.jsp" method="post" id="test"><center>
         <h2>UPDATE STATUS
              </h2>
            <table border="0">
           
                                 <tr>
                        <td>Transaction Id</td>
                        <td>
                                <%
               String prid=request.getParameter("prid");
               int tid=Integer.parseInt(request.getParameter("tid"));
org.hibernate.SessionFactory sf=new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
org.hibernate.Session s=sf.openSession();
org.hibernate.Transaction t=s.beginTransaction();
foreign.BookingProductData sa=new foreign.BookingProductData();
 org.hibernate.Query q = s.createQuery("From BookingProductData where pid= :id and tid= :tid");
q.setParameter("id", prid);
q.setParameter("tid", tid);
java.util.ArrayList al=new java.util.ArrayList();
al=(java.util.ArrayList)q.list();
java.util.Iterator it=al.iterator();
while(it.hasNext())
       {
    sa=(foreign.BookingProductData)it.next();
    int ttid=sa.getTid();

%>
                    <input type="hidden" name="tid" value="<%=ttid%>" />    
<%
                                                               }%>
                         <%=sa.getPid()%>  <input type="hidden" name="pid" value="<%=sa.getPid()%>" /></td>
               
                   
                    
                  <tr>
                            <td>Date of Allocation</td>
                            <td><%= request.getParameter("db") %>
                                <input type="hidden" name="adate" placeholder="YYYY-MM-DD" value="<%= request.getParameter("db") %>" />
                               
                            </td>
                        </tr>

                    
                        
                 <tr>
                            <td>Date of Delivery</td>
                            <td><input type="text" name="ddate" placeholder="YYYY-MM-DD" class="required" />
                                <a href="javascript: show_cal('document.deliveryform.ddate.value')">pick date</a>
                            </td>
                        </tr>
                   <tr>
                      <td> &nbsp;&nbsp;&nbsp;<input type="submit" value="Deliver" />
                      &nbsp;&nbsp;&nbsp;<input type="reset" value="Cancel" /></td>
                    </tr>
             
            </table></center>

        </form>
          
    </div>
    <div id="content_bottom"></div>

    <div id="footer"><h3><a href="#"></a></h3></div>
</div>
<%@include file="foot.jsp" %>
