<%

    if (session.getAttribute("subaid") != null) {
    } else {
        response.sendRedirect("index.jsp?msg=Please Login");
    }
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link rel="stylesheet" type="text/css" href="style.css" />
        <script src="scriptaculous/lib/prototype.js" type="text/javascript"></script>
        <script src="scriptaculous/src/effects.js" type="text/javascript"></script>

        <script type="text/javascript" src="fabtabulous.js"></script>
        <script type="text/javascript" src="validation.js"></script>
        <link href="styles.css" rel="stylesheet" type="text/css"></link>
        <title>Foreign Fighter</title>
    </head>

    <body>
        <div id="container">
            <div id="header">
                <h1>Feature Subset<span class="off">Selection</span></h1>
               
 <h2>Welcome <%= session.getAttribute("subaid") %></h2>
            </div>   

            <div id="menu">
                <ul>
              
                    <li class="menuitem"><a href="subaminhome.jsp">Home</a></li>
                    <li class="menuitem"><a href="subregdelboy.jsp">Register Delivery Boy</a></li>
                    <li class="menuitem"><a href="subviewdelboy.jsp">View Delivery Boys</a></li>
                    <li class="menuitem"><a href="#">&nbsp;</a></li>
               <li class="menuitem"><a href="subaminhome.jsp">SUB-ADMIN HOME</a></li>
                    
                </ul>
            </div>

         <div id="leftmenu">
        
                <div id="leftmenu_top"></div>
        
				<div id="leftmenu_main">    
                        
                        <h3>Links</h3>
                          
                        <ul>
                   <li class="menuitem"><a href="subgrpspro.jsp">Group Products</a></li>
                            <li class="menuitem"><a href="subneworders.jsp">New Orders</a></li>
                    <li class="menuitem"><a href="subapproveorders.jsp">Sold Products</a></li>
                    <li class="menuitem"><a href="subpendingorders.jsp">Pending Orders</a></li>
                    <li class="menuitem"><a href="subviewfeedback.jsp">View FeedBack</a></li>
                    <li class="menuitem"><a href="ddetails.jsp">Delivered details</a></li>
                    <li class="menuitem"><a href="logout.jsp">Logout</a></li>  
                   
                    
                </ul>
</div>
                
                
              <div id="leftmenu_bottom"></div>
        </div>