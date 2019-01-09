<%-- 
    Document   : PageAdminJobEdit
    Created on : Dec 29, 2018, 9:01:42 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="POST" action="/saveJob">
        <h4>Edit Job</h4>
        <input type="hidden" name="jobId" value="${jobs.jobId}"/>
        <input type="text" name="jobTitle" value="${jobs.jobTitle}"/>
        <input type="submit" value="submit"/>
    </form>
    </body>
</html>
