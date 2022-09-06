<%-- 
    Document   : manage_candidate
    Created on : Sep 1, 2022, 2:29:59 PM
    Author     : ANHMINH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:url value="/api/candidate/manage/delete" var="endpoint" />
<div class="admin_section">
    <div class="row">
        <div class="col-md-2">
            <div class="menu_admin">
                <img src="https://res.cloudinary.com/dnlryecwq/image/upload/v1659536351/z3613432030895_0d06ac09a1b2703dc88e8b97effdc336-removebg-preview_2_zdain2_s8c92f.png"
                     alt="">
                    <ul class="menu_admin_ul">
                        <li class="text-dark"><a href="#list_job"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-shield-check job-content_icon_admin" viewBox="0 0 16 16">
                                    <path d="M5.338 1.59a61.44 61.44 0 0 0-2.837.856.481.481 0 0 0-.328.39c-.554 4.157.726 7.19 2.253 9.188a10.725 10.725 0 0 0 2.287 2.233c.346.244.652.42.893.533.12.057.218.095.293.118a.55.55 0 0 0 .101.025.615.615 0 0 0 .1-.025c.076-.023.174-.061.294-.118.24-.113.547-.29.893-.533a10.726 10.726 0 0 0 2.287-2.233c1.527-1.997 2.807-5.031 2.253-9.188a.48.48 0 0 0-.328-.39c-.651-.213-1.75-.56-2.837-.855C9.552 1.29 8.531 1.067 8 1.067c-.53 0-1.552.223-2.662.524zM5.072.56C6.157.265 7.31 0 8 0s1.843.265 2.928.56c1.11.3 2.229.655 2.887.87a1.54 1.54 0 0 1 1.044 1.262c.596 4.477-.787 7.795-2.465 9.99a11.775 11.775 0 0 1-2.517 2.453 7.159 7.159 0 0 1-1.048.625c-.28.132-.581.24-.829.24s-.548-.108-.829-.24a7.158 7.158 0 0 1-1.048-.625 11.777 11.777 0 0 1-2.517-2.453C1.928 10.487.545 7.169 1.141 2.692A1.54 1.54 0 0 1 2.185 1.43 62.456 62.456 0 0 1 5.072.56z"/>
                                    <path d="M10.854 5.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L7.5 7.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
                                </svg>Công việc đã nộp đơn</a></li>
                        <li class="text-dark"><a href="#manage_job"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-bar-chart job-content_icon_admin"  viewBox="0 0 16 16">
                                    <path d="M4 11H2v3h2v-3zm5-4H7v7h2V7zm5-5v12h-2V2h2zm-2-1a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h2a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1h-2zM6 7a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v7a1 1 0 0 1-1 1H7a1 1 0 0 1-1-1V7zm-5 4a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1v-3z"/>
                                </svg>Quản lý CV</a></li>
                        <li class="text-dark"><a href ="<c:url value = "/candidate/create-cv"/>"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-circle-dotted job-content_icon_admin" viewBox="0 0 16 16">
                                    <path d="M8 0c-.176 0-.35.006-.523.017l.064.998a7.117 7.117 0 0 1 .918 0l.064-.998A8.113 8.113 0 0 0 8 0zM6.44.152c-.346.069-.684.16-1.012.27l.321.948c.287-.098.582-.177.884-.237L6.44.153zm4.132.271a7.946 7.946 0 0 0-1.011-.27l-.194.98c.302.06.597.14.884.237l.321-.947zm1.873.925a8 8 0 0 0-.906-.524l-.443.896c.275.136.54.29.793.459l.556-.831zM4.46.824c-.314.155-.616.33-.905.524l.556.83a7.07 7.07 0 0 1 .793-.458L4.46.824zM2.725 1.985c-.262.23-.51.478-.74.74l.752.66c.202-.23.418-.446.648-.648l-.66-.752zm11.29.74a8.058 8.058 0 0 0-.74-.74l-.66.752c.23.202.447.418.648.648l.752-.66zm1.161 1.735a7.98 7.98 0 0 0-.524-.905l-.83.556c.169.253.322.518.458.793l.896-.443zM1.348 3.555c-.194.289-.37.591-.524.906l.896.443c.136-.275.29-.54.459-.793l-.831-.556zM.423 5.428a7.945 7.945 0 0 0-.27 1.011l.98.194c.06-.302.14-.597.237-.884l-.947-.321zM15.848 6.44a7.943 7.943 0 0 0-.27-1.012l-.948.321c.098.287.177.582.237.884l.98-.194zM.017 7.477a8.113 8.113 0 0 0 0 1.046l.998-.064a7.117 7.117 0 0 1 0-.918l-.998-.064zM16 8a8.1 8.1 0 0 0-.017-.523l-.998.064a7.11 7.11 0 0 1 0 .918l.998.064A8.1 8.1 0 0 0 16 8zM.152 9.56c.069.346.16.684.27 1.012l.948-.321a6.944 6.944 0 0 1-.237-.884l-.98.194zm15.425 1.012c.112-.328.202-.666.27-1.011l-.98-.194c-.06.302-.14.597-.237.884l.947.321zM.824 11.54a8 8 0 0 0 .524.905l.83-.556a6.999 6.999 0 0 1-.458-.793l-.896.443zm13.828.905c.194-.289.37-.591.524-.906l-.896-.443c-.136.275-.29.54-.459.793l.831.556zm-12.667.83c.23.262.478.51.74.74l.66-.752a7.047 7.047 0 0 1-.648-.648l-.752.66zm11.29.74c.262-.23.51-.478.74-.74l-.752-.66c-.201.23-.418.447-.648.648l.66.752zm-1.735 1.161c.314-.155.616-.33.905-.524l-.556-.83a7.07 7.07 0 0 1-.793.458l.443.896zm-7.985-.524c.289.194.591.37.906.524l.443-.896a6.998 6.998 0 0 1-.793-.459l-.556.831zm1.873.925c.328.112.666.202 1.011.27l.194-.98a6.953 6.953 0 0 1-.884-.237l-.321.947zm4.132.271a7.944 7.944 0 0 0 1.012-.27l-.321-.948a6.954 6.954 0 0 1-.884.237l.194.98zm-2.083.135a8.1 8.1 0 0 0 1.046 0l-.064-.998a7.11 7.11 0 0 1-.918 0l-.064.998zM8.5 4.5a.5.5 0 0 0-1 0v3h-3a.5.5 0 0 0 0 1h3v3a.5.5 0 0 0 1 0v-3h3a.5.5 0 0 0 0-1h-3v-3z"/>
                                </svg>Tạo CV</a></li>
                        <li class="text-dark"><a href="<c:url value="/"/>"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-in-right job-content_icon_admin" viewBox="0 0 16 16">
                                    <path fill-rule="evenodd" d="M6 3.5a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-2a.5.5 0 0 0-1 0v2A1.5 1.5 0 0 0 6.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-8A1.5 1.5 0 0 0 5 3.5v2a.5.5 0 0 0 1 0v-2z"/>
                                    <path fill-rule="evenodd" d="M11.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H1.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"/>
                                </svg>Thoát</a></li>
                    </ul>
            </div>
        </div>
        <div class="col-md-10">
            <div class="main_admin">
                <div id="list_job" class="">
                    <div class="container wp-container">

                        <h5 class="name-content w-70 text-center" style="margin-left: 20%;">Danh sách công việc bạn đã nộp đơn ứng tuyển</h5>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="row">

                                    <c:forEach items="${listJbyCandidate}" var="j">
                                        <div class="col-md-12">

                                            <div class="content-job position-relative content-job_manageC">
                                                <a href="<c:url value="/job-detail/${j[0]}/1"/>" class="text-dark flex w-100">
                                                    <div class="left-job">
                                                        <c:choose>
                                                            <c:when test="${j[3].startsWith('http') == true}">
                                                                <img
                                                                    src="${j[3]}"
                                                                    alt="" class="logo_company">
                                                                </c:when>
                                                                <c:when test="${j[3].startsWith('http') == false}">

                                                                    <img src="https://res.cloudinary.com/hm-findingjob/image/upload/v1659498605/%E1%BA%A3nh%20c%E1%BB%A7a%20project%20finding%20job/z3613432030895_0d06ac09a1b2703dc88e8b97effdc336-removebg-preview_2_zdain2.png"
                                                                         alt="" class="logo_company">
                                                                    </c:when>
                                                                </c:choose>

                                                                </div>
                                                                <div class="right-job">
                                                                    <h4 class="title-job">${j[1]}</h4>
                                                                    <p class="company-name">${j[2]}</p>
                                                                    <div class="detail-job">
                                                                        <ul>
                                                                            <li><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                                                                     class="bi bi-currency-dollar job-content_icon" viewBox="0 0 16 16">
                                                                                    <path
                                                                                        d="M4 10.781c.148 1.667 1.513 2.85 3.591 3.003V15h1.043v-1.216c2.27-.179 3.678-1.438 3.678-3.3 0-1.59-.947-2.51-2.956-3.028l-.722-.187V3.467c1.122.11 1.879.714 2.07 1.616h1.47c-.166-1.6-1.54-2.748-3.54-2.875V1H7.591v1.233c-1.939.23-3.27 1.472-3.27 3.156 0 1.454.966 2.483 2.661 2.917l.61.162v4.031c-1.149-.17-1.94-.8-2.131-1.718H4zm3.391-3.836c-1.043-.263-1.6-.825-1.6-1.616 0-.944.704-1.641 1.8-1.828v3.495l-.2-.05zm1.591 1.872c1.287.323 1.852.859 1.852 1.769 0 1.097-.826 1.828-2.2 1.939V8.73l.348.086z" />
                                                                                </svg><b class="text-danger">${j[4]} - ${j[5]} triệu</b> </li>
                                                                            <li><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                                                                     class="bi bi-geo-alt job-content_icon" viewBox="0 0 16 16">
                                                                                    <path
                                                                                        d="M12.166 8.94c-.524 1.062-1.234 2.12-1.96 3.07A31.493 31.493 0 0 1 8 14.58a31.481 31.481 0 0 1-2.206-2.57c-.726-.95-1.436-2.008-1.96-3.07C3.304 7.867 3 6.862 3 6a5 5 0 0 1 10 0c0 .862-.305 1.867-.834 2.94zM8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10z" />
                                                                                    <path d="M8 8a2 2 0 1 1 0-4 2 2 0 0 1 0 4zm0 1a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
                                                                                </svg>TP.${j[6]}</li>
                                                                            <li><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                                                                     class="bi bi-calendar job-content_icon" viewBox="0 0 16 16">
                                                                                    <path
                                                                                        d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z" />
                                                                                </svg><jsp:useBean id="date" class="java.util.Date"/>
                                                                                <fmt:formatDate value="${j[7]}" type="date" pattern="dd-MM-yyyy"/></li>
                                                                        </ul>
                                                                    </div>

                                                                </div>
                                                                <div class="like_icon position-absolute">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-heart" viewBox="0 0 16 16">
                                                                        <path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"/>
                                                                    </svg>
                                                                </div>
                                                                </a>
                                                                </div>

                                                                </div>
                                                            </c:forEach>

                                                            </div>
                                                            </div>

                                                            </div>
                                                            </div>
                                                            </div>
                                                            <div id="manage_job">
                                                                <h5 style="margin-left: 44%;">QUẢN LÝ CV</h5>
                                                                <div class="col-md-12">


                                                                    <form>
                                                                        <div class="row">
                                                                            <c:forEach items="${listCV}" var="i">
                                                                                <c:if test = "${i.isDeleted == 0}"> 
                                                                                <div id ="d${i.id}" class="col-md-6">
                                                                                    <div class="img_cv" id="img_cv_${i.id}" >
                                                                                        <div class="position-relative">
                                                                                            <a  onclick="document.getElementById('img_show_${i.id}').style.display = 'block'">
                                                                                                <img style="border: none; height: auto;" src="${i.cvLink}"
                                                                                                     alt="">
                                                                                            </a>
                                                                                            <a class="eye_btn" onclick ="javascript:deleteCV('${endpoint}', ${i.id})" style="right: 87px;top: 0;"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash-fill" viewBox="0 0 16 16">
                                                                                                    <path d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0z"/>
                                                                                                </svg></a>
                                                                                        </div>

                                                                                    </div>
                                                                                    <div id="img_show_${i.id}" class="modal">

                                                                                        <div class="modal-content animate" style="width: 80%;" action="/action_page.php" method="post">
                                                                                            <div class="position-relative">
                                                                                                <img style="width: 100%;height: 100%;"
                                                                                                     src="https://res.cloudinary.com/dnlryecwq/image/upload/v1661619966/xou6xjjmynwlespoim5s.png?fbclid=IwAR2bgG2zbxHTub2Kar4IBfNCr98Yv6Z5z5gLR79INZEetR19ZFEoM_9oKAs"
                                                                                                     alt="">
                                                                                                    <a class="eye_btn" onclick="document.getElementById('img_show_${i.id}').style.display = 'none'">x</a>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                            </div>
                                                                                            </c:if>
                                                                            </c:forEach>
                                                                           </div>
                                                                                


                                                                    </form>
                                                                </div>
                                                                <div id="addjob">
                                                                    <a class="btn_addjob_manage" href ="<c:url value = "/candidate/create-cv"/>" style="margin-left: 40%;" href="">Thêm CV</a>
                                                                </div>
                                                            </div>

                                                            </div>

                                                            </div>

                                                            </div>
                                                                <script type = "text/javascript">
                                                                     function deleteCV(endpoint,cvID){
                                                                        let id1 = cvID;
                                                                       fetch(endpoint, {
                                                                            method: 'post',
                                                                            body: JSON.stringify({
                                                                                "cvID": cvID
                                                                            }),
                                                                            headers: {
                                                                                "Content-Type": "application/json"}
                                                                            }).then(function () {
                                                                                document.getElementById('d'+id1).style.display = "none";
                                                                            }); 
                                                                    };
                                                                </script>

