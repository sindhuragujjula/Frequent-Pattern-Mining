
    <%
    
    try{
        
    org.hibernate.SessionFactory sf=new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
org.hibernate.Session s=sf.openSession();
org.hibernate.Transaction tx=s.beginTransaction();

//String pid=request.getParameter("pid");
String nm=request.getParameter("nm");
int av=Integer.parseInt(request.getParameter("avaqua"));
int unit=Integer.parseInt(request.getParameter("unit"));
int cid=Integer.parseInt(request.getParameter("cid"));

foreign.GoodsData gd=new foreign.GoodsData();
gd.setPid(0);
gd.setProductName(nm);
gd.setAvailableQuantity(av);
gd.setCid(cid);
gd.setUnitPrice(unit);

s.save(gd);
tx.commit();

response.sendRedirect("adminhome.jsp?b=<h2><b><font color='green'>The Product Has Been Registered Successfully</b></font></h2>");

    }catch(Exception e){
        out.print(e);
}
%>