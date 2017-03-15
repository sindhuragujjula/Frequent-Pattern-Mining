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
    
String k=request.getParameter("k");
if(k!=null)
{
    out.println(k);
}
String m=request.getParameter("m");
if(m!=null)
{
    out.println(m);
}
%>
<p>&nbsp;</p>
                    <%
          
String j=request.getParameter("j");
if(j!=null)
       {
    out.println(j);
}


%>
    
       <%
       
//foreign.GoodsData
   org.hibernate.SessionFactory sf1 = new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
            org.hibernate.Session s = sf1.openSession();
            org.hibernate.Transaction tr = s.beginTransaction();
            String count = s.createSQLQuery("select count(*) from goods_data").uniqueResult().toString();
            double nor = Double.parseDouble(count);
            int nop = (int) Math.ceil(nor / 3);

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
        <a style=" background-color:aquamarine; font-size: larger;  " href="userhome.jsp?p=<%= i%>"><%=i%></a>

        <%


            }


org.hibernate.SessionFactory sf = null;
            sf = new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
            org.hibernate.Session se = sf.openSession();
            org.hibernate.Transaction tx = se.beginTransaction();

            java.util.List ld = se.createQuery("from GoodsData").setFirstResult((sr - 1) * 3).setMaxResults(3).list();
            java.util.Iterator it = ld.listIterator();

       %>

    <table>
        <tr>
    <%     while (it.hasNext()) {
                foreign.GoodsData rr = (foreign.GoodsData) it.next();
                          
                                   
 org.hibernate.SessionFactory sf11=new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
            org.hibernate.Session s1=sf11.openSession();
            org.hibernate.Transaction t1=s1.beginTransaction();
            foreign.GoodsData sa1=new foreign.GoodsData();
                
            org.hibernate.Query q1=s1.createQuery("From ImageUpdate where pid='"+rr.getPid()+"'");
            java.util.ArrayList al1=new java.util.ArrayList();
            al1=(java.util.ArrayList)q1.list();
            java.util.Iterator it1 = al1.iterator();
  if (it1.hasNext()) 
            {
          foreign.ImageUpdate sa12=(foreign.ImageUpdate)it1.next();
%>
                                      
      <td>                                
                                      
<img src="<%= sa12.getImageUrl() %>" width="150" height="150" alt="image"/>     <br>               
                              <b><a href="ubookpro.jsp?book=<%= rr.getPid() %>&cid=<%= rr.getCid() %>&img=<%=sa12.getImageUrl()%>">Book This Product</a></b>        
              

 
   <br> Rs.<%= rr.getUnitPrice() %>/- <br>
   Available Quantity : <%= rr.getAvailableQuantity() %>
<td>

<%


      }                                                                         }


%>

</tr>
    </table>    
        <p>&nbsp;</p>
    </div>
    <div id="content_bottom"></div>

    <div id="footer"><h3><a href="#"></a></h3></div>
</div>
<%@include file="foot.jsp" %>
