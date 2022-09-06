<%-- 
    Document   : index
    Created on : Aug 1, 2022, 6:00:01 PM
    Author     : ANHMINH
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html >
<div class="main">

    <div class="recruit">
        <div class="row">
            <h2 class="tittle-card">Top công ty</h2>
            <c:forEach items="${companies}" var="c">

                <div class="col-md-3 col-xs-12">
                    <a href="<c:url value="/company-detail/${c[4]}"/>" class="text-dark">
                        <div class="card">
                            <div class="card-img">
                                <c:choose>
                                    <c:when test="${c[2].startsWith('http') == true}">
                                        <img class="card-img-top"
                                             src="${c[2]}"
                                             alt="Card image">
                                    </c:when>
                                    <c:when test="${c[2].startsWith('http') == false}">
                                        <img class="card-img-top"
                                             src="https://res.cloudinary.com/hm-findingjob/image/upload/v1659498605/%E1%BA%A3nh%20c%E1%BB%A7a%20project%20finding%20job/z3613432030895_0d06ac09a1b2703dc88e8b97effdc336-removebg-preview_2_zdain2.png"
                                             alt="Card image">
                                    </c:when>
                                </c:choose>
                            </div>

                            <div class="card-body">
                                <h5 class="card-title" style="text-align: center">${c[0]}</h5>
                                <p class="card-text text-danger" style="text-align: center">${c[3]} viec lam <span class="text-dark">- ${c[1]}</span></p>

                            </div>
                        </div>
                    </a>
                </div>
            </c:forEach>
            <ul class="pagination">

                <c:choose>
                    <c:when test="${not empty counter}">
                        <c:forEach begin="1" end="${Math.ceil(counter/4)}" var="i">
                            <li class="page-item"><a class="page-link  text-dark" href="<c:url value="/"/>?page=${i}">${i}</a></li>
                            </c:forEach>
                        </c:when>
                        <c:when test="${not empty counter1}">

                    </c:when>
                    <c:when test="${not empty counter2}">

                    </c:when>
                    <c:when test="${not empty counter3}">

                    </c:when>
                </c:choose>


            </ul>



        </div>

    </div>
    
    <div class="blog">

        <div class="row">
            <h2>Bài viết mới</h2>
            <div class="col-md-6">
                <div class="first-blog">

                    <div class="row">
                        <div class="col-md-6">
                            <a href="#" class="blog__image-link text-center">
                                <img class="img-titlt-blog"
                                     src="https://itviec.com/rails/active_storage/blobs/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBNlJXS1E9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--5863aa279de2a84ad7a1ec853ff1a7ed28ce9b79/tu-ao-lang-den-out-trinh-thumbnail.jpg"
                                     alt="">
                            </a>
                        </div>
                        <div class="col-md-6">
                            <div class="blog_description">
                                <div>
                                    <h5 class="blog_description-title">
                                        <a href="" class="text-dark">“TỪ AO LÀNG ĐẾN OUT TRÌNH” – Lần đầu tiên chuyên gia IT giãi bày bằng
                                            con chữ</a>
                                        </h4>
                                </div>
                            </div>
                            <div class="blog_description-content">

                                Nhân kỷ niệm 9 năm ngày thành lập, ITviec tổ chức cuộc thi viết “Từ Ao làng đến Out trình” nhằm m...
                            </div>
                            <div class="blog_read-more">
                                <a href="#" class="text-primary">read more</a>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
            <div class="col-md-6">
                <div class="first-blog">

                    <div class="row">
                        <div class="col-md-6">
                            <a href="#" class="blog__image-link text-center">
                                <img class="img-titlt-blog"
                                     src="https://itviec.com/rails/active_storage/blobs/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBNlJXS1E9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--5863aa279de2a84ad7a1ec853ff1a7ed28ce9b79/tu-ao-lang-den-out-trinh-thumbnail.jpg"
                                     alt="">
                            </a>
                        </div>
                        <div class="col-md-6">
                            <div class="blog_description">
                                <div>
                                    <h5 class="blog_description-title">
                                        <a href="" class="text-dark">“TỪ AO LÀNG ĐẾN OUT TRÌNH” – Lần đầu tiên chuyên gia IT giãi bày bằng
                                            con chữ</a>
                                        </h4>
                                </div>
                            </div>
                            <div class="blog_description-content">

                                Nhân kỷ niệm 9 năm ngày thành lập, ITviec tổ chức cuộc thi viết “Từ Ao làng đến Out trình” nhằm m...
                            </div>
                            <div class="blog_read-more">
                                <a href="#" class="text-primary">read more</a>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>
    </div>
</div>
