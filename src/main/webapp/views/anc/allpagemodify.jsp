<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<style>

    section.heading-page h2 {
        margin-top: 20px;
        margin-bottom: 20px;
        font-size: 36px;
        text-transform: uppercase;
        font-weight: 800;
        color: #fff;
        letter-spacing: 1px;
    }

    .meeting-single-item .down-content {
        background-color: #fff;
        padding: 0px 40px 25px 40px;
        border-top-right-radius: 20px;
        border-top-left-radius: 20px;
        border-bottom-right-radius: 20px;
    }

    #ancTitle {
        color: #919191;
    }

    #ancTitle:hover {
        color: #1f272b;
    }

    .table-responsive, tr, td, th  {
        color: #919191;
    }
</style>

<section class="meetings-page" id="meetings">
    <div class="container">
        <div class="section-heading">
            <h2>Upcoming Meetings</h2>
        </div>
        <div class="row">
            <div class="col-lg-12" style="margin:0 auto;">
                <div class="meeting-single-item">
                    <div class="down-content">
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
                                        <td>${obj.id}</td>
                                        <td><a href="/anc/detail?id=${obj.id}" id="ancTitle">${obj.title}</a>
                                            <c:choose>
                                                <c:when test="${obj.img!=null}">
                                                    <img src="/assets/images/attach_img.png" style="width:15px;">
                                                </c:when>
                                                <c:otherwise>
                                                </c:otherwise>
                                            </c:choose></td>
                                        <td>${obj.writer}</td>
                                        <td>${obj.rdate}</td>
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
</section>

