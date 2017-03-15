<%
  
%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html>
    <%@ page language="java" import="javazoom.upload.*,java.util.*" %>

    <%
        String urlpath = request.getContextPath();
        urlpath = urlpath + "/uploads";
    %>
    


    <ul class="style1">
        <%
try{
           // UploadFile file = null;
            String Uid = null, Password = null, Fname = null, Lname = null, Gender = null, Country = null, City = null, Sequrityq = null, Dob = null, Sequritya = null, Imgurl = null, Blockuser = null;
            String ffile = null, mid = null;
            int cid = 0;

            //if (MultipartFormDataRequest.isMultipartFormData(request)) {

               // MultipartFormDataRequest mrequest = new MultipartFormDataRequest(request);
                //String todo = null;
                //if (mrequest != null) {
                  //  todo = mrequest.getParameter("todo");
               // }
//                if ((todo != null) && (todo.equalsIgnoreCase("upload"))) {
    //                Hashtable files = mrequest.getFiles();
  //                  if ((files != null) && (!files.isEmpty())) {
        //                file = (UploadFile) files.get("uploadfile");
      //                  if (file != null) {
          //                  out.println("<li>Form fields : uploadfile" + "<BR> Uploaded file : " + file.getFileName() + " (" + file.getFileSize() + " bytes)" + "<BR> Content Type : " + file.getContentType());
            //            }

              //          upBean1.store(mrequest, "uploadfile");
                //    } else {
                  //      out.println("<li>No uploaded files");
                    
                    //if (mrequest != null) {

                      //  String[] vals = mrequest.getParameterValues("multipleselect");
                        //if (vals != null) {
                          //  for (int j = 0; j < vals.length; j++) {
                    //            out.println("<BR> multipleselect=" + vals[j]);
                            //}
                        //}

                    //}
                //} else {
                  //  out.println("<BR> todo=" + todo);
//                }


                String pid = "", title = "";
                ffile = request.getParameter("uploadfile");

                Imgurl = "uploads/" + ffile;//file.getFileName();

                pid = request.getParameter("tid");
                title = request.getParameter("title");
                org.hibernate.SessionFactory sf = null;
                sf = new org.hibernate.cfg.Configuration().configure().buildSessionFactory();
                org.hibernate.Session se = sf.openSession();
                org.hibernate.Transaction tx = se.beginTransaction();

                foreign.ImageUpdate psy = new foreign.ImageUpdate();
                psy.setImageId(0);
                psy.setImageTitle(title);
                psy.setImageUrl(Imgurl);
                psy.setPid(pid);
                se.save(psy);
                tx.commit();


                String msg = "<font color='green' size='5'>Image Uploaded Success</font>";
            //    response.sendRedirect("aviewproducts.jsp?msg" + msg);
%>
<br>  
<%= msg %>
        
        
        
        <%
           // }
    }
  //     
       
       catch(Exception ee){ out.print(ee);             }
    
    %>
    </ul>