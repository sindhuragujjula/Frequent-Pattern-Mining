<%@include file="ahead.jsp" %>

<div id="content">


    <div id="content_top"></div>
    <div id="content_main">

        <p>&nbsp;</p>
        <p>&nbsp;</p>
    	  <%
          
if(request.getParameter("msg")!=null)
{
    %>
          
    
    <%= request.getParameter("msg") %>
  
                
                <%
}
%>
        <p>&nbsp;</p> 
                       <%
              String a=request.getParameter("a");
if(a!=null)
       {
    out.println(a);
}
String b=request.getParameter("b");
if(b!=null)
       {
    out.println(b);
}
String c=request.getParameter("c");
if(c!=null)
       {
    out.println(c);
}
String d=request.getParameter("d");
if(d!=null)
       {
    out.println(d);
}

String e=request.getParameter("e");
if(e!=null)
       {
    out.println(e);
}

String f=request.getParameter("f");
if(f!=null)
       {
    out.println(f);
}

%>           
      

        <p>&nbsp;</p>
    </div>
    <div id="content_bottom"></div>

    <div id="footer"><h3><a href="#"></a></h3></div>
</div>
<%@include file="foot.jsp" %>
