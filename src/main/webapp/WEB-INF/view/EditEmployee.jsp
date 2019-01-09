
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<sql:setDataSource var = "jobtitles" driver = "com.mysql.jdbc.Driver"
                   url = "jdbc:mysql://localhost:3306/overtime_new"
                   user = "root"  password = ""/>

<sql:query dataSource = "${jobtitles}" var = "result">
    SELECT * from job;
</sql:query>
<sql:query dataSource = "${jobtitles}" var = "resultmaxs">
    SELECT max(nik) as max from employee;
</sql:query>
<sql:query dataSource = "${jobtitles}" var = "resultt">
    SELECT * from employee;
</sql:query>
    
<form method="POST" class="form-group" action="/UpdateEmployee">
    <div class="form-group-inner">
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                <label class="login2 pull-right pull-right-pro">NIK</label>
            </div>
            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">

                <input type="text"  class="form-control" name="nik" value="${employee.nik}" readonly="true"/>
            </div>
        </div>
    </div>

    <div class="form-group-inner">
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                <label class="login2 pull-right pull-right-pro">Name</label>
            </div>
            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                <input type="text" class="form-control" name="name" value="${employee.name}"/>
            </div>
        </div>
    </div>

    <div class="form-group-inner">
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                <label class="login2 pull-right pull-right-pro">Email</label>
            </div>
            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                <input type="text" class="form-control" name="email" value="${employee.email}"/>
            </div>
        </div>
    </div>

    <div class="form-group-inner">
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                <label class="login2 pull-right pull-right-pro">Phone</label>
            </div>
            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                <div class="input-mark-inner mg-b-22">
                    <input type="text" class="form-control" data-mask="9999999999999" placeholder="" name="phoneNumber" value="${employee.phoneNumber}">
                    <!--<span class="help-block">(999) 999-9999</span>-->
                </div>
            </div>
        </div>
    </div>

    <div class="form-group-inner">
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                <label class="login2 pull-right pull-right-pro">Hire Date</label>
            </div>
            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                <div class="input-mark-inner mg-b-22">
                    <div class="form-group data-custon-pick" id="data_2">

                        <div class="input-group date">
                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                            <input type="text" class="form-control" name="hireDate" value="${employee.hireDate}">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="form-group-inner">
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                <label class="login2 pull-right pull-right-pro">Job Id</label>
            </div>
            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                <div class="form-select-list">
                    <select class="form-control custom-select-value" name="jobId">
                        <option value="${employee.jobId.jobId}">${employee.jobId.jobTitle}</option>
                        <option value="AC_Account">Public Accountant</option>
                        <option value="AC_MGR">Accounting Manager</option>
                        <option value="AD_ASST">Administration Assistant</option>
                        <option value="AD_PRES">President</option>
                        <option value="AD_VP">Administration VIce President</option>
                        <option value="FI_ACCOUNT">Accountant</option>
                        <option value="FI_MGR">Finance Manager</option>
                        <option value="IT_PROG">IT Programmer</option>
                        <option value="PU_CLERK">Purchasing Clerk</option>
                        <option value="PU_MAN">Purchasing Clerk</option>
                        <option value="SA_MAN">Sales Manager</option>
                        <option value="SA_REP">Sales Representative</option>
                        <option value="SH_CLERK">Shipping Clerk</option>
                        <option value="ST_CLERK">Stock Clerk</option>
                        <option value="ST_MAN">Stock Manager</option>

                    </select>
                </div>
            </div>
        </div>
    </div>


    <div class="form-group-inner">
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                <label class="login2 pull-right pull-right-pro">Salary</label>
            </div>
            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                <div class="mg-b-22">
                    <input type="text" class="form-control" placeholder="" name="salary" value="${employee.salary}">
                </div>
            </div>
        </div>
    </div>



    <div class="form-group-inner">
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                <label class="login2 pull-right pull-right-pro"> Manager ID</label>
            </div>
            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                <div class="form-select-list">
                    <select class="form-control custom-select-value" name="managerId">
                        <c:forEach var="rowss" items="${resultt.rows}">
                            <option value="<c:out value="${rowss.manager_id}"/>"><c:out value="${rowss.name}"/></option>
                        </c:forEach>
                    </select>
                </div>
            </div>
        </div>
    </div>

    <div>
        <input type="hidden" name="isDelete" value="0">
    </div>

    <div class="modal-footer">
        <button class="btn btn-custon-rounded-four btn-primary btn-lg" data-dismiss="modal" ">Cancel</button>
        <button type="submit" class="btn btn-custon-rounded-four btn-primary btn-lg" id="ASD" name="" onclick="swal('Good job!', 'You clicked the button!', 'success')">Save</button>
    </div>
</form>

