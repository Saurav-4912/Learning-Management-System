<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Profile</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
     <link rel="stylesheet" href="../css/style.css">
</head>
<body>
	
<%@ include file="navbar.jsp"%>

	<div class="pt-3" style="background-color: rgba(3, 32, 70, 0.13);">
    <div class="container">
      <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel" data-bs-interval="2000">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="../img/Techstreet.png" class="d-block w-100" alt="First Slide" style="height:480px;">
          </div>
          <div class="carousel-item">
            <img src="../img/footerimg.png" class="d-block w-100" alt="Second Slide" style="height:480px;">
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls"
          data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls"
          data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
    </div>
  </div>
  <!-- End of Slider -->

    <!-- about TechStreet Academy -->
  <div class="container mt-5">
    <div class="row index-asp-div">
        <div class="col-md-5 image-container">
            <img src="../img/Logo.jpg" alt="Placeholder Image" class="custom-image"
                width="300">
        </div>
        <div class="col-md-7 text-container">
            <h3 class="text-dark"> Welcome to 
                    TechStreet Academy </h3>
            <p class="mt-4">
              TechStreet Academy is a leading educational organization with extensive experience in IT training and
                online courses. Founded by experts with rich backgrounds in both the Indian and international IT
                markets, our goal is to deliver high-quality IT education.
            </p>
            <p>
                In today’s competitive job market, mastering key programming technologies like Java, Python, PHP,
                and more is essential. At TechStreet Academy, we provide top-notch training and hands-on projects to
                bridge the gap between education and industry skills. As a prominent software development company,
                we offer students valuable exposure to various industries, helping them build successful careers.
            </p>
        </div>
    </div>
</div>


 <!-- join our community -->
 <div class="community-banner">
  <div class="overlay"></div>
  <div class="container">
      <h4 class="community-title text-white">Join Our Community</h4>
      <p>Follow us for the latest updates!</p>
      <div class="row social-icons mt-5" style="padding-left: 150px;">
          <div class="col-12 col-md-4 col-lg-2 social-item">
              <div class="followers">Youtube</div>
              <a href="" target="_blank" title="Youtube">
                  <img src="../img/yt.png" width="50" />
              </a>
              <!--<div class="followers">275K</div> -->
          </div>
          <div class="col-12 col-md-4 col-lg-2 social-item">
              <div class="followers">Facebook</div>
              <a href="" target="_blank" title="Facebook">
                  <img src="../img/fb.png" width="50" />
              </a>
              <!--<div class="followers">275K</div> -->
          </div>
          <div class="col-12 col-md-4 col-lg-2 social-item">
              <div class="followers">Instagram</div>
              <a href="" target="_blank" title="Instagram">
                  <img src="../img/insta.png" width="50" />
              </a>
              <!--<div class="followers">275K</div> -->
          </div>
          <div class="col-12 col-md-4 col-lg-2 social-item">
              <div class="followers">Telegram</div>
              <a href="" target="_blank" title="Telegram">
                  <img src="../img/telegram.png" width="50" />
              </a>
             <!--<div class="followers">275K</div> -->
          </div>
          
          <div class="col-12 col-md-4 col-lg-2 social-item">
              <div class="followers">Whats App</div>
              <a href="" target="_blank" title="Whats App">
                  <img src="../img/wp.png" width="50" />
              </a>
             <!--<div class="followers">275K</div> -->
          </div>
      </div>
  </div>
