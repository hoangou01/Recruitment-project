<%-- 
    Document   : login
    Created on : Aug 2, 2022, 9:34:03 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/login" var="action" />

<div id="login_section">
    <div class="row">
        <div class="col-md-6">
            <div class="login_left">
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
                <form class="modal-content_login animate" action="${action}" method="post">
                    <div class="imgcontainer">
                        <p>Chào mừng bạn đến với H&M VIEC</p>
                        <h3>Login</h3>
                    </div>
                    <hr class="hr_signlog">
                    <div class="container">
                        <P><b>THÔNG TIN TÀI KHOẢN</b></P>
                         <c:if test="${param.error != null}">
                            <div class="alert alert-danger" >
                                Da co loi xay ra! Vui long quay lai sau!
                            </div>
                        </c:if>
                        <label for="uname"><b>Username</b> <b class="text-danger">*</b></label>
                        <input type="text" class="input_username" placeholder="Enter Username" name="username" required>

                        <label for="psw"><b>Password</b> <b class="text-danger">*</b></label>
                        <input type="password" class="input_password" placeholder="Enter Password" name="password" required>
                        <span class="psw span_right" ><a href="#">Quên mật khẩu ?</a></span>
                       
                        <button class="btn_login"  type="submit">Đăng Nhập</button>
                        <div class="below_btn_login">

                            <span class="psw span_left" >Bạn chưa có <a href="<c:url value="/register/candidate" />">Tài Khoản ?</a></span>
                        </div>
                    </div>


                </form>
            </div>
        </div>
    </div>
</div>
