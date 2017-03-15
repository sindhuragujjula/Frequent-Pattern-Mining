<%@include file="subhead.jsp" %>

<div id="content">


    <div id="content_top"></div>
    <div id="content_main">

        <p>&nbsp;</p>
        <p>&nbsp;</p>
        
              
        <%
        
if(request.getParameter("pr")!=null)
       {
    %>
        
        
    <font color="red" size="3"><%=request.getParameter("pr")%></font>
        
        <%
}




%>
  
      <form action="subgrpsproaction.jsp" method="post" id="test" ><center> 
               <h2>Category Registration </h2>
   
         <table>
             <tr><td>Category Name
                 </td><td><input type="text" name="catname" value="" class="required validate-alpha"/></td></tr>
             
             <tr><td>
                     <input type="submit" value="Register" />
                 </td>
                 <td><input type="reset" value="Reset" /></td>
             </tr>
         </table></center>  
       </form>
        <p>&nbsp;</p>
    </div>
    <div id="content_bottom"></div>

    <div id="footer"><h3><a href="#"></a></h3></div>
</div>
<%@include file="foot.jsp" %>
