<%-- 
    Document   : admin
    Created on : Aug 31, 2022, 3:02:17 PM
    Author     : ANHMINH
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:url value="/api/admin/manage/company" var="endpoint" />
<c:url value="/api/admin/manage/job" var="endpoint1" />
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<div class="admin_section">
    <div class="row">
        <div class="col-md-2">
            <div class="menu_admin">
                <img src="https://res.cloudinary.com/dnlryecwq/image/upload/v1659536351/z3613432030895_0d06ac09a1b2703dc88e8b97effdc336-removebg-preview_2_zdain2_s8c92f.png"
                     alt="">
                    <ul class="menu_admin_ul">
                        <li class="text-dark"><a href="#check_company"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-shield-check job-content_icon_admin" viewBox="0 0 16 16">
                                    <path d="M5.338 1.59a61.44 61.44 0 0 0-2.837.856.481.481 0 0 0-.328.39c-.554 4.157.726 7.19 2.253 9.188a10.725 10.725 0 0 0 2.287 2.233c.346.244.652.42.893.533.12.057.218.095.293.118a.55.55 0 0 0 .101.025.615.615 0 0 0 .1-.025c.076-.023.174-.061.294-.118.24-.113.547-.29.893-.533a10.726 10.726 0 0 0 2.287-2.233c1.527-1.997 2.807-5.031 2.253-9.188a.48.48 0 0 0-.328-.39c-.651-.213-1.75-.56-2.837-.855C9.552 1.29 8.531 1.067 8 1.067c-.53 0-1.552.223-2.662.524zM5.072.56C6.157.265 7.31 0 8 0s1.843.265 2.928.56c1.11.3 2.229.655 2.887.87a1.54 1.54 0 0 1 1.044 1.262c.596 4.477-.787 7.795-2.465 9.99a11.775 11.775 0 0 1-2.517 2.453 7.159 7.159 0 0 1-1.048.625c-.28.132-.581.24-.829.24s-.548-.108-.829-.24a7.158 7.158 0 0 1-1.048-.625 11.777 11.777 0 0 1-2.517-2.453C1.928 10.487.545 7.169 1.141 2.692A1.54 1.54 0 0 1 2.185 1.43 62.456 62.456 0 0 1 5.072.56z"/>
                                    <path d="M10.854 5.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L7.5 7.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
                                </svg> Kiểm duyệt công ty</a></li>
                        <li class="text-dark"><a href="#check_job"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-shield-check job-content_icon_admin" viewBox="0 0 16 16">
                                    <path d="M5.338 1.59a61.44 61.44 0 0 0-2.837.856.481.481 0 0 0-.328.39c-.554 4.157.726 7.19 2.253 9.188a10.725 10.725 0 0 0 2.287 2.233c.346.244.652.42.893.533.12.057.218.095.293.118a.55.55 0 0 0 .101.025.615.615 0 0 0 .1-.025c.076-.023.174-.061.294-.118.24-.113.547-.29.893-.533a10.726 10.726 0 0 0 2.287-2.233c1.527-1.997 2.807-5.031 2.253-9.188a.48.48 0 0 0-.328-.39c-.651-.213-1.75-.56-2.837-.855C9.552 1.29 8.531 1.067 8 1.067c-.53 0-1.552.223-2.662.524zM5.072.56C6.157.265 7.31 0 8 0s1.843.265 2.928.56c1.11.3 2.229.655 2.887.87a1.54 1.54 0 0 1 1.044 1.262c.596 4.477-.787 7.795-2.465 9.99a11.775 11.775 0 0 1-2.517 2.453 7.159 7.159 0 0 1-1.048.625c-.28.132-.581.24-.829.24s-.548-.108-.829-.24a7.158 7.158 0 0 1-1.048-.625 11.777 11.777 0 0 1-2.517-2.453C1.928 10.487.545 7.169 1.141 2.692A1.54 1.54 0 0 1 2.185 1.43 62.456 62.456 0 0 1 5.072.56z"/>
                                    <path d="M10.854 5.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L7.5 7.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
                                </svg> Kiểm duyệt tin</a></li>
                        <li class="text-dark"><a href="#charjs"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-bar-chart job-content_icon_admin"  viewBox="0 0 16 16">
                                    <path d="M4 11H2v3h2v-3zm5-4H7v7h2V7zm5-5v12h-2V2h2zm-2-1a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h2a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1h-2zM6 7a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v7a1 1 0 0 1-1 1H7a1 1 0 0 1-1-1V7zm-5 4a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1v-3z"/>
                                </svg> Thống kê</a></li>
                        <li class="text-dark"><a href="<c:url value="/"/>"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-in-right job-content_icon_admin" viewBox="0 0 16 16">
                                    <path fill-rule="evenodd" d="M6 3.5a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-2a.5.5 0 0 0-1 0v2A1.5 1.5 0 0 0 6.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-8A1.5 1.5 0 0 0 5 3.5v2a.5.5 0 0 0 1 0v-2z"/>
                                    <path fill-rule="evenodd" d="M11.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H1.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"/>
                                </svg> Thoát</a></li>
                    </ul>
            </div>
        </div>
        <div class="col-md-9">
            <div class="main_admin">
                <div id="check_company" class="check_company">
                    <h3 class="text-center" style="margin-top: 30px;">Kiểm duyệt công ty</h3>
                    <form>
                            <c:forEach items="${listCompanyCheck}" var="jc">
                                <div id = "d${jc.id}"  class="row">
                                <div  id="div${jc.id}" class="col-md-10">
                                    <div class="content-job content-job_admin">
                                        
                                        <div class="left-job">
                                            <img src="${jc.avatar}"
                                                 alt="" class="logo_company">
                                        </div>
                                        <div class="right-job">
                                            <h4 class="title-job">${jc.name}</h4>
                                            <p class="company-name">${jc.address}</p>
                                            <div class="detail-job">
                                                <ul>
                                                    <li><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-envelope job-content_icon" viewBox="0 0 16 16">
                                                            <path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4Zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1H2Zm13 2.383-4.708 2.825L15 11.105V5.383Zm-.034 6.876-5.64-3.471L8 9.583l-1.326-.795-5.64 3.47A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.741ZM1 11.105l4.708-2.897L1 5.383v5.722Z"/>
                                                        </svg>${jc.email}</b> </li>
                                                    <li><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                             fill="currentColor" class="bi bi-geo-alt job-content_icon"
                                                             viewBox="0 0 16 16">
                                                            <path
                                                                d="M12.166 8.94c-.524 1.062-1.234 2.12-1.96 3.07A31.493 31.493 0 0 1 8 14.58a31.481 31.481 0 0 1-2.206-2.57c-.726-.95-1.436-2.008-1.96-3.07C3.304 7.867 3 6.862 3 6a5 5 0 0 1 10 0c0 .862-.305 1.867-.834 2.94zM8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10z" />
                                                            <path
                                                                d="M8 8a2 2 0 1 1 0-4 2 2 0 0 1 0 4zm0 1a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
                                                        </svg>${jc.city}</li>

                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <button type = button onclick ="javascript:checkCompany('${endpoint}',${jc.id})" id="btn${jc.id}" class="btn_admin_check">duyệt</button>
                                </div>
                                </div>
                            </c:forEach>

                    </form>
                </div>
                
                <div class="check_job" id="check_job">
                    <h3 class="text-center" style="margin-top: 30px;">Kiểm duyệt tin</h3>

                    <form>
                        
                            <c:forEach items="${listJobCheck}" var="jc">
                                <div id = "j${jc[0]}"class="row">
                                    <div class="col-md-10">
                                        <div class="content-job content-job_admin">
                                            <div class="left-job">
                                                <img src="${jc[7]}"
                                                     alt="" class="logo_company">
                                            </div>
                                            <div class="right-job">
                                                <h4 class="title-job">${jc[1]}</h4>
                                                <p class="company-name">${jc[8]}</p>
                                                <div class="detail-job">
                                                    <ul>
                                                        <li><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                                 fill="currentColor"
                                                                 class="bi bi-currency-dollar job-content_icon"
                                                                 viewBox="0 0 16 16">
                                                                <path
                                                                    d="M4 10.781c.148 1.667 1.513 2.85 3.591 3.003V15h1.043v-1.216c2.27-.179 3.678-1.438 3.678-3.3 0-1.59-.947-2.51-2.956-3.028l-.722-.187V3.467c1.122.11 1.879.714 2.07 1.616h1.47c-.166-1.6-1.54-2.748-3.54-2.875V1H7.591v1.233c-1.939.23-3.27 1.472-3.27 3.156 0 1.454.966 2.483 2.661 2.917l.61.162v4.031c-1.149-.17-1.94-.8-2.131-1.718H4zm3.391-3.836c-1.043-.263-1.6-.825-1.6-1.616 0-.944.704-1.641 1.8-1.828v3.495l-.2-.05zm1.591 1.872c1.287.323 1.852.859 1.852 1.769 0 1.097-.826 1.828-2.2 1.939V8.73l.348.086z" />
                                                            </svg><b class="text-danger">${jc[2]} - ${jc[3]} triệu</b> </li>
                                                        <li><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                                 fill="currentColor" class="bi bi-geo-alt job-content_icon"
                                                                 viewBox="0 0 16 16">
                                                                <path
                                                                    d="M12.166 8.94c-.524 1.062-1.234 2.12-1.96 3.07A31.493 31.493 0 0 1 8 14.58a31.481 31.481 0 0 1-2.206-2.57c-.726-.95-1.436-2.008-1.96-3.07C3.304 7.867 3 6.862 3 6a5 5 0 0 1 10 0c0 .862-.305 1.867-.834 2.94zM8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10z" />
                                                                <path
                                                                    d="M8 8a2 2 0 1 1 0-4 2 2 0 0 1 0 4zm0 1a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
                                                            </svg>TP.${jc[4]}</li>
                                                        <li><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                                 fill="currentColor" class="bi bi-calendar job-content_icon"
                                                                 viewBox="0 0 16 16">
                                                                <path
                                                                    d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z" />
                                                            </svg><jsp:useBean id="date" class="java.util.Date"/>
                                                            <fmt:formatDate value="${jc[5]}" type="date" pattern="dd-MM-yyyy"/></li>
                                                        <li><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                                 fill="currentColor" class="bi bi-calendar job-content_icon"
                                                                 viewBox="0 0 16 16">
                                                                <path
                                                                    d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z" />
                                                            </svg><jsp:useBean id="date1" class="java.util.Date"/>
                                                            <fmt:formatDate value="${jc[6]}" type="date" pattern="dd-MM-yyyy"/></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <button type="button" id="${jc[0]}" onclick ="javascript:checkJob('${endpoint1}',${jc[0]})" class="btn_admin_check">duyệt</button>
                                    </div>
                                </div>
                            </c:forEach>

                        
                    </form>
                </div>
                <div class="chartJs" id="charjs">
                    <hr style="margin-top: 60px;">
                        <div class="jobs" style="margin-top: 30px;">
                            <h5 class="text-center">Thống kế số lượng tin tuyển dụng</h5>
                            <br>
                                <div class="row">
                                    <div class="col-md-4">

                                        <table class="table table-success table-striped" style="margin-top: 150px;">
                                            <tr>
                                                <th>Tên ngành</th>
                                                <th>Số lượng tin tuyển dụng</th>
                                            </tr>
                                            <c:forEach items="${statsJobMajor}" var="jm">
                                                <tr>
                                                    <td>${jm[0]}</td>
                                                    <td>${jm[1]}</td>

                                                </tr>
                                            </c:forEach>
                                        </table>
                                    </div>
                                    <div class="col-md-8">
                                        <div style="width: 100%;height: 100%;">
                                            <canvas style="width: 300px;height: 300px;"  id="myChartJobs"></canvas>
                                        </div>
                                    </div>
                                </div>

                        </div>


                        <hr style="margin-top: 60px;">
                            <div class="jobsApply" style="margin-top: 30px;">
                                <h5 class="text-center">Thống kế số lượng đơn nộp ứng tuyển</h5>
                                <br>
                                    <div class="row">
                                        <div class="col-md-4">

                                            <table class="table table-success table-striped" style="margin-top: 150px;">
                                                <tr>
                                                    <th>Tên ngành</th>
                                                    <th>Số lượng đơn nộp vào</th>
                                                </tr>
                                                <c:forEach items="${statsJobMajorA}" var="jm">
                                                    <tr>
                                                        <td>${jm[0]}</td>
                                                        <td>${jm[1]}</td>

                                                    </tr>
                                                </c:forEach>
                                            </table>
                                        </div>
                                        <div class="col-md-8">
                                            <div>
                                                <canvas id="myChartJobsApply"></canvas>
                                            </div>
                                        </div>
                                    </div>
                            </div>

                            
                                </div>

                                </div>
                                </div>
                                </div>

                                <script type="text/javascript">
                                    colorGenera = function () {
                                        let r = parseInt(Math.random() * 255);
                                        let g = parseInt(Math.random() * 255);
                                        let b = parseInt(Math.random() * 255);

                                        return `rgba(${r},${g},${b})`;
                                    };
                                </script>
                                <script type="text/javascript">

                                    function jobsChartjs(id, nameMajor = [], numJobs = []) {
                                        let color = [];
                                        for (let i = 0; i < nameMajor.length; i++)
                                            color.push(colorGenera());
                                        const data = {
                                            labels: nameMajor,
                                            datasets: [{
                                                    label: '',
                                                    data: numJobs,
                                                    backgroundColor: [
                                                        'rgb(0,0,0)',
                                                        'rgb(128,128,128)',
                                                        'rgb(192,192,192)',
                                                        'rgb(230,230,230)'
                                                    ],
                                                    hoverOffset: 4
                                                }]
                                        };
                                        const config = {
                                            type: 'doughnut',
                                            data: data
                                        };
                                        let ctx = document.getElementById(id).getContext("2d");
                                        new Chart(ctx, config);

                                    }
                                </script>    
                                <script type="text/javascript">
                                    let nameMajor = [], numJobs = [], nameMajorAplly = [], numJobsApply = [];
                                    <c:forEach items="${statsJobMajor}" var="jm">
                                    nameMajor.push('${jm[0]}');
                                    numJobs.push(${jm[1]});
                                    </c:forEach>
                                    <c:forEach items="${statsJobMajorA}" var="jm">
                                    nameMajorAplly.push('${jm[0]}');
                                    numJobsApply.push(${jm[1]});
                                    </c:forEach>
                                    window.onload = function () {
                                        jobsChartjs("myChartJobs", nameMajor, numJobs);
                                        jobsChartjs("myChartJobsApply", nameMajorAplly, numJobsApply);

                                    };
                                    function checkCompany(endpoint,companyID){
                                        let id1 = companyID;
                                       fetch(endpoint, {
                                            method: 'post',
                                            body: JSON.stringify({
                                                "companyID": companyID
                                            }),
                                            headers: {
                                                "Content-Type": "application/json"}
                                            }).then(function () {
                                                document.getElementById('d'+id1).style.display = "none";
                                            }); 
                                    };
                                    function checkJob(endpoint,jobID){
                                        let id1 = jobID;
                                       fetch(endpoint, {
                                            method: 'post',
                                            body: JSON.stringify({
                                                "jobID": jobID
                                            }),
                                            headers: {
                                                "Content-Type": "application/json"}
                                            }).then(function () {
                                                document.getElementById('j'+id1).style.display = "none";
                                            }); 
                                    };
                                </script>
                                    


