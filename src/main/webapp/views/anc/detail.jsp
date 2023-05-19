<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<style>

    section.heading-page h2 {
        padding-left: 200px;
        margin-top: 20px;
        margin-bottom: 20px;
        text-align: center;
        font-size: 36px;
        text-transform: uppercase;
        font-weight: 800;
        color: #fff;
        letter-spacing: 1px;
    }

    .meeting-single-item .down-content {
        background-color: #fff;
        padding-top: 30px;
        border-top-right-radius: 20px;
        border-top-left-radius: 20px;
        border-bottom-right-radius: 20px;
        border-bottom-left-radius: 20px;
        padding-bottom: 30px;
    }

    section.meetings-page .main-button-red {
        text-align: center;
    }

    section.meetings-page .main-button-red a {
        padding: 12px 60px;
        text-align: center;
        margin-top: 30px;
        background-color: #f5a425;
    }

    #anc_img {
        width: 500px;
    }

</style>
<section class="meetings-page" id="meetings">
    <div class="container">
        <div class="row">
            <div class="col-lg-12" style="margin:0 auto">
                <div class="meeting-single-item" style="border-radius: 20px;background-color: #fff;">
                    <div class="down-content">
                        <div class="item">
                            <h3>NOTICE</h3>
                            <p class="card-description">
                                DIGI CAM 공지사항 페이지입니다.
                            </p>
                            <table class="table table-hover" style="margin-top:30px;">
                                <tbody>
                                <tr class="table-secondary">
                                    <th colspan="10">${anc.title}</th>
                                </tr>
                                <tr>
                                    <td style="text-align: start;"><b>Writer: </b>${anc.writer} ｜
                                        <b>Registered: </b>${anc.rdate} ｜ <b>No.</b>${anc.id}</td>
                                </tr>
                                <tr>
                                    <td colspan="10">
                                        <div class="d-flex flex-column align-items-center">
                                            <c:choose>
                                                <c:when test="${anc.img!=null}">
                                                    <img src="/uimg/${anc.img}"
                                                         style="width:100%; max-width:500px; margin:20px; padding:0;">
                                                </c:when>
                                                <c:otherwise>
                                                </c:otherwise>
                                            </c:choose>
                                        </div>
                                        <div style="margin-bottom: 20px" class="d-flex flex-column align-items-center">
                                            ${anc.contents}
                                        </div>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12" style="margin:0 auto;">
                    <div class="main-button-red">
                        <a href="javascript:history.back()">Back To Notice List</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>