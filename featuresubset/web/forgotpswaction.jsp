<%@include file="head.jsp" %>

<div id="content">


    <div id="content_top"></div>
    <div id="content_main">

        <p>&nbsp;</p>
        <p>&nbsp;</p> 
           
        <%
        
String wans=request.getParameter("wans");
if(wans!=null)
       {
    out.println(wans);
}



%>
      
      <h1><b></b></h1>
  <%
  
String uid=request.getParameter("uid");
  org.hibernate.SessionFactory sf=new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
            org.hibernate.Session s=sf.openSession();
            org.hibernate.Transaction t=s.beginTransaction();
            foreign.DelivBoy sa=new foreign.DelivBoy();
            
            org.hibernate.Query q=s.createQuery("from DelivBoy where dbid= :id");
                q.setParameter("id", uid);
                    java.util.ArrayList al=new java.util.ArrayList();
            al=(java.util.ArrayList)q.list();
            java.util.Iterator it = al.iterator();
                %>
                      
                  
                            <%
            
         if (it.hasNext()) 
            {
              sa=(foreign.DelivBoy)it.next();
              String tpid=sa.getDname();
              
                %>
        
                <tr>
                    <td>YOur Name Is:</td><td><font color="blue"><b><%= tpid %></b></font></td>
                             
                </tr>
                <tr><td>Enter Your Phone Number</td><td><input type="text" name="phno" value="" /></td></tr>
                <%
                
            }else
                               {
               response.sendRedirect("forgotpsw.jsp?psww=<font size='4' color='red'>Wrong Password</font>");
            }
        
        %>
                <tr><td></td><td><input type="submit" value="Continue" /></td></tr>
                
           
                </table></form>
      
    </div>
    <div id="content_bottom"></div>

    <div id="footer"><h3><a href="#"></a></h3></div>
</div>
<%@include file="foot.jsp" %>
