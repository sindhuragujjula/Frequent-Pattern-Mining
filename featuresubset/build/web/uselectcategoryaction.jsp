 <%
                 String uid=session.getAttribute("suid").toString();        
             %>
<%@include file="uhead.jsp" %>

<div id="content">


    <div id="content_top"></div>
    <div id="content_main">
 <form action="uselectcategoryaction.jsp" method="post" id="test"><center>
         <h2>Category Selection
              </h2>
            <table border="0">
            <tr>
                        <td>Category</td>
                        <td><select name="cid" class="validate-selection" >
                                <option>Select Category </option>
                                <%
                                
org.hibernate.SessionFactory sf8=new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
org.hibernate.Session s8=sf8.openSession();
org.hibernate.Transaction t8=s8.beginTransaction();
foreign.CategoryData sa8=new foreign.CategoryData();
 org.hibernate.Query q8= s8.createQuery("From CategoryData");

java.util.ArrayList al8=new java.util.ArrayList();
al8=(java.util.ArrayList)q8.list();
java.util.Iterator it8=al8.iterator();
while(it8.hasNext())
       {
    sa8=(foreign.CategoryData)it8.next();

%>
                                
                                
                                
<option value="<%=sa8.getCid()%>"><%=sa8.getCategoryName()%></option><%
                                                               }%>
                            </select></td>
                    </tr>
                    <tr>
                       <td></td><td> &nbsp;&nbsp;&nbsp;<input type="submit" value="ADD" /></td>
                    </tr>
             
            </table></center>

        </form> 
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
       <H1>The List of  Product Details</h1>
 
                    <%
                    
                    String cid=request.getParameter("cid");
                    
        org.hibernate.SessionFactory sf1 = new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
            org.hibernate.Session s = sf1.openSession();
            org.hibernate.Transaction tr = s.beginTransaction();
            String count = s.createSQLQuery("select count(*) from goods_data where cid='"+cid+"'").uniqueResult().toString();
            double nor = Double.parseDouble(count);
            int nop = (int) Math.ceil(nor / 2);

            String pv = request.getParameter("p");
            if (pv == null) {
                pv = "1";
            }
            int sr = Integer.parseInt(pv);


        %>

        Page  <%= pv%> of <%= nop%><br></br>
        <%

            //for prev Button




// end of prev button


            for (int i = 1; i <= nop; i++) {

        %>
        <a style=" background-color:aquamarine; font-size: larger;  " href="uselectcategoryaction.jsp?p=<%= i%>&cid=<%= cid %>"><%=i%></a>

        <%


            }

            
            org.hibernate.SessionFactory sf=new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
            org.hibernate.Session s1=sf.openSession();
            org.hibernate.Transaction t=s1.beginTransaction();
            foreign.GoodsData sa=new foreign.GoodsData();
                
            
            
             java.util.List ld = s1.createQuery("From GoodsData where cid='"+cid+"'").setFirstResult((sr - 1) * 2).setMaxResults(2).list();
            
          
            java.util.ArrayList al=new java.util.ArrayList();
          //  al=(java.util.ArrayList)q1.list();
            java.util.Iterator it = ld.iterator();
                %>
           <table border="2" cellpadding="5">
               
                            <%
            
            while (it.hasNext()) 
            {
              sa=(foreign.GoodsData)it.next();
              int tpid=sa.getPid();
              int tcid=sa.getCid();
              
              
              
                                   
 org.hibernate.SessionFactory sf11=new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
            org.hibernate.Session s11=sf11.openSession();
            org.hibernate.Transaction t1=s11.beginTransaction();
            foreign.GoodsData sa1=new foreign.GoodsData();
                
            org.hibernate.Query q1=s11.createQuery("From ImageUpdate where pid="+tpid+"");
            java.util.ArrayList al1=new java.util.ArrayList();
            al1=(java.util.ArrayList)q1.list();
            java.util.Iterator it1 = al1.iterator();
  if (it1.hasNext()) 
            {
          foreign.ImageUpdate sa12=(foreign.ImageUpdate)it1.next();
%>
<tr>
        <td>                                
                                      
<img src="<%= sa12.getImageUrl() %>" width="150" height="150" alt="image"/>                    
                                      
              

 
   <br> Rs.<%= sa.getUnitPrice() %>/-  
        </td><td>
            <b>Product Name</b>:<%= sa.getProductName()%><br>
            <b>Quantity</b>:<%=sa.getAvailableQuantity()%><br>
            <b>Pricing</b>:<%=sa.getUnitPrice()%><br>
             <b><a href="ubookpro.jsp?book=<%=tpid%>&cid=<%=tcid%>&img=<%=sa12.getImageUrl()%>">Book This Product</a></b><br>
              
        </td>
</tr>                                  
  

        
                <%
                
            }}
        
        %>
            </table>
        <p>&nbsp;</p>
    </div>
    <div id="content_bottom"></div>

    <div id="footer"><h3><a href="#"></a></h3></div>
</div>
<%@include file="foot.jsp" %>
