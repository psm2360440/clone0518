<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<style>
    .hover {
        cursor: none;
    }

    #ancTitle, .hover {
        color: rgba(255, 255, 255, 1);
    }

    #ancTitle:hover, .hover:hover{
        color: #f5a425;
    }

    .table-responsive, tr, td, th  {
        color: #ffffff;
    }

    #login_row {
        margin: 0 auto;
        background-color: rgba(114, 114, 114, 0.45);
        border-top-right-radius: 20px;
        border-top-left-radius: 20px;
        border-bottom-right-radius: 20px;
        border-bottom-left-radius: 20px;
        padding: 100px 75px 35px 75px;
    }

    .item h3 {
        color: #fff;
        text-transform: uppercase;
        font-size: 24px;
        font-weight: 700;
        margin-bottom: 20px;
    }

    section.meetings-page .pagination {
        text-align: center;
        width: 100%;
        margin-top: 30px;
        display: inline-block;
    }

    section.meetings-page .pagination ul li {
        display: inline-block;
    }

    section.meetings-page .pagination ul li a {
        width: 40px;
        height: 40px;
        background-color: #fff;
        border-radius: 10px;
        color: #1f272b;
        display: inline-block;
        text-align: center;
        line-height: 40px;
        font-weight: 600;
        font-size: 15px;
        transition: all .3s;
    }

    section.meetings-page .pagination ul li.active a,
    section.meetings-page .pagination ul li a:hover {
        background-color: #f5a425;
        color: #fff;
    }

</style>

<section class="meetings-page" id="meetings">
    <div class="container">
        <div class="row">
            <div class="col-lg-12" style="margin:0 auto;">
                <div class="meeting-single-item">
                    <div class="col-lg-12 align-self-center" id="login_row">
                        <div class="item">
                        <h3>NOTICE</h3>
                            <div class="table-responsive" style="padding-top: 40px;">
                                <table class="table table-hover">
                                    <colgroup>
                                        <col style="width: 10%;">
                                        <col style="width: 60%;">
                                        <col style="width: 10%;">
                                        <col style="width: 20%;">
                                    </colgroup>
                                    <tbody>
                                    <tr>
                                        <th>No</th>
                                        <th>Title</th>
                                        <th>Writer</th>
                                        <th>Date</th>
                                    </tr>
                                    <c:forEach var="obj" items="${cpage.getList()}">
                                        <tr>
                                            <td><a href="#" class="hover">${obj.id}</a></td>
                                            <td><a href="/anc/detail?id=${obj.id}" id="ancTitle">${obj.title}</a>
                                                <c:choose>
                                                    <c:when test="${obj.img!=null}">
                                                        <img src="/assets/images/attach_img1.png" style="width:15px;">
                                                    </c:when>
                                                    <c:otherwise>
                                                    </c:otherwise>
                                                </c:choose></td>
                                            <td><a href="#" class="hover">${obj.writer}</a></td>
                                            <td><a href="#" class="hover">${obj.rdate}</a></td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    <jsp:include page="../page.jsp"/>
                </div>
            </div>
        </div>
    </div>
    </div>
</section>

