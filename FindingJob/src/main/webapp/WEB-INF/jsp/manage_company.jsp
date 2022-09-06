<%-- 
    Document   : manage_company
    Created on : Sep 1, 2022, 2:23:46 PM
    Author     : ANHMINH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:url value="/api/company/manage/delete" var="endpoint" />
<div class="admin_section">
    <div class="row">
        <div class="col-md-2">
            <div class="menu_admin">
                <img src="https://res.cloudinary.com/dnlryecwq/image/upload/v1659536351/z3613432030895_0d06ac09a1b2703dc88e8b97effdc336-removebg-preview_2_zdain2_s8c92f.png"
                     alt="">
                    <ul class="menu_admin_ul">
                        <li class="text-dark"><a href="#check_job"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-shield-check job-content_icon_admin" viewBox="0 0 16 16">
                                    <path d="M5.338 1.59a61.44 61.44 0 0 0-2.837.856.481.481 0 0 0-.328.39c-.554 4.157.726 7.19 2.253 9.188a10.725 10.725 0 0 0 2.287 2.233c.346.244.652.42.893.533.12.057.218.095.293.118a.55.55 0 0 0 .101.025.615.615 0 0 0 .1-.025c.076-.023.174-.061.294-.118.24-.113.547-.29.893-.533a10.726 10.726 0 0 0 2.287-2.233c1.527-1.997 2.807-5.031 2.253-9.188a.48.48 0 0 0-.328-.39c-.651-.213-1.75-.56-2.837-.855C9.552 1.29 8.531 1.067 8 1.067c-.53 0-1.552.223-2.662.524zM5.072.56C6.157.265 7.31 0 8 0s1.843.265 2.928.56c1.11.3 2.229.655 2.887.87a1.54 1.54 0 0 1 1.044 1.262c.596 4.477-.787 7.795-2.465 9.99a11.775 11.775 0 0 1-2.517 2.453 7.159 7.159 0 0 1-1.048.625c-.28.132-.581.24-.829.24s-.548-.108-.829-.24a7.158 7.158 0 0 1-1.048-.625 11.777 11.777 0 0 1-2.517-2.453C1.928 10.487.545 7.169 1.141 2.692A1.54 1.54 0 0 1 2.185 1.43 62.456 62.456 0 0 1 5.072.56z"/>
                                    <path d="M10.854 5.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L7.5 7.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
                                </svg>Ứng cử viên</a></li>
                        <li class="text-dark"><a href="#manage_job"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-bar-chart job-content_icon_admin"  viewBox="0 0 16 16">
                                    <path d="M4 11H2v3h2v-3zm5-4H7v7h2V7zm5-5v12h-2V2h2zm-2-1a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h2a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1h-2zM6 7a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v7a1 1 0 0 1-1 1H7a1 1 0 0 1-1-1V7zm-5 4a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1v-3z"/>
                                </svg>Quản lý công việc</a></li>
                        <li class="text-dark"><a href="<c:url value="/"/>"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-in-right job-content_icon_admin" viewBox="0 0 16 16">
                                    <path fill-rule="evenodd" d="M6 3.5a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-2a.5.5 0 0 0-1 0v2A1.5 1.5 0 0 0 6.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-8A1.5 1.5 0 0 0 5 3.5v2a.5.5 0 0 0 1 0v-2z"/>
                                    <path fill-rule="evenodd" d="M11.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H1.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"/>
                                </svg>Thoát</a></li>
                    </ul>
            </div>
        </div>
        <div class="col-md-10">
            <div class="main_admin">
                <div class="check_job" id="check_job" style="margin-left: 0;">
                    <h3 class="text-center" style="margin-top: 30px;">Danh sách ứng viên đã nộp đơn</h3>

                    <div class="row">
                        <div class="col-md-11">
                            <div class="row">

                                <c:forEach items="${listC}" var="j">
                                    <div class="col-md-12">

                                        <div class="content-job content-job_manageC">
                                            <a onclick="document.getElementById('id${j[8]}').style.display = 'block'" class="text-dark flex w-100">
                                                <div class="left-job">
                                                    <c:choose>
                                                        <c:when test="${j[5].startsWith('http') == true}">
                                                            <img
                                                                src="${j[5]}"
                                                                alt="" class="logo_company">
                                                            </c:when>
                                                            <c:when test="${j[5].startsWith('http') == false}">

                                                                <img src="https://res.cloudinary.com/hm-findingjob/image/upload/v1659498605/%E1%BA%A3nh%20c%E1%BB%A7a%20project%20finding%20job/z3613432030895_0d06ac09a1b2703dc88e8b97effdc336-removebg-preview_2_zdain2.png"
                                                                     alt="" class="logo_company">
                                                                </c:when>
                                                            </c:choose>

                                                            </div>
                                                            <div class="right-job">
                                                                <h4 class="title-job">${j[9]}</h4>
                                                                <p class="company-name">${j[1]} - ${j[2]}</p>
                                                                <div class="detail-job">
                                                                    <ul>
                                                                        <li><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-telephone job-content_icon" viewBox="0 0 16 16">
                                                                                <path d="M3.654 1.328a.678.678 0 0 0-1.015-.063L1.605 2.3c-.483.484-.661 1.169-.45 1.77a17.568 17.568 0 0 0 4.168 6.608 17.569 17.569 0 0 0 6.608 4.168c.601.211 1.286.033 1.77-.45l1.034-1.034a.678.678 0 0 0-.063-1.015l-2.307-1.794a.678.678 0 0 0-.58-.122l-2.19.547a1.745 1.745 0 0 1-1.657-.459L5.482 8.062a1.745 1.745 0 0 1-.46-1.657l.548-2.19a.678.678 0 0 0-.122-.58L3.654 1.328zM1.884.511a1.745 1.745 0 0 1 2.612.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z"/>
                                                                            </svg><b class="">${j[3]}</b> </li>
                                                                        <li><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                                                                 class="bi bi-geo-alt job-content_icon" viewBox="0 0 16 16">
                                                                                <path
                                                                                    d="M12.166 8.94c-.524 1.062-1.234 2.12-1.96 3.07A31.493 31.493 0 0 1 8 14.58a31.481 31.481 0 0 1-2.206-2.57c-.726-.95-1.436-2.008-1.96-3.07C3.304 7.867 3 6.862 3 6a5 5 0 0 1 10 0c0 .862-.305 1.867-.834 2.94zM8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10z" />
                                                                                <path d="M8 8a2 2 0 1 1 0-4 2 2 0 0 1 0 4zm0 1a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
                                                                            </svg>TP.${j[4]}</li>
                                                                        <li><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                                                                 class="bi bi-calendar job-content_icon" viewBox="0 0 16 16">
                                                                                <path
                                                                                    d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z" />
                                                                            </svg><jsp:useBean id="date" class="java.util.Date"/>
                                                                            <fmt:formatDate value="${j[6]}" type="date" pattern="dd-MM-yyyy"/></li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                            </a>
                                                            </div>
                                                            <div id="id${j[8]}" class="modal">

                                                                <div class="modal-content animate" style="width: 80%;height: auto;" action="/action_page.php" method="post">

                                                                    <div class="position-relative">

                                                                        <img style="width: 100%;height: 100%;"
                                                                             src="${j[7]}"
                                                                             alt="">
                                                                            <a  class="eye_btn" onclick="document.getElementById('id${j[8]}').style.display = 'none'">x</a>
                                                                    </div>
                                                                </div>
                                                            </div>


                                                            </div>
                                                        </c:forEach>

                                                        </div>
                                                        </div>

                                                        </div>
                                                        </div>
                                                        <div id="manage_job">
                                                            <h5>Quản Lý công việc</h5>
                                                            <div class="col-md-11">

                                                                <form>
                                                                    <table class="table  table-bordered table-hover" style="">
                                                                        <tr>
                                                                            <th>Mã</th>
                                                                            <th>Tên công việc</th>
                                                                            <th>Ngày tạo</th>
                                                                            <th>Hạn nộp</th>
                                                                            <th>Thực hiện</th>
                                                                        </tr>
                                                                        <c:forEach items="${listJ}" var="j">
                                                                            <tr id = "d${j.id}">
                                                                                <td>${j.id}</td>
                                                                                <td>${j.name}</td>
                                                                                <td><jsp:useBean id="date1" class="java.util.Date"/>
                                                                                    <fmt:formatDate value="${j.createdDate}" type="date" pattern="dd-MM-yyyy"/></td>
                                                                                <td><jsp:useBean id="date2" class="java.util.Date"/>
                                                                                    <fmt:formatDate value="${j.endDate}" type="date" pattern="dd-MM-yyyy"/></td>
                                                                                <td>
                                                                                    <div class="d-flex action_btn">

                                                                                        <a href="<c:url value="/job-detail/${j.id}/1"/>"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-info-square-fill" viewBox="0 0 16 16">
                                                                                                <path d="M0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2zm8.93 4.588-2.29.287-.082.38.45.083c.294.07.352.176.288.469l-.738 3.468c-.194.897.105 1.319.808 1.319.545 0 1.178-.252 1.465-.598l.088-.416c-.2.176-.492.246-.686.246-.275 0-.375-.193-.304-.533L8.93 6.588zM8 5.5a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>
                                                                                            </svg></a>
                                                                                        <a onclick ="javascript:deleteJob('${endpoint}', ${j.id})"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash-fill" viewBox="0 0 16 16">
                                                                                                <path d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0z"/>
                                                                                            </svg></a>                                                                        

                                                                                    </div>
                                                                                </td>
                                                                            </tr>
                                                                        </c:forEach>
                                                                    </table>
                                                                </form>
                                                            </div>
                                                        </div>
                                                        <div id="addjob">
                                                            <button type ="button" class="btn_addjob_manage" onclick="javascript:btn_addJob_onclick(${company.isChecked})">Thêm công việc</button>
                                                        </div>
                                                        </div>

                                                        </div>

                                                        </div>
                                                        
                                                        </div>
                                                         <div id="alert" class="modal">
                                                             <div class="modal-content animate">
                                                                <div class="position-relative">
                                                                    <div style="text-align: center;"><strong>Vui lòng chờ!!!</strong></div>
                                                                    <div style="text-align: center;"><strong >Tài khoản của bạn đang trong quá trình kiểm duyệt!!!</strong></div>
                                                                    
                                                                    
                                                                    <a href="#" class="eye_btn" onclick="document.getElementById('alert').style.display = 'none'">x</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <script type = "text/javascript">
                                                          function  btn_addJob_onclick(i){
                                                                if(i == 1){
                                                                    window.location ="/FindingJob/company/create-job";
                                                                }else{
                                                                    document.getElementById('alert').style.display = 'block';
                                                                }
                                                            }
                                                        </script>
                                                        <script type = "text/javascript">
                                                             function deleteJob(endpoint,jobID){
                                                                let id1 = jobID;
                                                               fetch(endpoint, {
                                                                    method: 'post',
                                                                    body: JSON.stringify({
                                                                        "jobID": jobID
                                                                    }),
                                                                    headers: {
                                                                        "Content-Type": "application/json"}
                                                                    }).then(function () {
                                                                        document.getElementById('d'+id1).style.display = "none";
                                                                    }); 
                                                            };
                                                        </script>

