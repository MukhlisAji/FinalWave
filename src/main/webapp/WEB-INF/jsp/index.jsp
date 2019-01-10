<%-- 
    Document   : index
    Created on : Dec 26, 2018, 10:27:53 AM
    Author     : Mukhlish
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
    </head>
    <body>
        <div style="position: in">
            <object data="data:application/pdf;base64,${file}" type="application/pdf" style="height:900px;width:100%"></object>
        </div>
    </body>
</html>