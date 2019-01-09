<%-- 
    Document   : ConfrimPassword
    Created on : Jan 3, 2019, 8:23:12 AM
    Author     : USER
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="x-ua-compatible" content="ie=edge">
     
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- favicon
                    ============================================ -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12"></div>
                <div class="col-md-6 col-md-6 col-sm-6 col-xs-12">
                    <div class="text-center custom-login">
                        <h3>Change Password</h3>
                    </div>
                    <div class="hpanel">
                        <div class="panel-body">
                           <form method="POST" class="form-group" action="/changePass">
                                <div class="row">
                                    <div class="form-group col-lg-12">
                                        <label>Username</label>
                                        <input class="form-control" readonly  value="${cp.name}" name="name">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-lg-12">
                                        <label>Password</label>
                                        <input type="password" class="form-control" name="password">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-lg-12">
                                        <label>Comfrim Password</label>
                                        <input type="password" class="form-control" name="cPassword">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-lg-6">
                                        <input type="hidden" class="form-control" value="${cp.nik}" name="nik">
                                        <input type="hidden" class="form-control" value="${cp.email}" name="email">
                                        <input type="hidden" class="form-control" value="${cp.phoneNumber}" name="phoneNumber">
                                        <input type="hidden" class="form-control" value="${cp.hireDate}" name="hireDate">
                                        <input type="hidden" class="form-control" value="${cp.jobId.jobId}" name="jobId">
                                        <input type="hidden" class="form-control" value="${cp.salary}" name="salary">
                                        <input type="hidden" class="form-control" value="${cp.managerId.nik}" name="managerId">
                                        <input type="hidden" class="form-control" value="${cp.isAdmin}" name="isAdmin">
                                        <input type="hidden" class="form-control" value="${cp.isDelete}" name="isDelete">
                                        <input type="hidden" class="form-control" value="${cp.isActive}" name="isActive">

                                    </div>
                                </div> 
                                <div class="form-group col-lg-6">
                                    <button class="btn btn-success loginbtn">Register</button>

                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12"></div>
            </div>
            <div class="row">
                <div class="col-md-12 text-center">
                    <p>Copyright &copy; 2018 <a href="">Bootcamp21</a> make with LOVE.</p>
                </div>
            </div>
        </div>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

    </body>
</html>
