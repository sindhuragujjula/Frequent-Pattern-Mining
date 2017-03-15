<%@include file="head.jsp" %>

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
        

      
      <%
    
if(request.getParameter("psww")!=null)
       {String psww=request.getParameter("psww");  
    out.println(psww);
}



%>
      
      
      <form action="useract.jsp" method="post" id="test" >
          
          
          <table border="0">
           
             <tr>
                 <td colspan="2" ALIGN="CENTER" ><h2>CLIENT LOGIN</h2></td>
                     
                  </tr> 
                  <tr>
                      <td>User Id:</td>
                      <td>  <input type="text" name="uid" value="" class="required" /></td>
                  </tr>
               
                      <tr>
                      <td>Password</td>
                      <td>   <input type="password" name="psw" value="" class="required" /></td>
                  </tr>
                    <tr>
                      <td></td>
                      <td><input type="submit" value="Sign In" />
                          </td>
                <!--  </tr>
                        <tr>
                      <td></td>
                      <td><a href="forgotpsw.jsp">Forgotten Password</a>
                          </td>
                  </tr>-->
          </table>
         
 </form>
      
        <p>&nbsp;</p>
    </div>
    <div id="content_bottom"></div>

    <div id="footer"><h3><a href="#"></a></h3></div>
</div>
<%@include file="foot.jsp" %>


