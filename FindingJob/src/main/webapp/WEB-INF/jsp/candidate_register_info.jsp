<%-- 
   Document   : signincandidate1
   Created on : Aug 9, 2022, 9:29:25 PM
   Author     : ANHMINH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:url value ="/register/candidate/info" var ="action"/>


<div id="login_section">
    <div class="row">
        <div class="col-md-6">
            <div class="login_left">
                <div class="login_left-img">
                    <img src="https://blogcdn.muaban.net/wp-content/uploads/2019/09/timvieclamtaihanoi2.jpg" alt="">
                    <div class="login_left-title text-center">
                        <div class="login_left-ing_img" style="margin-bottom: -40px;">
                            <img src="https://res.cloudinary.com/hm-findingjob/image/upload/v1659498605/%E1%BA%A3nh%20c%E1%BB%A7a%20project%20finding%20job/z3613432030895_0d06ac09a1b2703dc88e8b97effdc336-removebg-preview_2_zdain2.png" alt="" style="width: 300px;height: 170px;">
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
                <form:form class="modal-content_login animate" enctype = "multipart/form-data" action="${action}" method = "post" modelAttribute="candidate">
                    <div class="container form_moreinfo">
                        <P class="text-center"><h3 class="text-center">Bổ sung thông tin</h3>
                        <P class="text-center notification">vui lòng bổ sung các thông tin dưới đây để hoàn tất đăng
                            ký tài khoản</P>

                        <label for="psw"><b>Họ và tên</b> <b class="text-danger">*</b></label>

                        <form:input class="input_username" placeholder="Enter name" id="fullname" path = "fullname" required = "required"/> 
                        <label for="sdt"><b>Số điện thoại</b> <b class="text-danger">*</b></label>
                        <form:input class="input_username" id="phone"  path = "phone"
                                    placeholder="Ví dụ : 0927575201" pattern="[0]{1}[1-9]{9}" required = "required" />
                        <form:input hidden = "true" path="userID" value = "${user.id}"/>
                        <form:input hidden = "true" path="email" value = "${user.username}"/>
                        <label for="imgFile"><b>Ảnh cá nhân</b> <b class="text-danger">*</b></label>
                        <form:input class="form-control form-control-sm form-control_inputFile" id="formFileSm" path = "file"  type="file" required = "required"/>
                        <br>
                        <label for="dateOfBirth"><b>Ngày sinh</b></label>
                        <form:input class="input_date" type="date" path = "dateOfBirth" required = "required"/>
                        <label for="dateOfBirth"><b>Giới tính</b></label>
                        <form:select class="btn   btn_login text-dark btn-dropdown"
                                     type="button" id="dropdow"  data-bs-toggle="dropdown" aria-expanded="false" path = "sex">
                            <option value = "Nam">Nam</option>
                            <option value = "Nữ">Nữ</option>
                        </form:select>
                        <br>
                        <br>
                        <label ><b>Thành phố</b> <b class="text-danger">*</b></label>
                        <form:select class="btn   btn_login text-dark btn-dropdown"
                                     type="button" id="dropdowncity"  data-bs-toggle="dropdown" aria-expanded="false" path = "city">
                            <option value = "HCM">TP.HCM</option>
                            <option value = "Hà Nội">Hà Nội</option>
                            <option value = "Đà Nẵng">Đà Nẵng</option>
                        </form:select>

                        <br>
                        <!-- <hr class="hr_signlog"> -->
                        <label ><b>Bằng cấp</b> <b class="text-danger">*</b></label>
                        <form:select class="btn  btn_login text-dark btn-dropdown"
                                     type="button" id="dropdowncity"  data-bs-toggle="dropdown" aria-expanded="false" path = "degree">
                            <option value = "Cấp 3">Cấp 3</option>
                            <option value = "Bằng nghề">Bằng nghề</option>
                            <option value = "Cao đẳng">Cao đẳng</option>
                            <option value = "Đại học">Đại học</option>
                        </form:select>
                        <label ><b>Chọn chuyên ngành</b> <b class="text-danger">*</b></label>
                        <form:select class="btn btn_login text-dark btn-dropdown" multiple="none"  type="button" path = "major">
                            <c:forEach items="${majorAuto}" var="m">
                                <option value="${m.name}">${m.name}</option>
                            </c:forEach>
                        </form:select>


                        <br>
                        <button class="btn_login" type="submit">xác nhận</button>

                    </div>


                </form:form>
            </div>
        </div>
    </div>
</div>


