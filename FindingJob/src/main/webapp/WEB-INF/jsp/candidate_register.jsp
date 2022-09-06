<%-- 
    Document   : signincandidate
    Created on : Jul 31, 2022, 11:23:46 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:url value ="/register/candidate" var ="action"/>
<div id="login_section">
    <div class="row">
        <div class="col-md-6">
            <div class="login_left" style="height: 100vh;">
                <div class="login_left-img">
                    <img  src="https://blogcdn.muaban.net/wp-content/uploads/2019/09/timvieclamtaihanoi2.jpg" alt="" >
                    <div class="login_left-title text-center">
                        <h5>2,000,000</h5>
                        <h4>cơ hội việc làm</h4>
                        <h4>mỗi ngày</h4>


                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="login_right">
                <form:form class = "modal-content_login animate" action="${action}" method="post" modelAttribute = "user">


                    <div class="imgcontainer">
                        <p>Chào mừng bạn đến với H&M VIEC</p>
                        <h3>Sign in for candidate</h3>
                    </div>
                    <hr class="hr_signlog">
                    <div class="container">
                        <P><b>THÔNG TIN TÀI KHOẢN</b></P>
                        <label for="uname"><b>Địa chỉ email</b> <b class="text-danger">*</b></label>
                        <form:input type = "email" class="input_username" placeholder="Enter Username " pattern=".+@gmail\.com"  id="username" path="username" required = "required"/>
                        <form:errors path="username" element="div" cssClass="text-danger"/>
                        <c:if test="${errMsg != null}">
                            <div > <p class="text-danger">${errMsg}</p></div>
                        </c:if>
                        <label for="psw"><b>Password</b> <b class="text-danger">*</b></label>
                        <form:input type="password" class="input_password" placeholder="Enter Password" id="password" path="password" required = "required"/>
                        <form:errors path="password" element="div" cssClass="text-danger"/> 
                        <label for="psw"><b>Nhập lại password</b> <b class="text-danger">*</b></label>
                        <form:input type="password" class="input_password" placeholder="Enter Password" id="repassword" path="repassword" required = "required"/>
                        <form:errors path="repassword" element="div" cssClass="text-danger"/> 

                        <button class="btn_login"  type="submit">Đăng Ký</button>
                        <div class="below_btn_login">

                            <span class="psw span_left" >Bằng việc nhấn nút đăng ký bạn đã đồng ý với <a href="#">điều khoản</a></span>
                        </div>
                    </div>


                </form:form>
            </div>
        </div>
    </div>
</div>


