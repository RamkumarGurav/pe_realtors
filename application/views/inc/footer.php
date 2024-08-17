<footer class="first-footer">
   <div class="top-footer">
      <div class="container">
         <div class="row">
            <div class="col-lg-4 col-md-6">
               <div class="netabout">
                  <a href="<?= MAINSITE ?>" class="logo">
                     <img src="<?= IMAGE ?>logo.png" alt="netcom">
                  </a>
                  <p>PE-Realtors is known for delivering Property Consultation & Property related Services through its
                     unique way. &nbsp;We thrive to deliver values in real estate through a holistic approach in
                     property consultation and services.
                     PE-Realtors team are backed by Real Estate Industry Expertise, legal advocates and committed
                     executive force to deliver
                     what customer needs in realty services. Property consultants at PE-Realtors leverage technology to
                     deliver
                     best experience to the customers.
                  </p>
               </div>
            </div>
            <div class="col-lg-2 col-md-6">
               <div class="navigation">
                  <h3>QuickLinks</h3>
                  <div class="nav-footer">
                     <ul>
                        <li><a href="<?= MAINSITE ?>">Home </a></li>
                        <li><a href="company-and-values">Company & Values</a>
                        </li>

                        <li><a href="<?= MAINSITE ?>#services">Services</a>
                        </li>
                        <li><a href="<?= MAINSITE ?>#testimonials">Testimonials</a>
                        </li>
                        <li><a href="<?= MAINSITE ?>#faqs">FAQs</a>
                        </li>
                        <li><a href="contact-us">Contact Us</a></li>
                     </ul>
                     <!-- <ul class="nav-right">
                                 <li><a href="#">Services</a></li>
                                 <li><a href="#">Testimonials</a></li>
                                 <li><a href="#">Contact Us</a></li>
                              </ul> -->
                  </div>
               </div>
            </div>
            <div class="col-lg-6 col-md-6">
               <div class="widget">
                  <h3>Contact Us</h3>
                  <div class="contactus">
                     <ul>
                        <li>
                           <div class="info">
                              <i class="fa fa-map-marker" aria-hidden="true"></i>
                              <p class="in-p"><b>Registered Office: </b>#329, 21st Main, JP Nagar 2nd Stage, Mysore
                                 Karnataka. 570008</p>
                              <p class="in-p"><b>Corporate Office: </b>No.2932/A New Corporation No.8 , Second Floor
                                 14th Main
                                 Road, R.P.C layout, Attiguppe, Vijayanagar, Bengaluru, Karnataka
                                 560104
                              </p>
                           </div>
                        </li>
                        <li>
                           <div class="info">
                              <i class="fa fa-phone" aria-hidden="true"></i>
                              <p class="in-p">+91 6364003399 / +91 6364084823 / +91 6364098590</p>
                           </div>
                        </li>
                        <li>
                           <div class="info">
                              <i class="fa fa-envelope" aria-hidden="true"></i>
                              <p class="in-p ti">pe@perealtors.com</p>
                           </div>
                        </li>
                     </ul>
                  </div>
               </div>
            </div>
            <!--  <div class="col-lg-3 col-md-6">
                        <div class="newsletters">
                            <h3>Newsletters</h3>
                           
                        </div>
                        <form class="bloq-email mailchimp form-inline" method="post">
                            <label for="subscribeEmail" class="error"></label>
                            <div class="email">
                                <input type="email" id="subscribeEmail" name="EMAIL" placeholder="Enter Your Email">
                                <input type="submit" value="Subscribe">
                                <p class="subscription-success"></p>
                            </div>
                        </form>
                        </div> -->
         </div>
      </div>
   </div>
   <div class="second-footer">
      <div class="container">
         <p>2024 © Copyrights - All Rights Reserved.</p>
         <ul class="netsocials">
            <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
            <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
            <li><a href="#"><i class="fab fa-instagram"></i></a></li>
            <li><a href="#"><i class="fa fa-youtube" aria-hidden="true"></i></a></li>
         </ul>
      </div>
   </div>
</footer>
<a data-scroll href="#wrapper" class="go-up"><i class="fa fa-angle-double-up" aria-hidden="true"></i></a>
<!--  <a href="#form-sec">
            <aside class="aside-form book-enquiry" id="book-enquiry">
               <span class="aside-form-button book-enquiry-btn"><span>Requirement Form</span></span>
            </aside>
         </a> -->
<a class="pc_whatsapp" href="https://api.whatsapp.com/send?phone=+916364003399&amp;text=Hi%20" target="_blank"><img
      src="<?= IMAGE ?>whatsapp.png"></a>
