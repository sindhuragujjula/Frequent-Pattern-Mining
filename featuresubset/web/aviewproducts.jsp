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
      <h2><font color="blue"><b>The List of Products</b></font></h2>
 
                    <%
            org.hibernate.SessionFactory sf=new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
            org.hibernate.Session s=sf.openSession();
            org.hibernate.Transaction t=s.beginTransaction();
            foreign.GoodsData sa=new foreign.GoodsData();
                
            org.hibernate.Query q=s.createQuery("From GoodsData");
            java.util.ArrayList al=new java.util.ArrayList();
            al=(java.util.ArrayList)q.list();
            java.util.Iterator it = al.iterator();
                %>
           <table border="2" cellpadding="5">
                    <tr>
                        <th>Product Id</th>
                        <th>Product Name</th>
                             <th>Unit Price</th>
                         <th>Available Quantity</th>
                          <th>Category Id</th>
                   
                    </tr>
                            <%
            
            while (it.hasNext()) 
            {
              sa=(foreign.GoodsData)it.next();
                %>
        
                <tr>
                    <td><%= sa.getPid()%></td>
                              <td><%=sa.getProductName()%></td>
                              <td><%=sa.getUnitPrice()%></td>
                              <td><%=sa.getAvailableQuantity()%></td>
                              <td><%=sa.getCid()%></td>
                                  <td>
                                      <%
                                      
 org.hibernate.SessionFactory sf1=new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
            org.hibernate.Session s1=sf1.openSession();
            org.hibernate.Transaction t1=s1.beginTransaction();
            foreign.GoodsData sa1=new foreign.GoodsData();
                
            org.hibernate.Query q1=s1.createQuery("From ImageUpdate where pid='"+sa.getPid()+"'");
            java.util.ArrayList al1=new java.util.ArrayList();
            al1=(java.util.ArrayList)q1.list();
            java.util.Iterator it1 = al1.iterator();
  if (it1.hasNext()) 
            {
          foreign.ImageUpdate sa12=(foreign.ImageUpdate)it1.next();
%>
                                      
                                      
                                      
<img src="<%= sa12.getImageUrl() %>" width="60" height="60" alt="image"/>                    
                                      
                  
                      <%
}   else{
                %>
                      
                                 
                                      
                                      <script language="javascript">
var popupWindow = null;
function centeredPopup(url,winName,w,h,scroll){
LeftPosition = (screen.width) ? (screen.width-w)/2 : 0;
TopPosition = (screen.height) ? (screen.height-h)/2 : 0;
settings =
'height='+h+',width='+w+',top='+TopPosition+',left='+LeftPosition+',scrollbars='+scroll+',resizable'
popupWindow = window.open(url,winName,settings)
}
</script>
<p><a href="uploadimage.jsp?tid=<%= sa.getPid()%>" onclick="centeredPopup(this.href,'myWindow','400','200','yes');return false">Add Image</a></p>
               

                      
                      
                      <%
}                   
%>                
                                      
                                      </td>
                 <td><a href="aeditproduct.jsp?pid=<%= sa.getPid()%>">Edit</a></td>
                 <td><a href="adeleteproduct.jsp?pid=<%= sa.getPid()%>">Delete</a></td>
                    
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