</div>

       <!-- why choose us -->
       <div class="container-fluid mt-5 mb-5">

        <div class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                
                <div class="carousel-item active">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-6 col-12 mt-3">
                                <div class="wcu-card p-2">
                                    <div class="row">
                                        <div class="col-md-4 col-sm-12">
                                            <img src="../img/whychooseus.png" alt="" width="100">
                                        </div>
                                        <div class="testimonial-content col-md-8 col-sm-12">
                                            <h5 class="card-title">Why Choose Us</h5>
                                            <p class="card-text">
                                                We're giving the chance to work on live projects under the guidance of
                                                professional experts. We give you a platform where you can upgrade your
                                                delicate
                                                just as IT abilities. We provide free examination material just as a tweaked
                                                syllabus.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-6 col-12 mt-3">
                                <div class="wcu-card p-2">
                                    <div class="row">
                                        <div class="col-md-4 col-sm-12">
                                            <img src="../img/career.png" alt="" width="150">
                                        </div>
                                        <div class="testimonial-content col-md-8 col-sm-12">
                                            <h5 class="card-title">Career With Us</h5>
                                            <p class="card-text">
                                                Are you a keen learner? Do you want to tackle new challenges? Enhance your
                                                skills with us and get the chance to be placed in top IT organizations.
                                                Additionally, get an opportunity to become a certified online mentor.
                                            </p>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="carousel-item">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-6 col-12 mt-3">
                                <div class="wcu-card p-2">
                                    <div class="row">
                                        <div class="col-md-4 col-sm-12">
                                            <img src="../img/interview.png" alt="" width="150">
                                        </div>
                                        <div class="testimonial-content col-md-8 col-sm-12">
                                            <h5 class="card-title">Interview Preparation</h5>
                                            <p class="card-text">
                                                During the class time our specialists will make out a rundown to the related
                                                subject of the class. These techniques help our learners get readied for the
                                                interviews. We provide a question bank which is completely founded on the most
                                                recent patterns.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-12 mt-3">
                                <div class="wcu-card p-2">
                                    <div class="row">
                                        <div class="col-md-4 col-sm-12">
                                            <img src="../img/liveproject.png" alt="" width="140" height="120">
                                        </div>
                                        <div class="testimonial-content col-md-8 col-sm-12">
                                            <h5 class="card-title">Live Projects</h5>
                                            <p class="card-text">
                                                We're offering a stage where you'll be able to work with live projects under the
                                                guidance of our modern specialists. Working on live projects will prepare you
                                                for work in top IT enterprises.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>


    <!-- testimonials -->
    <div class="container-fluid mt-5 p-5 div-svgimg-bgg" style="background-color:#fffeff">
      <div class="container text-center" style="color: black">
          <h2>Testimonials</h2>
          <p>
              What are student says about us ?
          </p>
          <div class="carousel slide" data-bs-ride="carousel">
              <div class="carousel-inner">
      
                  <div class="carousel-item active">
                      <div class="container">
                          <div class="row">
                              <div class="col-lg-6 col-12 mt-3">
                                  <div class="testimonial-card p-2">
                                      <div class="row">
                                          <div class="col-md-3 col-12">
                                              <div class="testimonial-image">
                                                  <img src="../img/student1.avif" alt="">
                                              </div>
                                          </div>
                                          <div class="col-md-9 col-12">
                                              <div class="testimonial-content">
                                                  <p class="testimonial-name text-primary">Shailja Sharma</p>
                                                  <p class="testimonial-college text-dark">B.Tech (CSE), SPPU(Pune University)
                                                  </p>
                                                  <p>"The courses at TechStreet Academy are well-structured and provide a comprehensive understanding of the topics. The instructors do a great job of breaking down complex concepts into manageable lessons. I particularly enjoyed the interactive quizzes and real-world projects."</p>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                              </div>
      
                              <div class="col-lg-6 col-12 mt-3">
                                  <div class="testimonial-card p-2">
                                      <div class="row">
                                          <div class="col-md-3 col-12">
                                              <div class="testimonial-image">
                                                  <img src="../img/student4.avif" alt="">
                                              </div>
                                          </div>
                                          <div class="col-md-9 col-12">
                                              <div class="testimonial-content">
                                                  <p class="testimonial-name text-primary">Vivek Sharma</p>
                                                  <p class="testimonial-college text-dark">MCA, SPPU (Pune University)</p>
                                                  <p>"The instructors are very knowledgeable and always willing to help. They are quick to respond to questions and provide detailed explanations, making the learning experience smooth and engaging."</p>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                              </div>
                          </div>
                      </div>
                  </div>
                  
                  <div class="carousel-item">
                      <div class="container">
                          <div class="row">
                              <div class="col-lg-6 col-12 mt-3">
                                  <div class="testimonial-card p-2">
                                      <div class="row">
                                          <div class="col-md-3 col-12">
                                              <div class="testimonial-image">
                                                  <img src="../img/student2.avif" alt="">
                                              </div>
                                          </div>
                                          <div class="col-md-9 col-12">
                                              <div class="testimonial-content">
                                                  <p class="testimonial-name text-primary">Pallavi Navle</p>
                                                  <p class="testimonial-college text-dark">B.Tech (Mumbai University)
                                                  </p>
                                                  <p>"I appreciate that TechStreet Academy emphasizes practical learning through hands-on projects. The assignments helped me apply what I learned in real-life scenarios,
                                                     which significantly improved my understanding of the subject."</p>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                              </div>
      
                              <div class="col-lg-6 col-12 mt-3">
                                  <div class="testimonial-card p-2">
                                      <div class="row">
                                          <div class="col-md-3 col-12">
                                              <div class="testimonial-image">
                                                  <img src="../img/student5.avif" alt="Diksha">
                                              </div>
                                          </div>
                                          <div class="col-md-9 col-12">
                                              <div class="testimonial-content">
                                                  <p class="testimonial-name text-primary">Radhika Jassal</p>
                                                  <p class="testimonial-college text-dark">B.Tech (SPPU University)</p>
                                                  <p>"The learning platform is user-friendly and easy to navigate. It’s simple to track progress, access materials, and interact with instructors and other students. The dashboard is intuitive and makes it easy to focus on learning."</p>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                              </div>
                          </div>
                      </div>
                  </div>
                  
                  <div class="carousel-item">
                      <div class="container">
                          <div class="row">
                              <div class="col-lg-6 col-12 mt-3">
                                  <div class="testimonial-card p-2">
                                      <div class="row">
                                          <div class="col-md-3 col-12">
                                              <div class="testimonial-image">
                                                  <img src="../img/student3.avif" alt="Diksha">
                                              </div>
                                          </div>
                                          <div class="col-md-9 col-12">
                                              <div class="testimonial-content">
                                                  <p class="testimonial-name text-primary">Kalyani Singh</p>
                                                  <p class="testimonial-college text-dark">B.Tech (SPPU University)
                                                  </p>
                                                  <p>"TechStreet Academy played a key role in helping me advance my career. The courses are up-to-date with industry trends, and I was able to implement the skills I learned directly into my job. Their career support services were also incredibly helpful in preparing me for interviews."</p>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                              </div>
                              <div class="col-lg-6 col-12 mt-3">
                                  <div class="testimonial-card p-2">
                                      <div class="row">
                                          <div class="col-md-3 col-12">
                                              <div class="testimonial-image">
                                                  <img src="../img/student6.avif" alt="">
                                              </div>
                                          </div>
                                          <div class="col-md-9 col-12">
                                              <div class="testimonial-content">
                                                  <p class="testimonial-name text-primary">Rahul Yadav</p>
                                                  <p class="testimonial-college text-dark">B.Tech (SPPU University)</p>
                                                  <p>"I love the wide variety of courses offered at TechStreet Academy. From beginner to advanced levels, there’s something for everyone. It allowed me to start from the basics and gradually work my way up to more advanced topics without feeling overwhelmed."</p>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                              </div>                        
                          </div>
                      </div>
                  </div>
                  
              </div>
          </div>

      </div>
  </div>



  <div class="footer mt-4" style="background-color: #08011f;">
    <div class="container">
      <div class="row mt-4">
        <div class="col-md-4">
          <h5 class="text-white" style="margin-top: 20px;">Menus</h5>
          <ul class="list-unstyled">
            <li><a href="" class="footer-link" style="color:#9e9e9e;">Home</a></li>
            <li><a href="" class="footer-link" style="color:#9e9e9e;">Courses</a></li>
            <li><a href="" class="footer-link" style="color:#9e9e9e;">Schedules</a></li>
            <li><a href="" class="footer-link" style="color:#9e9e9e;">Videos</a></li>
            <li><a href="" class="footer-link" style="color:#9e9e9e;">About Us</a></li>
            <li><a href="" class="footer-link" style="color:#9e9e9e;">Contact Us</a></li>
          </ul>
        </div>
        <div class="col-md-4">
          <h5 class="text-white" style="margin-top: 20px;">Quick Links</h5>
          <ul class="list-unstyled">
            <li><a href="" class="footer-link" style="color:#9e9e9e;">Privacy Policy</a></li>
            <li><a href="" class="footer-link" style="color:#9e9e9e;">Terms Of Services</a></li>
            <li><a href="" class="footer-link" style="color:#9e9e9e;">Cancellation/Refund Policy</a></li>
          </ul>
        </div>
        <div class="col-md-4">
          <h5 class="text-white" style="margin-top: 20px; padding-left: 80px;">Contact Us</h5>

          <a href="" target="_blank">
            <i class="fa fa-facebook-f" style="font-size:30px;color:#050942; padding-left: 25px;"></i>
          </a>
          <a href="" target="_blank">
            <i class="fa fa-youtube-play " style="font-size:30px;color:red; padding-left: 25px; "></i>
          </a>
          <a href="">
            <i class="fa fa-instagram" style="font-size:30px;color:#cd486b; padding-left: 25px;"></i>
          </a>
          <a href="" target="_blank">
            <i class="fa fa-whatsapp" style="font-size:30px;color:#25D366; padding-left: 25px;"></i>
          </a>

        </div>
      </div>
      <div class="row mt-4">
        <div class="col-12 text-center">
          <footer>
            <p style="color: aliceblue;">&copy; Copyright 2024 &#169; TechStreet IT Training Institute. All Rights
              Reserved. <br />
              <a href="" class="footer-link">Privacy Policy</a>
              &nbsp; | &nbsp;
              <a href="" class="footer-link">Terms Of Services</a>
              &nbsp; | &nbsp;
              <a href="" class="footer-link">Cancellation/Refund Policy</a>
            </p>
          </footer>
        </div>
      </div>
    </div>
  </div>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>