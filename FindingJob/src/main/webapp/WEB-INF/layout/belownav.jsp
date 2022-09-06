<%-- 
    Document   : belownav
    Created on : Jul 31, 2022, 11:05:19 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="below-nav">
    <div class="container">
        <div class="row">
            <ul class="below-nav-list">
                <li>
                    <h2>1,883 việc làm cho Dân văn phòng "CHẤT"</h2>
                </li>
                <li>
                    <form class="d-flex">
                        <div class="search-form__keyword-section rounded">
                            <div class="input-group dropdown">
                                <div class="search-form__icon svg-icon">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                         class="bi bi-search text-dark" viewBox="0 0 16 16">
                                        <path
                                            d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                                    </svg>
                                </div>
                                <input class="form-control me-2" id="search_index" type="text" placeholder="Tìm kiếm theo kĩ năng chức vụ công ty">
<!--                                    <div class="dropdown-menu w-100 ts-dropdown m-0 list-drop-search" data-bs-popper="static">
                                        <div class="dropdown-header">
                                            Skill and Title
                                        </div>
                                        <button class="dropdown-item" type="button" data-label="Skill and Title" data-value="">Java</button>
                                        <button class="dropdown-item" type="button" data-label="Skill and Title" data-value="">Java</button>
                                        <button class="dropdown-item" type="button" data-label="Skill and Title" data-value="">Java</button>
                                    </div>-->
                            </div>

                        </div>

                        <div class="dropdown">
                            <select id="city" style="background-color: #D82727; border-radius: 5px; margin-left: 5px;" class="text-light select_btn">
                               <option value = "HCM">TP.HCM</option>
                                <option value = "Hà Nội">Hà Nội</option>
                                <option value = "Đà Nẵng">Đà Nẵng</option>
                                <option value = "all">Tất cả</option>
                            </select>
                        </div>
                        <button class="btn btn-primary" onclick="javascript:search_abc()" type="button">Tìm Kiếm</button>
                    </form>
                </li>
                <li>
                    <ul class="list-langue">
                        <c:forEach items="${listMajor}" var="m">
                            <li><a href="<c:url value="/job-page"/>?major=${m.id}"/>${m.name}</a></li>
                            </c:forEach>

                    </ul>
                </li>
            </ul>

        </div>
    </div>
</div>
<script type="text/javascript">
    search_abc = function () {
        var select = document.getElementById('search_index');
        var selectcity = document.getElementById('city');
        //tim kiem tat ca
        if (select.value === '' && selectcity.options[selectcity.selectedIndex].value === 'all' )
        {
            window.location.href = "/FindingJob/";
        }
        // tim kiem theo city
        if ( select.value === '' && selectcity.options[selectcity.selectedIndex].value !== 'all' )
        {
            window.location.href = "/FindingJob/" + selectcity.options[selectcity.selectedIndex].value;
        }
        // tim kiem theo ten cong ty va city
        if (select.value !== '' && selectcity.options[selectcity.selectedIndex].value !== 'all') {

            window.location.href = "/FindingJob/"+ select.value + "/"+ selectcity.options[selectcity.selectedIndex].value;
                    
        }
        // tim kiem theo cong ty
        if (select.value !== '' && selectcity.options[selectcity.selectedIndex].value === 'all')
        {
            window.location.href = "/FindingJob/" + select.value
                    + "/2/3";
        }

    };
</script>
