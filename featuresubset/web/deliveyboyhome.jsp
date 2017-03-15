<%
                 String uid=session.getAttribute("sdid").toString();        
             %><%@include file="dhead.jsp" %>

<div id="content">


    <div id="content_top"></div>
    <div id="content_main">
    	  <%
          
if(request.getParameter("m")!=null)
{
    %>
          
    <font color="red" size="4">
    <%= request.getParameter("m") %>
    </font>
                
                <%
}
%>
        <p>&nbsp;</p>
        <p>&nbsp;</p> 
        <h2>   Here You can update the status of the Delivery</h2>
        <p>&nbsp;</p>
    </div>
    <div id="content_bottom"></div>

    <div id="footer"><h3><a href="#"></a></h3></div>
</div>
<%@include file="foot.jsp" %>
