<%@page language ="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/includes/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="/assets/css/index.css">
    <script src="/assets/js/index.js"></script>
</head>
<body>
    <main>
        <section class="movie_list_section">
            <div class="tab_btn_area">
                <button class="tab_button on">현재상영작</button>
                <button class="tab_button">개봉예정작</button>
                <button class="tab_button">스트리밍</button>
            </div>
            <div class="movie_list_area">
                <div class="movieList openList on">
                    <c:forEach items="${showingList}" var="item">
                        <a href="/movie/detail?movie_no=${item.mi_seq}" class="movie_item open_list_item">
                            <div class="poster" style="background-image: url('/images/movie/${item.mimg_file_name}');">
                                <div class="age_grade grade${item.mi_viewing_age}">
                                    <c:if test="${item.mi_viewing_age==0}">전체</c:if>
                                    <c:if test="${item.mi_viewing_age!=0}">${item.mi_viewing_age}</c:if>
                                </div>
                            </div>
                            <div class="movie_item_txt">
                                <p class="movie_name">${item.mi_title}</p>
                                <p class="opening_dt">
                                    <fmt:formatDate value="${item.mi_opening_dt}" pattern="yyyy.MM.dd"/>
                                </p>
                            </div>
                        </a>
                    </c:forEach>
                </div>
                <div class="movieList exceptList">
                    <c:forEach items="${exceptList}" var="item">
                        <a href="/movie/detail?movie_no=${item.mi_seq}" class="movie_item except_list_item">
                            <div class="poster" style="background-image: url('/images/movie/${item.mimg_file_name}');">
                                <div class="age_grade grade${item.mi_viewing_age}">
                                    <c:if test="${item.mi_viewing_age==0}">전체</c:if>
                                    <c:if test="${item.mi_viewing_age!=0}">${item.mi_viewing_age}</c:if>
                                </div>
                            </div>
                            <div class="movie_item_txt">
                                <p class="movie_name">${item.mi_title}</p>
                                <p class="opening_dt">
                                    <fmt:formatDate value="${item.mi_opening_dt}" pattern="yyyy.MM.dd"/>
                                </p>
                            </div>
                        </a>
                    </c:forEach>
                </div>
                <div class="movieList streamingList">
                    <c:forEach items="${streamingList}" var="item">
                        <a href="/movie/detail?movie_no=${item.mi_seq}" class="movie_item streming_list_item">
                            <div class="poster" style="background-image: url('/images/movie/${item.mimg_file_name}');">
                                <div class="age_grade grade${item.mi_viewing_age}">
                                    <c:if test="${item.mi_viewing_age==0}">전체</c:if>
                                    <c:if test="${item.mi_viewing_age!=0}">${item.mi_viewing_age}</c:if>
                                </div>
                            </div>
                            <div class="movie_item_txt">
                                <p class="movie_name">${item.mi_title}</p>
                                <p class="opening_dt">
                                    <fmt:formatDate value="${item.mi_opening_dt}" pattern="yyyy.MM.dd"/>
                                </p>
                            </div>
                        </a>
                    </c:forEach>
                </div>
            </div>
        </section>
    </main>
</body>
</html>