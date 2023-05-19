<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<style>
  section.meetings-page h6 {
    margin-top: 0px;
    font-size: 15px;
    text-transform: uppercase;
    font-weight: 600;
    color: #fff;
    letter-spacing: 1px;
    text-align: center;
  }

  section.meetings-page h2 {
    margin-top: 20px;
    margin-bottom: 20px;
    font-size: 36px;
    text-transform: uppercase;
    font-weight: 800;
    color: #fff;
    letter-spacing: 1px;
    text-align: center;
  }

</style>

  <section class="meetings-page" id="meetings">
              <h6>Get all details</h6>
              <h2>$Online Teaching and Learning Tools</h2>
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="row">
            <div class="col-lg-12">
              <div class="meeting-single-item">
                <div class="thumb">
                  <div class="price">
                    <span>${lecture.rating}</span>
                  </div>
                  <div class="date">
                    <h6>TOPIC <span>${lecture.topic}</span></h6>
                  </div>
                  <a href="#"><img src="/assets/images/single-meeting.jpg" alt=""></a>
                </div>
                <div class="down-content">
                  <a href="#"><h4>${lecture.title}</h4></a>
                  <p>${lecture.teacher}</p>
                  <p class="description">
                    This is an edu meeting HTML CSS template provided by <a href="https://templatemo.com/" target="_blank" rel="nofollow">TemplateMo website</a>. This is a Bootstrap v5.1.3 layout. If you need more free website templates like this one, please visit our website TemplateMo. Please tell your friends about our website. Thank you. If you want to get the latest collection of HTML CSS templates for your websites, you may visit <a rel="nofollow" href="https://www.toocss.com/" target="_blank">Too CSS website</a>. If you need a working contact form script, please visit <a href="https://templatemo.com/contact" target="_parent">our contact page</a> for more info.
                    
                    <br><br>You are allowed to use this edu meeting CSS template for your school or university or business. You can feel free to modify or edit this layout. You are not allowed to redistribute the template ZIP file on any other template website. Please contact us for more information.
                  </p>
                  <div class="row">
                    <div class="col-lg-4">
                      <div class="hours">
                        <h5>Hours</h5>
                        <p>Monday - Friday: 07:00 AM - 13:00 PM<br>Saturday- Sunday: 09:00 AM - 15:00 PM</p>
                      </div>
                    </div>
                    <div class="col-lg-4">
                      <div class="location">
                        <h5>Location</h5>
                        <p>Recreio dos Bandeirantes, 
                        <br>Rio de Janeiro - RJ, 22795-008, Brazil</p>
                      </div>
                    </div>
                    <div class="col-lg-4">
                      <div class="book now">
                        <h5>Book Now</h5>
                        <p>010-020-0340<br>090-080-0760</p>
                      </div>
                    </div>
                    <div class="col-lg-12">
                      <div class="share">
                        <h5>Share:</h5>
                        <ul>
                          <li><a href="#">Facebook</a>,</li>
                          <li><a href="#">Twitter</a>,</li>
                          <li><a href="#">Linkedin</a>,</li>
                          <li><a href="#">Behance</a></li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-12">
              <div class="main-button-red">
                <a href="../meetings.jsp">Back To Meetings List</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>