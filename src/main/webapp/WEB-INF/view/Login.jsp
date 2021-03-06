<%-- 
    Document   : Login
    Created on : Dec 13, 2018, 2:36:48 PM
    Author     : Mukhlish
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Login | Hi Stranger</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- favicon
                    ============================================ -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    </head>

    <body>

        <!--[if lt IE 8]>
                <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
            <![endif]-->

        <div class="color-line"></div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12"></div>
                <div class="col-md-4 col-md-4 col-sm-4 col-xs-12">
                    <div class="text-center m-b-md custom-login">
                        <h3>PLEASE LOGIN </h3>
                    </div>
                    <div class="hpanel">
                        <div class="panel-body">
                          
                            <form action="login" method="POST" id="loginForm">
                                <input name="_csrf" type="hidden" value="d3877e64-0c8c-49bc-964c-b0815a4aede5" />
                                <div class="form-group">
                                    <label class="control-label" for="username">NIK</label>
                                    <input type="text" id="username" name="username" class="form-control" placeholder="Username" required autofocus>
                                    <span class="help-block small">Your unique nik to app</span>
                                </div>
                                <div class="form-group">
                                    <label class="control-label" for="password">Password</label>
                                    <input type="password" id="password" name="password" class="form-control" placeholder="Password" required>
                                    <span class="help-block small">Your strong password</span>
                                </div>
                                <div class="checkbox login-checkbox">
                                    <label>
                                        <input type="checkbox" class="i-checks"> Remember me </label>
                                    <p class="help-block small">(if this is a private computer)</p>
                                </div>
                                
                                <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12"></div>
            </div>
            <div class="row">
                <div class="col-md-12 col-md-12 col-sm-12 col-xs-12 text-center">
                    <p>Copyright © 2018 <a href="">Bootcamp21</a> made with LOVE.</p>
                </div>
            </div>
        </div>

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    </body>

</html>
