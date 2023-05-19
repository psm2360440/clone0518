<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--  center1--%>
<!-- ***** Main Banner Area Start ***** -->


<section class="section main-banner" id="top" data-section="section1">
    <video autoplay muted loop id="bg-video">
        <source src="/assets/images/course-video.mp4" type="video/mp4"/>
    </video>

    <div class="video-overlay header-text">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="caption">
                        <c:choose>
                            <c:when test="${loginStudent==null}">
                                <h6>Hello Student</h6>
                                <h2>Welcome to Education</h2>
                                <p>We provide wide variety of programming courses both back-end and front end. <a
                                        rel="nofollow"
                                        href="/register" target="_blank">Click Here to Join us Right Now</a>.
                                    Expand Your Career Opportunities With Us.</p>
                                <div class="main-button-red">
                                    <div class><a href="/register">Join Us Now!</a></div>
                                </div>
                            </c:when>
                            <c:otherwise>
                                <h6>Hello ${loginStudent.name}��!</h6>
                                <h2>Welcome to DIGICampus</h2>
                                <p>We provide wide variety of programming courses both back-end and front end.
                                    <a rel="nofollow" href="/lecture/allpage" target="_blank">Click Here to View All
                                        Course. </a>
                                    Expand Your Career Opportunities Now With us!</p>
                                <div class="main-button-red">
                                    <div><a href="/att_check" target="_blank">ATTENDANCE</a></div>
                                </div>
                            </c:otherwise>
                        </c:choose>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- ***** Main Banner Area End ***** -->

<section class="services">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="owl-service-item owl-carousel">
                    <div class="item">
                        <div class="icon">
                            <img src="https://cdn-icons-png.flaticon.com/512/1126/1126012.png" alt="">
                        </div>
                        <div class="down-content">
                            <h4>New lecture open!</h4>
                            <p>�������е��� ��ٸ��ô� �� ����!</p>
                            <p><span style="font-weight:bold; color: orange">
                                "���� ũ��� �߶� �Դ� ����Ʈ(React.js)"
                            </span>�� ������Ʈ �Ǿ����ϴ�! �ű� �̺�Ʈ���� ����������!
                            </p>
                        </div>
                    </div>

                    <div class="item">
                        <div class="icon">
                            <img src="https://cdn-icons-png.flaticon.com/512/2545/2545619.png" alt="">
                        </div>
                        <div class="down-content">
                            <h4>���͵�������</h4>
                            <p>4�� ���͵������� <span style="font-weight:bold; color: orange">�ڼ��� �븮��</span>!</p>
                            <p> 4�� �Ѵ� �� 29ȸ�� ���͵������� �ۼ��ϼ̽��ϴ�. </p>
                            <p>�����մϴ�!</p>
                        </div>
                    </div>

                    <div class="item">
                        <div class="icon">
                            <img src="https://cdn-icons-png.flaticon.com/512/2454/2454297.png" alt="">
                        </div>
                        <div class="down-content">
                            <h4>Happy Birthday!</h4>
                            <p>���� �����մϴ�! ������ <span style="font-weight:bold; color: orange">����ȣ �븮��</span>! </p>
                            <p><span style="font-weight:bold; color: orange">5�� 5�� ����ȣ �븮��</span>�� �����Դϴ�. ���� ���� ��Ź�帳�ϴ�.
                            </p>

                        </div>
                    </div>

                    <div class="item">
                        <div class="icon">
                            <img src="/uimg/�����.jpeg" alt="">
                        </div>
                        <div class="down-content">
                            <h4><span style="color: orange">��ް���!</span> 5/15 �����ǳ� ���ȳ�</h4>
                            <p>5/15�� ������ ���� �����Ͽ� ������ ����Բ� ī���̼� �������� ���� �����Դϴ�.</p>
                            <p>DIGI MEMBER�е��� <span style="color: orange">12:50��</span>���� �ڸ��� �������ּ���!</p>
                        </div>
                    </div>

                    <div class="item">
                        <img style="border-radius: 10px 10px" src="/assets/images/gallery.png">
                    </div>

                </div>
            </div>
        </div>
    </div>
</section>