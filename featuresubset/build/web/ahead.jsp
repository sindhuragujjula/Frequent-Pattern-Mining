<%

if(session.getAttribute("said")!=null){
    
}else{
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
<title>Foreign Freighters Tracking Tool</title>
</head>

<body>
<div id="container">
		<div id="header">
        	<h1>Feature Subset<span class="off">Selection</span></h1>
            <h2>Welcome <%= session.getAttribute("said") %></h2>
        </div>   
        
        <div id="menu">
     	<ul>
            	<li class="menuitem"><a href="adminhome.jsp">Home</a></li>
                <li class="menuitem"><a href="subadminreg.jsp">Sub Admin Registration</a></li>
                <li class="menuitem"><a href="addproducts.jsp">Add Products</a></li>
                <li class="menuitem"><a href="aviewproducts.jsp">View Products</a></li>
                <li class="menuitem"><a href="viewsubadmin.jsp">View Sub Admin Details</a></li>
               <li class="menuitem"><a href="logout.jsp">Logout</a></li>
               <li class="menuitem"><a href="#">&nbsp;</a></li>
               <li class="menuitem"><a href="adminhome.jsp">ADMIN HOME</a></li>
            </ul>
        </div>
        
    <!--    <div id="leftmenu">

        <div id="leftmenu_top"></div>

				<div id="leftmenu_main">    
                
                <h3>Links</h3>
                        
                <ul>
                    <li><a href="#">SEO</a></li>
                    <li><a href="#">PHP</a></li>
                    <li><a href="#">Ajax</a></li>
                    <li><a href="#">jQuery</a></li>
                    <li><a href="#">Web design</a></li>
                    <li><a href="#">Web Programming</a></li>
                    <li><a href="#">Content Creation</a></li>
                    <li><a href="#">Internet Marketing</a></li>
                    <li><a href="#">XHTML Templates</a></li>
                </ul>
</div>
                
                
              <div id="leftmenu_bottom"></div>
        </div>
        
        -->
        