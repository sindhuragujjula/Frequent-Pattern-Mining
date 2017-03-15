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
          
 
    <%= request.getParameter("msg") %>
 
                
                <%
}
%>
        <p>&nbsp;</p>
        <form action="regaction.jsp" method="post" id="test" >
            <center>
        <table>
           <tr>
                 <td colspan="2" ALIGN="CENTER" ><h2>CLIENT REGISTRATION</h2></td>
                     
                  </tr>  <tr>
                <td>
                    User Name
                </td>
                <td><input type="text" name="un" value="" class="required" /></td>
            </tr>
            <tr>
                <td>User Id</td>
                
                <td><input type="text" name="uid" value="" class="required validate-email"/></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="password" name="psw" value="" class="required" /></td>
            </tr>
            <tr>
                <td>Gender</td>
                <td><input type="radio" name="gen" value="male" />Male
             <input type="radio" name="gen" value="Female" />Female</td>
                                </tr>
                                <tr>
                                    <td>Contact Number</td>
                                    <td><input type="text" name="phone" value="" class="required" /></td>
                                </tr>
                                <tr>
                                    <td>Address</td>
                                    <td><textarea name="address" rows="4" cols="20" class="required">
                                        </textarea>
                                </tr>
                                <tr><td><input type="submit" value="Submit" /></td>
                                   <td><input type="reset" value="Reset" /></td></tr>
        </table></center>
        </form>

        <p>&nbsp;</p>
    </div>
    <div id="content_bottom"></div>

    <div id="footer"><h3><a href="#"></a></h3></div>
</div>
<%@include file="foot.jsp" %>