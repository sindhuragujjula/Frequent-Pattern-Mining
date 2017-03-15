<%@include file="subhead.jsp" %>

<div id="content">


    <div id="content_top"></div>
    <div id="content_main">

        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <form action="subregdelboyaction.jsp" method="post" id="test" ><center> 
                <h2><b>Delivery Boy Registration</b> </h2>

                <table>
                    <tr>
                        <td>Delivery Boy Id</td>
                        <td><input type="text" name="dbid" value="" class="required" /></td>
                    </tr>
                    <tr>
                        <td>Password</td><td><input type="password" name="psw" value="" class="required" /></td>
                    </tr>
                    <tr>
                        <td>Name</td>
                        <td><input type="text" name="na" value="" class="required validate-alpha " /></td>
                    </tr>
                    <tr><td>Location</td>
                        <td><select name="loc" class="validate-selection" >
                                <option>Select Location</option>
                                <option>Secundrabad</option>
                                <option>Dilsukhnagar</option>
                                <option>Mehdipatnam</option>
                                <option>Punjagutta</option>
                                <option>Santhoshnagar</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td>Area of Coverage</td>
                        <td><input type="text" name="area" value="" class="required" /></td>
                    </tr>
                    <tr>
                        <td>Phone Number</td>
                        <td><input type="text" name="phno" value="" class="required" /></td>
                    </tr>
                    <tr>
                        <td>Daily Delivery goods capacity</td>
                        <td><input type="text" name="capacity" value="" class="required" /></td>
                    </tr>
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
