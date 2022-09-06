<%-- 
    Document   : signincompany
    Created on : Jul 31, 2022, 11:04:03 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/register/company" var="action" />
<div class="signin_company bg-dark radius-bg">
    <div style="height: 50vh;">
        <form:form class="modal-content animate" action="${action}" method="post" modelAttribute = "user">
            <div class="imgcontainer">
                <h3>Sign in for company</h3>
            </div>
            <hr class="hr_signlog">
            <div class="container">
                <P><b>THÔNG TIN TÀI KHOẢN</b></P>
                <label ><b>Username</b> <b class="text-danger">*</b></label>
                <form:input type="text" class="input_username" placeholder="Enter Username" path="username" ></form:input>
                <form:errors path="username" element="div" cssClass="text-danger"/>
                <c:if test="${errMsg != null}">
                    <div > <p class="text-danger">${errMsg}</p></div>
                </c:if>
                <label ><b>Password</b> <b class="text-danger">*</b></label>
                <form:input type="password" class="input_password" placeholder="Password" path="password" ></form:input>
                <form:errors path="password" element="div" cssClass="text-danger"/> 
                <label ><b>Enter Password</b> <b class="text-danger">*</b></label>
                <form:input type="password" class="input_password" placeholder="Enter Password" path="repassword" ></form:input>
                <form:errors path="repassword" element="div" cssClass="text-danger"/> 
                <button class="btn_login btn_login_company" type="submit">Đăng Ký</button>
                <div class="below_btn_login">

                    <span class="psw span_left">Bằng việc nhấn nút đăng ký bạn đã đồng ý với <a href="#">điều khoản</a></span>
                </div>
            </div>


        </form:form>
    </div>


</div>
<div class="" style="height: 800px;background-color: #fff;"></div>
