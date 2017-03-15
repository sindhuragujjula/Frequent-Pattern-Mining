<%
                 String uid=session.getAttribute("suid").toString();        
             %>
<%@include file="uhead.jsp" %>

<div id="content">


    <div id="content_top"></div>
    <div id="content_main">

        <p>&nbsp;</p>
        <p>&nbsp;</p>
    	  <%
          
if(request.getParameter("msg")!=null)
{
    %>
          
    <font color="red" size="4">
    <%= request.getParameter("msg") %>
    </font>
                
                <%
}
%>
        <p>&nbsp;</p>
     <form action="userfeedbackaction.jsp" method="post" id="test"><center>
         <h2><b>Send FeedBack</b>
              </h2>
            <table border="0">
           
                    <tr>
                        <td>Feedback Id </td>
                        <td><select name="fbid" class="validate-selection" >
                                <option>Select Feedback Id</option>
                                <option>feed1</option>
                                <option>feed2</option>
                                <option>feed3</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td>Delivery Boy Id</td>
                        <td><select name="dbid" class="validate-selection" >
                                <option>Select Delivery Boy Id</option>
                                                <%
                                
org.hibernate.SessionFactory sf=new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
org.hibernate.Session s=sf.openSession();
org.hibernate.Transaction t=s.beginTransaction();
foreign.DelivBoy sa=new foreign.DelivBoy();
 org.hibernate.Query q = s.createQuery("From DelivBoy");

java.util.ArrayList al=new java.util.ArrayList();
al=(java.util.ArrayList)q.list();
java.util.Iterator it=al.iterator();
while(it.hasNext())
       {
    sa=(foreign.DelivBoy)it.next();

%>
                                
                                
                                
<option value="<%=sa.getDname()%>"><%=sa.getDbid()%></option><%
                                                               }%>
                            </select></td>
                    </tr>
                    <tr>
                        <td>FeedBack</td>
                        <td><textarea name="fb" rows="4" cols="20" class="required" >
                            </textarea></td>
                    </tr>
                    <tr>
                        <td>FeedBack Start No</td>
                        <td><input type="text" name="fbstarno" value="" class="required validate-number" /></td>
                    </tr>
  
                    <tr>
                       <td></td><td> &nbsp;&nbsp;&nbsp;<input type="submit" value="Send" /></td>
                    </tr>
                        <tr>
                       <td></td><td> &nbsp;&nbsp;&nbsp;<input type="reset" value="Reset" /></td>
                    </tr>
             
            </table></center>

        </form>
           
        <p>&nbsp;</p>
    </div>
    <div id="content_bottom"></div>

    <div id="footer"><h3><a href="#"></a></h3></div>
</div>
<%@include file="foot.jsp" %>
