<%-- 
    Document   : createjob
    Created on : Aug 13, 2022, 12:47:40 PM
    Author     : ANHMINH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec"
           uri="http://www.springframework.org/security/tags" %>
<c:url value="/company/create-job" var="action" />

<div class="signin_company bg-dark radius-bg">
    <div class="" style="height: 50vh;">
        <form:form class="modal-content animate " enctype = "multipart/form-data" action="${action}" method="post" modelAttribute="job">
            <div class="imgcontainer">
                <h3>Create Recruitment</h3>
            </div>
            <hr class="hr_signlog">
            <div class="container">
                <P><b>THÔNG TIN BÀI TUYỂN DỤNG</b></P>
                <label for="uname"><b>Tiêu đề</b> <b class="text-danger">*</b></label>
                <form:input type="text" class="input_username" placeholder="Enter tittle" path="name"  required="required"></form:input>
                    <br>
                    <label for="psw"><b>Vị trí tuyển dụng</b> <b class="text-danger">*</b></label>
                    <div class="flex" style="margin-top: -5px;">
                    <form:select class="btn dropdown-toggle btn_login text-dark btn-dropdown"
                                 type="button" id="dropdown"  path = "position">
                        <option value = "Thực tập sinh">Thực tập sinh</option>
                        <option value = "Nhân viên">Nhân viên</option>
                        <option value = "Quản lý">Quản lý</option>
                    </form:select>
                </div>
                <br>
                <label for="psw" class="d-flex">
                    
                    <div>
                        <b>Ngành nghề</b><b class="text-danger">*</b> 
                    </div>
                     
                    <div style="float: right; margin-top: -3px;margin-left: 63%;">
                        <button type ="button" onclick="javascript:add_btn_majors()" class="btn btn-dark" style="width: 60px;height: 30px;line-height: 0px;margin-left: 5px;">+</button>
                        <button type ="button" onclick="javascript:del_btn_majors()" class="btn btn-dark" style="width: 60px;height: 30px;line-height: 0px; margin-left: 5px;">-</button>
                    </div></label> 
                <div class="dropdown mb-10" style="" id = "addMajor">
                    <form:select class="btn  dropdown-toggle btn_login text-dark btn-dropdown" multiple="none" id = "majors" type="button" path = "majors">
                        <c:forEach items="${majorList}" var="m">
                            <option value="${m.id}">${m.name}</option>
                        </c:forEach>
                    </form:select>

                </div>


                <label for="psw"><b>Loại hình công việc</b> <b class="text-danger">*</b></label>
                <div class="dropdown mb-10" style="">
                    <form:select class="btn  dropdown-toggle btn_login text-dark btn-dropdown"
                                 type="button" id="dropdown"  path = "type">
                        <option value = "Full-time">Full-time</option>
                        <option value = "Part-time">Part-time</option>
                        <option value = "Remote">Remote</option>
                    </form:select>
                </div>

                <label for="psw"><b>Giới tính</b> <b class="text-danger">*</b></label>
                <div class="dropdown mb-10" style="">
                    <form:select class="btn  dropdown-toggle btn_login text-dark btn-dropdown"
                                 type="button" id="dropdown" path = "sexRequired">
                        <option value = "Nam">Nam</option>
                        <option value = "Nữ">Nữ</option>
                        <option value = "Tất cả">Tất cả</option>
                    </form:select>
                </div>

                <label for="psw"><b>Nơi làm việc</b> <b class="text-danger">*</b></label>
                <div class="dropdown mb-10" style="">
                    <form:select class="btn  dropdown-toggle btn_login text-dark btn-dropdown"
                                 type="button" id="dropdowncity"  path = "city">
                        <option value = "HCM">TP.HCM</option>
                        <option value = "Hà Nội">Hà Nội</option>
                        <option value = "Đà Nẵng">Đà Nẵng</option>
                    </form:select>
                </div>
                <label for="companyaddress"><b>Địa chỉ</b> <b class="text-danger">*</b></label>
                <form:input type="text" class="input_text" placeholder="Enter address" path="address"  required="required"></form:input>
                    <label for="uname"><b>Phúc lợi</b> <b class="text-danger">*</b></label>
                <form:textarea type="text" class="input_username" placeholder="Enter benefits" path="benefit"  required="required"></form:textarea>

                    <label for="psw"><b>Yêu cầu bằng cấp</b> <b class="text-danger">*</b></label>
                    <div class="dropdown mb-10" style="">
                    <form:select class="btn  dropdown-toggle btn_login text-dark btn-dropdown"
                                 type="button" id="dropdowncity"  path = "degreeRequired">
                        <option value = "Đại học">Đại học</option>
                        <option value = "Cao đẳng">Cao đẳng</option>
                        <option value = "Bằng nghề">Bằng nghề</option>
                        <option value = "Cấp 3">Cấp 3</option>
                    </form:select>
                </div>
                <label for="age"><b>Yêu cầu độ tuổi</b> <b class="text-danger">*</b></label>
                <br>
                <div class="flex">
                    <label class="label_fromTo">Từ: </label>
                    <form:input type="number" class="input_username w-40" style="margin-right: 5px;"
                                placeholder="Enter age from" path="ageFrom"  required="required"></form:input>
                        <label class="label_fromTo">Đến: </label>
                    <form:input type="number" class="input_username w-40" path="ageTo" placeholder="Enter age to" 
                                required="required"></form:input>
                    </div>

                    <label for="salary"><b>Mức lương</b> <b class="text-danger">*</b></label>
                    <br>
                    <div class="flex">
                        <label class="label_fromTo">Từ: </label>
                    <form:input class="input_username w-40" style="margin-right: 5px;"
                                placeholder="Enter salary from" path="salaryFrom"  required="required"></form:input>
                        <label class="label_fromTo">Đến: </label>
                    <form:input class="input_username w-40" path="salaryTo" placeholder="Enter salary to" 
                                required="required"></form:input>
                    </div>
                    <label for="salary"><b>Yêu cầu kinh nghiệm(tháng)</b> <b class="text-danger">*</b></label>
                    <div>
                    <form:input type="number" class="input_username" placeholder="Enter experience" path="experienceRequired"  required="required"></form:input>

                    </div>
                    <label for="salary"><b>Thời gian tập sự(tháng)</b> <b class="text-danger">*</b></label>
                    <div>
                    <form:input type="number" class="input_username" placeholder="Enter experience" path="probationaryPeriod"  required="required"></form:input>
                    </div>
                    <label for="enddate"><b>Ngày hết hạn</b> <b class="text-danger">*</b></label>
                <form:input class="input_date" type="date" id="endDate" path="endDate"></form:input>
                    <br>
                    <label for="description"><b>Yêu cầu công việc</b> <b class="text-danger">*</b></label>
                <form:textarea type="text" class="input_username" placeholder="Enter description" path="jobRequired" style="white-space: pre-wrap;" rows="12"  required="required"></form:textarea>

                    <br>
                    <label for="description"><b>Mô tả</b> <b class="text-danger">*</b></label>
                <form:textarea type="text" class="input_username" placeholder="Enter description" path="description" style="white-space: pre-wrap;" rows="12"  required="required"></form:textarea>

                    <button class="btn_login" type="submit">Đăng tin</button>
                    <div class="below_btn_login">

                        <span class="psw span_left">Bằng việc nhấn nút đăng tin bạn đã đồng ý với <a href="#">điều
                                khoản</a></span>
                    </div>
                </div>


        </form:form>
    </div>
</div>
<script type="text/javascript">
    var count = -1;
    add_btn_majors = function () {
        const btn = document.createElement('select');
        btn.className = "btn  dropdown-toggle btn_login text-dark btn-dropdown";
        btn.name = "majors";
        count = count + 1;
        btn.id = "majors" + count;
    <c:forEach items="${majorList}" var="m">
        const option${m.id} = document.createElement('option');
        option${m.id}.value = '${m.id}';
        option${m.id}.text = '${m.name}';
        btn.appendChild(option${m.id});
    </c:forEach>
        const a = document.getElementById('addMajor');
        a.appendChild(btn);
    };
    del_btn_majors = function () {
        if (count >= 0) {
            const btn = document.getElementById('majors' + count);
            const a = document.getElementById('addMajor');
            btn.parentNode.removeChild(btn);
            count = count - 1;
        }
    };
</script>
<div class="" style="height: 1500px;background-color: #fff;"></div>


