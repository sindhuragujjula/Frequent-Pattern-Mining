<%@include file="head.jsp" %>

<div id="content">


    <div id="content_top"></div>
    <div id="content_main">

        <p>&nbsp;</p>
        <p>&nbsp;</p> 

      <h1><b>Forgotten password</b></h1>
      <form action="forgotpswaction.jsp" method="post" id="test" >
            <center>
        <table>
       
            <tr>
                <td>User Id</td>
                
                <td><input type="text" name="uid" value="" class="required validate-email"/></td>
     
           
                                <tr><td><input type="submit" value="Submit" /></td>
                                   <td><input type="reset" value="Reset" /></td></tr>
        </table></center>
        </form>
      
    </div>
    <div id="content_bottom"></div>

    <div id="footer"><h3><a href="#"></a></h3></div>
</div>
<%@include file="foot.jsp" %>
