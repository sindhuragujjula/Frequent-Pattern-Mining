<%-- 
    Document   : uploadimage
    Created on : Mar 24, 2013, 12:14:09 AM
    Author     : sattvaq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="lightgreen" >
    <center>
        <h1>Uploading Product Image</h1>
        
        <form action="ppp.jsp" method="POST" >
            <table border="0">
                <input type="hidden" name="tid" value="<%= request.getParameter("tid") %>" />
                <tbody>
                    <tr><b bgcolor="lightyellow" >Enter Image Title</b><br><td align="center">
                    <input type="text" name="title" value=""/></td>
                   </tr>   <tr>   <td><input type="file" name="uploadfile" value="" /></td>
                   <input type="hidden" name="todo" value="upload" />
                        </tr>   <tr>  <td align="center" ><input type="submit" value="upload" /></td>
                    </tr>
                
                </tbody>
            </table>

            
        </form>
    </center>
        
    </body>
</html>
