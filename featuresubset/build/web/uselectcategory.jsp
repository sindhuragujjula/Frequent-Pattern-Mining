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
     <form action="uselectcategoryaction.jsp" method="post" id="test"><center>
         <h2>Category Selection
              </h2>
            <table border="0">
            <tr>
                        <td>Category</td>
                        <td><select name="cid" class="validate-selection" >
                                <option>Select Category </option>
                                <%
                                
org.hibernate.SessionFactory sf=new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
org.hibernate.Session s=sf.openSession();
org.hibernate.Transaction t=s.beginTransaction();
foreign.CategoryData sa=new foreign.CategoryData();
 org.hibernate.Query q = s.createQuery("From CategoryData");

java.util.ArrayList al=new java.util.ArrayList();
al=(java.util.ArrayList)q.list();
java.util.Iterator it=al.iterator();
while(it.hasNext())
       {
    sa=(foreign.CategoryData)it.next();

%>
                                
                                
                                
<option value="<%=sa.getCid()%>"><%=sa.getCategoryName()%></option><%
                                                               }%>
                            </select></td>
                    </tr>
                    <tr>
                       <td></td><td> &nbsp;&nbsp;&nbsp;<input type="submit" value="ADD" /></td>
                    </tr>
             
            </table></center>

        </form>   
        <p>&nbsp;</p>
    </div>
    <div id="content_bottom"></div>

    <div id="footer"><h3><a href="#"></a></h3></div>
</div>
<%@include file="foot.jsp" %>