<a class="pc_call" href="tel:+91 6364003399"><img src="<?= IMAGE ?>call.png"></a>
<!-- ARCHIVES JS -->

</div>
<!-- Wrapper / End -->
</body>
<script src="<?= JS ?>jquery-3.5.1.min.js"></script>
<script src="<?= JS ?>bootstrap.min.js"></script>
<script src="<?= JS ?>mmenu.min.js"></script>
<script src="<?= JS ?>mmenu.js"></script>
<script src="<?= JS ?>slick.min.js"></script>
<script src="<?= JS ?>imagesloaded.pkgd.min.js"></script>
<script src="<?= JS ?>isotope.pkgd.min.js"></script>
<script src="<?= JS ?>smooth-scroll.min.js"></script>
<script src="<?= JS ?>owl.carousel.js"></script>
<script src="<?= JS ?>lightcase.js"></script>
<script src="<?= JS ?>jquery.themepunch.tools.min.js"></script>
<script src="<?= JS ?>jquery.themepunch.revolution.min.js"></script>
<script>
   $(window).on('scroll load', function () {
      $("#header.cloned #logo img").attr("src", $('#header #logo img').attr('data-sticky-logo'));
   });

</script>
<script>
   $('.slick-lancers').slick({
      infinite: false,
      slidesToShow: 3,
      slidesToScroll: 1,
      dots: true,
      arrows: true,
      adaptiveHeight: true,
      responsive: [{
         breakpoint: 1292,
         settings: {
            slidesToShow: 3,
            slidesToScroll: 3,
            dots: true,
            arrows: false
         }
      }, {
         breakpoint: 993,
         settings: {
            slidesToShow: 2,
            slidesToScroll: 2,
            dots: true,
            arrows: false
         }
      }, {
         breakpoint: 769,
         settings: {
            slidesToShow: 1,
            slidesToScroll: 1,
            dots: true,
            arrows: false
         }
      }]
   });

</script>
<!-- MAIN JS -->
<script src="<?= JS ?>script.js"></script>
<script>
   let question = document.querySelectorAll(".question");

   question.forEach(question => {
      question.addEventListener("click", event => {
         const active = document.querySelector(".question.active");
         if (active && active !== question) {
            active.classList.toggle("active");
            active.nextElementSibling.style.maxHeight = 0;
         }
         question.classList.toggle("active");
         const answer = question.nextElementSibling;
         if (question.classList.contains("active")) {
            answer.style.maxHeight = answer.scrollHeight + "px";
         } else {
            answer.style.maxHeight = 0;
         }
      })
   })

</script>
<script>
      (function ($) {

         "use strict";

         var tabs = function () {
            $('.widget-tabs').each(function () {
               $(this).find('.widget-content-tab').children().hide();
               $(this).find('.widget-content-tab').children(".active").show();
               $(this).find('.widget-menu-tab').children('.item-title').on('click', function () {
                  var liActive = $(this).index();
                  var contentActive = $(this).siblings().removeClass('active').parents('.widget-tabs').find('.widget-content-tab').children().eq(liActive);
                  contentActive.addClass('active').fadeIn("slow");
                  contentActive.siblings().removeClass('active');
                  $(this).addClass('active').parents('.widget-tabs').find('.widget-content-tab').children().eq(liActive).siblings().hide();
               });
            });
            $('.widget-tabs-1').each(function () {
               $(this).find('.widget-content-tab-1').children().hide();
               $(this).find('.widget-content-tab-1').children(".active-1").show();
               $(this).find('.widget-menu-tab-1').children('.item-title-1').on('click', function () {
                  var liActive = $(this).index();
                  var contentActive = $(this).siblings().removeClass('active-1').parents('.widget-tabs-1').find('.widget-content-tab-1').children().eq(liActive);
                  contentActive.addClass('active-1').fadeIn("slow");
                  contentActive.siblings().removeClass('active-1');
                  $(this).addClass('active-1').parents('.widget-tabs-1').find('.widget-content-tab-1').children().eq(liActive).siblings().hide();
               });
            });
         };

      });

</script>
<script>
   $(document).ready(function () {

      var counters = $(".count");
      var countersQuantity = counters.length;
      var counter = [];

      for (i = 0; i < countersQuantity; i++) {
         counter[i] = parseInt(counters[i].innerHTML);
      }

      var count = function (start, value, id) {
         var localStart = start;
         setInterval(function () {
            if (localStart < value) {
               localStart++;
               counters[id].innerHTML = localStart;
            }
         }, 40);
      }

      for (j = 0; j < countersQuantity; j++) {
         count(0, counter[j], j);
      }
   });
</script>

</html>