<%-- 
    Document   : signincandidate2
    Created on : Aug 9, 2022, 9:31:58 PM
    Author     : ANHMINH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:url value ="/register/candidate/info/major" var ="action"/>
<div id="login_section">
        <div class="row">
            <div class="col-md-6">
                <div class="login_left">
                    <div class="login_left-img">
                        <img src="https://blogcdn.muaban.net/wp-content/uploads/2019/09/timvieclamtaihanoi2.jpg" alt="">
                        <div class="login_left-title text-center">
                            <div class="login_left-ing_img" style="margin-bottom: -40px;">
                                <img src="https://res.cloudinary.com/hm-findingjob/image/upload/v1659498605/%E1%BA%A3nh%20c%E1%BB%A7a%20project%20finding%20job/z3613432030895_0d06ac09a1b2703dc88e8b97effdc336-removebg-preview_2_zdain2.png"
                                    alt="" style="width: 300px;height: 170px;">
                            </div>
                            <h5>2,000,000</h5>
                            <h4>cơ hội việc làm</h4>
                            <h4>mỗi ngày</h4>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="login_right">
                    <form class="modal-content_login animate" action="/action_page.php" method="post">
                        <!-- <div class="imgcontainer">
                            
                            <h3>Nghề nghiệp</h3>
                            <p>vui lòng chọn những ngành bạn quan tâm</p>
                        </div>
                        -->
                        <div class="container form_moreinfo">
                            <P class="text-center"><h3 class="text-center">Bổ sung thông tin</h3></P>
                            <P class="text-center notification">vui lòng bổ sung thông ngành nghề bạn quan tâm dưới đây để hoàn tất đăng
                                ký tài khoản</P>
                            <div class="row">
                                <div class="oneline_choosemayor">
                                    <div class="col-md-6">
                                        <div class="btn_choose_mayor">IT</div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="btn_choose_mayor">Finance</div>
                                    </div>
                                </div>
                                <div class="oneline_choosemayor">
                                    <div class="col-md-6">
                                        <div class="btn_choose_mayor">Logistics</div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="btn_choose_mayor">CEO</div>
                                    </div>
                                </div>
                                <div class="oneline_choosemayor">
                                    <div class="col-md-6">
                                        <div class="btn_choose_mayor">haha</div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="btn_choose_mayor">haha</div>
                                    </div>
                                </div>
                                <div class="oneline_choosemayor">
                                    <div class="col-md-6">
                                        <div class="btn_choose_mayor">haha</div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="btn_choose_mayor">haha</div>
                                    </div>
                                </div>
                                
                                
                            </div>
                            <button class="btn_login btn_login_choosemayor" type="submit">xác nhận</button>
                            <!-- <div class="below_btn_login">

                                <span class="psw span_left">Bằng việc nhấn nút đăng ký bạn đã đồng ý với <a
                                        href="#">điều khoản</a></span>
                            </div> -->
                        </div>


                    </form>
                </div>
            </div>
        </div>
    </div>