<%@include file="uhead.jsp" %>
<script type="text/javascript" src="date-picker.js"></script>
<div id="content">


    <div id="content_top"></div>
    <div id="content_main">

        <p>&nbsp;</p>
        <p>&nbsp;</p> 
        <form name="bookdata" action="ubookproaction.jsp" method="post" id="test"><center>
                <h2>ADD PRODUCTS
                </h2>
                <table border="0">

                    <tr>
                        <td>Product Id</td>
                        <td>
                            <%
                                String book = request.getParameter("book");
                                String cid = request.getParameter("cid");
                                String imgurl = request.getParameter("img");
                                org.hibernate.SessionFactory sf = new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
                                org.hibernate.Session s = sf.openSession();
                                org.hibernate.Transaction t = s.beginTransaction();
                                foreign.GoodsData sa = new foreign.GoodsData();
                                org.hibernate.Query q = s.createQuery("From GoodsData where pid='" + book + "' and cid='" + cid + "'");
//q.setParameter("id", book);
//q.setParameter("cid", cid);
                                java.util.ArrayList al = new java.util.ArrayList();
                                al = (java.util.ArrayList) q.list();
                                java.util.Iterator it = al.iterator();
                                while (it.hasNext()) {
                                    sa = (foreign.GoodsData) it.next();

                            %>
                            <%
           }%>
                            <input type="hidden" name="pid" value="<%=sa.getProductName()%>" />  <img src="<%= imgurl%>" width="50" height="50"/>
                        </td>
                    </tr>
                    <tr>
                        <td>Date of Booking</td>
                        <td><input type="text" name="bookdate" placeholder="YYYY-MM-DD" class="required" />
                            <a href="javascript: show_cal('document.bookdata.bookdate.value')">pick date</a>
                        </td>
                    </tr>

                    <tr>
                        <td>Delivery Address</td>
                        <td><textarea name="dadd" rows="4" cols="20" class="required" >
                            </textarea></td>
                    </tr>
                    <tr>
                        <td>NO of Days of delivery from Booking</td>
                        <td><input type="text" name="nodays" value="" class="required validate-number" /></td>
                    </tr>

                    <tr>
                        <td> &nbsp;&nbsp;&nbsp;<input type="submit" value="Book Now" />
                            &nbsp;&nbsp;&nbsp;<input type="reset" value="Cancel" /></td>
                    </tr>

                </table></center>

        </form>

        <p>&nbsp;</p>
    </div>
    <div id="content_bottom"></div>

    <div id="footer"><h3><a href="#"></a></h3></div>
</div>
<%@include file="foot.jsp" %>
