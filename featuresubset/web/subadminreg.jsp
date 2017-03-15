<%@include file="ahead.jsp" %>

<div id="content">


    <div id="content_top"></div>
    <div id="content_main">

        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <%

            if (request.getParameter("msg") != null) {
        %>

        <font color="red" size="4">
        <%= request.getParameter("msg")%>
        </font>

        <%
            }
        %>
        <p>&nbsp;</p> 
        <form action="subact.jsp" method="post" id="test" ><center> 


                <table>
                    <tr>
                        <td colspan="2" ALIGN="CENTER" ><h2>Sub Admin Registration </h2></td>

                    </tr>      <tr>
                        <td>Name</td>
                        <td><input type="text" name="nm" value="" class="required validate-alpha " /></td>
                    </tr>
                    <tr>
                        <td>Login Id</td>
                        <td><input type="text" name="id" value="" class="required" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="psw" value="" class="required" /></td>
                    </tr>
                    <tr><td>Branch</td>
                        <td><input type="text" name="branch" value="" class="required" /></td>
                    </tr>
                    <tr>
                        <td>Phone</td>
                        <td><input type="text" name="phone" value="" class="required validate-number " /></td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td><textarea name="add" rows="4" cols="20" class="required" >
                            </textarea></td>
                    </tr>
                    <tr><td>
                            <input type="submit" value="register" />
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
