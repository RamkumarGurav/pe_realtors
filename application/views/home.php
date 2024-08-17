<!-- Header Container / End -->
<section class="header-image home-18 d-flex align-items-center" id="slider">
  <div class="container">
    <div class="row d-flex align-items-center">
      <div class="col-lg-12" data-aos="fade-right">
        <div class="left wow fadeInLeft">
          <h1>Let's <span style="color:#d89e29">search</span> your dream property</h1>
        </div>
        <div class=" mt-3">
          <div class="banner-search-wrap">
            <ul class="nav nav-tabs rld-banner-tab">
              <li class="nav-item">
                <a class="nav-link active" data-toggle="tab" href="#tabs_1">Buy</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#tabs_2">Rent</a>
              </li>
              <!--<li class="nav-item">
         <a class="nav-link" data-toggle="tab" href="#tabs_3">Lease</a>
         </li>!-->
            </ul>
            <div class="tab-content">
              <div class="tab-pane fade show active" id="tabs_1">
                <div class="rld-main-search">
                  <div class="row">
                    <div class="search-box">
                      <input type="text" name="" id=""
                        placeholder="City, Neighborhood, Address, Postal Code, School District">
                      <a href="#" class="icon">
                        <i class="fas fa-search"></i>
                      </a>
                    </div>
                  </div>
                </div>
              </div>
              <div class="tab-pane fade" id="tabs_2">
                <div class="rld-main-search">
                  <div class="row">
                    <div class="search-box">
                      <input type="text" name="" id=""
                        placeholder="City, Neighborhood, Address, Postal Code, School District">
                      <a href="##" class="icon">
                        <i class="fas fa-search"></i>
                      </a>
                    </div>
                  </div>
                </div>
              </div>
              <div class="tab-pane fade" id="tabs_3">
                <div class="rld-main-search">
                  <div class="row">
                    <div class="search-box">
                      <input type="text" name="" id="" placeholder="Find a local Keller Williams® agent by name">
                      <a href="##" class="icon">
                        <i class="fas fa-search"></i>
                      </a>
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
</section>
<!-- END HEADER IMAGE -->

<?php if (!empty($property_data)): ?>
  <section class="recently portfolio bg-white-1 home18">
    <div class="container">
      <div class="sec-title">
        <h2><span>PE-Certified </span>Properties</h2>
        <p>Verified & Validated properties for you</p>
      </div>
      <div class="portfolio col-xl-12">
        <div class="slick-lancers">
          <?php foreach ($property_data as $item): ?>
            <div class="agents-grid" data-aos="fade-up" data-aos-delay="150">
              <div class="landscapes">
                <div class="project-single">
                  <div class="project-inner project-head">
                    <div class="project-bottom">
                      <h4><a href="<?= MAINSITE ?>property-details/<?= $item->slug_url ?>">View Property</a><span
                          class="category"><?= $item->property_type_name ?></span></h4>
                    </div>
                    <div class="homes">
                      <!-- homes img -->
                      <a href="#" class="homes-img">
                        <!--   <div class="homes-tag button alt featured">Featured</div>
         <div class="homes-tag button alt sale">For Sale</div> -->
                        <img src="<?= _uploaded_files_ ?>property_cover_image/<?= $item->cover_image ?>"
                          alt="<?= $item->cover_image_alt_title ?>" title="<?= $item->cover_image_title ?>"
                          class="img-responsive">
                      </a>
                    </div>
                    <div class="button-effect">
                      <a href="<?= $item->youtube_link ?>" target="_blank"> <span href="#" class="btn "><i
                            class="fab fa-youtube"></i></span><span style="color:#fff">Youtube</span></a>
                    </div>
                  </div>
                  <!-- homes content -->
                  <div class="homes-content">
                    <!-- homes address -->
                    <h3><a href="<?= MAINSITE ?>property-details/<?= $item->slug_url ?>"><?= $item->name ?></a></h3>
                    <p class="homes-address mb-3">
                      <a href="">
                        <i class="fa fa-map-marker"></i> <?php if (!empty($item->location_name)): ?>
                          <span><?= $item->location_name ?>,</span>
                        <?php endif; ?>
                        <?php if (!empty($item->city_name)): ?>
                          <span><?= $item->city_name ?>,</span>
                        <?php endif; ?>
                        <?php if (!empty($item->pincode)): ?>
                          <span><?= $item->pincode ?>,</span>
                        <?php endif; ?>
                        <?php if (!empty($item->state_name)): ?>
                          <span><?= $item->state_name ?></span>
                        <?php endif; ?>
                      </a>
                    </p>
                  </div>
                </div>
              </div>
            </div>
          <?php endforeach; ?>

        </div>
      </div>
    </div>
  </section>
<?php endif; ?>

<section class="h18 testimonials" id="services">
  <div class="container">
    <div class="sec-title">
      <h2><span>PE-Realtors </span> Services</h2>
      <p>PE-Realtors expertise in delivering property related services</p>
    </div>
    <div class="owl-carousel style1">
      <div class="service-item">
        <div class="row">
          <div class="col-lg-4">
            <center>
              <img src="<?= IMAGE ?>s5.png" class="img-responsive">
            </center>
          </div>
          <div class="col-lg-8">
            <div class="client-comment">
              <h2 class="services-head">Customized <span style="color: #d89e29">Sourcing Solution</span>
                to Buy or Rent properties
              </h2>
              <hr style="color: #d89e29 !important">
              <p>Source right properties and
                gernerate property options along
                with initial screening and checks
              </p>
            </div>
          </div>
        </div>
      </div>
      <div class="service-item">
        <div class="row">
          <div class="col-lg-4">
            <center><img src="<?= IMAGE ?>s1.png" class="img-responsive"></center>
          </div>
          <div class="col-lg-8">
            <div class="client-comment">
              <h2 class="services-head">End to End <span style="color: #d89e29">Property
                  Management Services</span>
              </h2>
              <hr style="color: #d89e29 !important">
              <p>We manage your property as a
                "Guardian" to ensure timely assistance
                and support as needed.
              </p>
            </div>
          </div>
        </div>
      </div>
      <div class="service-item">
        <div class="row">
          <div class="col-lg-4">
            <center> <img src="<?= IMAGE ?>s3.png" class="img-responsive"></center>
          </div>
          <div class="col-lg-8">
            <div class="client-comment">
              <h2 class="services-head">Property<span style="color: #d89e29"> Document
                  Verification/Legal Opinion</span>
              </h2>
              <hr style="color: #d89e29 !important">
              <p>Check your property document for
                legal sanity. This will ensure the title
                to the property is clear and legal.
              </p>
            </div>
          </div>
        </div>
      </div>
      <div class="service-item">
        <div class="row">
          <div class="col-lg-4">
            <center><img src="<?= IMAGE ?>s4.png" class="img-responsive"></center>
          </div>
          <div class="col-lg-8">
            <div class="client-comment">
              <h2 class="services-head"><span style="color: #d89e29">Property Khata / EC / Deed
                  Registration </span> Services
              </h2>
              <hr style="color: #d89e29 !important">
              <p>Facilitate, coordinate and ensuring
                must have check-list formalities are
                met and to make it legally complete.
              </p>
            </div>
          </div>
        </div>
      </div>
      <div class="service-item">
        <div class="row">
          <div class="col-lg-4">
            <center> <img src="<?= IMAGE ?>s2.png" class="img-responsive"></center>
          </div>
          <div class="col-lg-8">
            <div class="client-comment">
              <h2 class="services-head">Customized <span style="color: #d89e29">Marketing Solutions </span> for Property
                Rent/Sale
              </h2>
              <hr style="color: #d89e29 !important">
              <p>We deliver end to end priority marketing services to rent/sell your property</p>
            </div>
          </div>
        </div>
      </div>
      <!--  <img src="<?= IMAGE ?>services/1.png" style="border-radius: 5px">
         <img src="<?= IMAGE ?>services/2.png" style="border-radius: 5px">
         <img src="<?= IMAGE ?>services/3.png" style="border-radius: 5px">
         <img src="<?= IMAGE ?>services/4.png" style="border-radius: 5px">
         <img src="<?= IMAGE ?>services/5.png" style="border-radius: 5px"> -->
    </div>
</section>
<section id="company-and-values"
  class="working-process-section bg-secondary-color bg-no-repeat bg-cover bg-pos-cb pdt-90 pdb-105"
  data-background="<?= IMAGE ?>abs-bg4.png" data-overlay-dark="2"
  style="background-image: url(&quot;<?= IMAGE ?>abs-bg4.png&quot;);  padding:4.0rem 0 0 !important">
  <div class="section-content home18 bg-white-1">
    <div class="container">
      <div class="working-process-wrapper">
        <div class="working-process-shape">
          <img src="<?= IMAGE ?>bg/working-process-shape.png" alt="">
        </div>
        <div class="sec-title text-center">
          <h2><span>Why Choose </span> PE-Realtors</h2>
          <p>To experience the Best-In-Class Realty Services through a team of qualified property
            consultants who believes in “Delivering Values”</p>
        </div>
        <div class="row">
          <!--   <div class="title-box-center">
         <h5 class="side-line-left text-primary-color mrb-10">We've distilled our interior design process into 4 Steps</h5>
         <h2 class="text-white mrb-md-40 mrb-sm-30 padb40">
          Our Working   
           <span class="text-primary-color">Process</span> 
         </h2>
         </div> -->
          <div class="col-xl-3 col-lg-3 col-md-6">
            <div class="process-item mrb-md-40">
              <div class="process-icon-box">
                <div class="process-icon">
                  <span class="webexflaticon webextheme-icon-office-1"><svg fill="#fff" width="60px" height="60px"
                      viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                      <path
                        d="M7.86872332,11.2987983 L3.81348725,13.3862352 C3.31395818,13.6433683 3,14.15809 3,14.7199144 L3,15.5 C3,16.3284353 3.67158104,17 4.50007042,17 C4.77621279,17 5.00007042,17.2238576 5.00007042,17.5 C5.00007042,17.7761424 4.77621279,18 4.50007042,18 C3.11930174,18 2,16.8807255 2,15.5 L2,14.7199144 C2,13.7835403 2.52326364,12.9256709 3.35581209,12.4971157 L6.71355663,10.7687133 C5.64186533,9.83428889 5,8.47230593 5,7 C5,4.23857625 7.23857625,2 10,2 C11.6765944,2 13.2132159,2.83194719 14.1379524,4.1925488 C14.2931758,4.42093513 14.2338655,4.73191224 14.0054791,4.88713561 C13.7770928,5.04235899 13.4661157,4.9830487 13.3108923,4.75466237 C12.5703998,3.66514623 11.3418627,3 10,3 C7.790861,3 6,4.790861 6,7 C6,8.41171278 6.73680464,9.69567406 7.92026949,10.4175913 C8.15601291,10.5613955 8.23054436,10.8690796 8.08674015,11.104823 C8.0329088,11.1930707 7.95611316,11.2587279 7.86872332,11.2987983 L7.86872332,11.2987983 Z M11.9612658,15.5668358 L7.87929558,17.4222768 C7.34380416,17.665682 7,18.1996113 7,18.7878265 L7,19.5 C7,20.3284271 7.67157288,21 8.5,21 L19.5,21 C20.3284271,21 21,20.3284271 21,19.5 L21,18.7878265 C21,18.1996113 20.6561958,17.665682 20.1207044,17.4222768 L16.0387342,15.5668358 C15.4161054,15.8452135 14.7261289,16 14,16 C13.2738711,16 12.5838946,15.8452135 11.9612658,15.5668358 L11.9612658,15.5668358 Z M10.9221582,14.9406987 C9.75209123,14.0255364 9,12.6005984 9,11 C9,8.23857625 11.2385763,6 14,6 C16.7614237,6 19,8.23857625 19,11 C19,12.6005984 18.2479088,14.0255364 17.0778418,14.9406987 L20.5345074,16.5119103 C21.4269931,16.9175857 22,17.8074678 22,18.7878265 L22,19.5 C22,20.8807119 20.8807119,22 19.5,22 L8.5,22 C7.11928813,22 6,20.8807119 6,19.5 L6,18.7878265 C6,17.8074678 6.57300693,16.9175857 7.46549264,16.5119103 L10.9221582,14.9406987 L10.9221582,14.9406987 Z M14,15 C16.209139,15 18,13.209139 18,11 C18,8.790861 16.209139,7 14,7 C11.790861,7 10,8.790861 10,11 C10,13.209139 11.790861,15 14,15 Z" />
                    </svg></span>
                </div>
                <div class="process-count"></div>
              </div>
              <div class="process-details">
                <h4 class="process-title">Who We Are? </h4>
                <p class="process-text">Property Consultants and Real Estate related Service Providers</p>
              </div>
            </div>
          </div>
          <div class="col-xl-3 col-lg-3 col-md-6">
            <div class="process-item mrb-md-40">
              <div class="process-icon-box">
                <div class="process-icon">
                  <span class="webexflaticon webextheme-icon-architect-1"><svg version="1.1"
                      id="Uploaded to svgrepo.com" xmlns="http://www.w3.org/2000/svg"
                      xmlns:xlink="http://www.w3.org/1999/xlink" width="60px" height="60px" viewBox="0 0 32 32"
                      xml:space="preserve">
                      <style type="text/css">
                        .feather_een {
                          fill: #fff;
                        }
                      </style>
                      <path class="feather_een" d="M26,3H6C4.343,3,3,4.343,3,6v2c0,0.552,0.448,1,1,1v17c0,1.657,1.343,3,3,3h18c1.657,0,3-1.343,3-3V9
         c0.552,0,1-0.448,1-1V6C29,4.343,27.657,3,26,3z M25,28H7c-1.105,0-2-0.895-2-2V9h22v17C27,27.105,26.105,28,25,28z M28,8H4V6
         c0-1.105,0.895-2,2-2h20c1.105,0,2,0.895,2,2V8z M13.5,14h5c0.828,0,1.5-0.672,1.5-1.5S19.328,11,18.5,11h-5
         c-0.828,0-1.5,0.672-1.5,1.5S12.672,14,13.5,14z M13.5,12h5c0.276,0,0.5,0.224,0.5,0.5S18.776,13,18.5,13h-5
         c-0.276,0-0.5-0.224-0.5-0.5S13.224,12,13.5,12z" />
                    </svg></span>
                </div>
                <div class="process-count"></div>
              </div>
              <div class="process-details">
                <h4 class="process-title">What We Deliver?</h4>
                <p class="process-text">Deliver Values in Real Estate through Consulting Mindset</p>
              </div>
            </div>
          </div>
          <div class="col-xl-3 col-lg-3 col-md-6">
            <div class="process-item mrb-md-40">
              <div class="process-icon-box">
                <div class="process-icon">
                  <span class="webexflaticon webextheme-icon-measure"><svg xmlns="http://www.w3.org/2000/svg" width="60"
                      height="60" viewBox="0 0 24 24" fill="none" stroke="#fff" stroke-width="1" stroke-linecap="round"
                      stroke-linejoin="round">
                      <path d="M20 21v-2a4 4 0 00-4-4H8a4 4 0 00-4 4v2" />
                      <circle cx="12" cy="7" r="4" />
                    </svg></span>
                </div>
                <div class="process-count"></div>
              </div>
              <div class="process-details">
                <h4 class="process-title">Leadership</h4>
                <p class="process-text">Real Estate & Legal Expertise and entrepreneurs with IT experience</p>
              </div>
            </div>
          </div>
          <div class="col-xl-3 col-lg-3 col-md-6">
            <div class="process-item mrb-md-40 mrb-sm-0">
              <div class="process-icon-box">
                <div class="process-icon">
                  <span class="webexflaticon webextheme-icon-interior"><svg version="1.1" id="Layer_1"
                      xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="60px"
                      height="60px" viewBox="0 0 64 64" enable-background="new 0 0 64 64" xml:space="preserve">
                      <g>
                        <rect x="8" y="12" fill="none" stroke="#fff" stroke-width="2" stroke-miterlimit="10" width="48"
                          height="34" />
                        <rect x="1" y="46" fill="none" stroke="#fff" stroke-width="2" stroke-miterlimit="10" width="62"
                          height="6" />
                        <line fill="none" stroke="#fff" stroke-width="2" stroke-miterlimit="10" x1="34" y1="16" x2="30"
                          y2="16" />
                      </g>
                    </svg></span>
                </div>
                <div class="process-count"></div>
              </div>
              <div class="process-details">
                <h4 class="process-title"> Technology</h4>
                <p class="process-text">Leaverage Technology to deliver seamless service experience</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<section class="how-it-works bg-white-1 home18 mb-10">
  <div class="container mt-15"><span style="color: #d89e29">
      <div class="sec-title">
        <h2><span>Our Value
          </span> System</h2>
        <p>PE-Realtors culture is based on a set of shared values</p>
      </div>
      <div class="row service-1">
        <article class="col-lg col-12 serv" data-aos="fade-up" data-aos-delay="150">
          <div class="serv-flex">
            <div class="art-1 img-13">

              <!-- <img src="<?= IMAGE ?>c1.png" alt=""> -->
              <h3><span class="execution">E</span>xecution </h3>
            </div>
            <div class="service-text-p">
              <p class="text-center">is a core value that encourages collaboration, setting process and stay focused on
                impact, quality and efficiency to get the things done.</p>
            </div>
          </div>
        </article>
        <article class="col-lg col-12 serv" data-aos="fade-up" data-aos-delay="250">
          <div class="serv-flex">
            <div class="art-1 img-14">

              <h3><span class="passion"> P</span>assion </h3>
            </div>
            <div class="service-text-p">
              <p class="text-center">means challenging the status quo. We are encouraging curiosity and the pursuit of
                the seemingly impossible to continuously make things better.</p>
            </div>
          </div>
        </article>
        <article class="col-lg col-12 serv  pt" data-aos="fade-up" data-aos-delay="350">
          <div class="serv-flex arrow">
            <div class="art-1 img-15">

              <h3><span class="integrity">I</span>ntegrity </h3>
            </div>
            <div class="service-text-p">
              <p class="text-center">focus on building trust. we encourage our team to build and nurture relationships
                with everyone without taking anything for granted.
              </p>
            </div>
          </div>
        </article>
        <article class="col-lg col-12 serv  pt" data-aos="fade-up" data-aos-delay="350">
          <div class="serv-flex arrow">
            <div class="art-1 img-15">

              <h3><span class="communication"> C</span>ommunication </h3>
            </div>
            <div class="service-text-p">
              <p class="text-center">is key focus area to drive, to optimize and elevate customer relationship. The
                right communication at right time not only bridge the gaps but also empowers informed decision-making.
              </p>
            </div>
          </div>
        </article>
        <article class="col-lg col-12 serv  pt" data-aos="fade-up" data-aos-delay="350">
          <div class="serv-flex arrow">
            <div class="art-1 img-15">

              <h3><span class="customer-centric"> C</span>ustomer Centric </h3>
            </div>
            <div class="service-text-p">
              <p class="text-center">approach for better Customer Experience. We believe happy customers makes us more
                passionate and dedicated towards our work.
              </p>
            </div>
          </div>
        </article>
      </div>
  </div>
</section>
<section class="h18 testimonials real-ser" id="testimonials">
  <div class="container">
    <div class="sec-title">
      <h2><span>People</span> Says</h2>
      <p>Check out what people truly say by experiencing PE-Realtors services.</p>
    </div>
    <div class="owl-carousel style-3">
      <div class="single-testimonial" data-aos="zoom-in" data-aos-delay="150">
        <div class="client-comment client-comment1">
          <p>“We sold a property in Bangalore. PE-Realtors managed the entire process - from the title verification, to
            drafting the agreement to sell to obtaining up-to-date documents to sale deed drafting to the registration.
            Swamy and Nirmala from the PE-Realtors have managed everything very professionally and smoothly and
            have in fact, exceeded our expectations. They are so polite and professional that it was always a pleasure
            interacting with them. I am not surprised to see them doing so well. My best wishes for their future. I will
            whole-heartedly recommend them to anyone”
          </p>
        </div>
        <div class="clinet-inner text-center">
          <!-- <div class="client-thumb">
         <img src="<?= IMAGE ?>testimonials/ts-1.jpg" alt="" />
         </div> -->
          <div class="client-info">
            <h2>Surendra Saxena</h2>
            <div class="client-reviews">
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
            </div>
          </div>
        </div>
      </div>
      <div class="single-testimonial" data-aos="zoom-in" data-aos-delay="250">
        <div class="client-comment client-comment1">
          <p>“It is exhilarating. I have been trying to sell my property for the last 7 months. Few times it came close
            but fell
            through. Then I signed an exclusive arrangement. I don't pay anything extra but just gave them exclusivity
            for 3
            months. They found a buyer in 3 weeks of signing, hand-held and closed the deal including registration. The
            property is good but it has certain niche facets. Broadcasting such niche features and finding the correct
            persons with similar purchasing interest - is a professional job. Initially I had mindlessly given to 45
            brokers
            thinking that wide reach will get better results. Now I understand that it is not the number of brokers but
            a
            genuine property consultant who can curate a perfect sale where the buyer and seller are happy. There were
            so many thorns on the way to closure but Swamy ironed them out for me and the buyer. Thumbs up to this
            genuine property consultant”
          </p>
        </div>
        <div class="clinet-inner text-center">
          <!--   <div class="client-thumb">
         <img src="<?= IMAGE ?>testimonials/ts-2.jpg" alt="" />
         </div> -->
          <div class="client-info">
            <h2>Praveen Kumar</h2>
            <div class="client-reviews">
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
            </div>
          </div>
        </div>
      </div>
      <div class="single-testimonial" data-aos="zoom-in" data-aos-delay="350">
        <div class="client-comment client-comment1">
          <p>“We are NRIs and feel very fortunate to have met Mr. Swamy who has been a great help to us in selling and
            maintaining our properties in Bangalore. He’s very hard working, trustworthy, dependable & pleasant person
            to work with. We surely recommend him to any one who needs his services”
          </p>
        </div>
        <div class="clinet-inner text-center">
          <!--  <div class="client-thumb">
         <img src="<?= IMAGE ?>testimonials/ts-3.jpg" alt="" />
         </div> -->
          <div class="client-info">
            <h2>Viswas Garadi</h2>
            <div class="client-reviews">
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
            </div>
          </div>
        </div>
      </div>
      <div class="single-testimonial" data-aos="zoom-in" data-aos-delay="450">
        <div class="client-comment client-comment1">
          <p>“Swamy helped us in buying property. He is very professional, systematic, clear and pleasant in
            communication. He provided all the information required for the property purchase transparently. This helped
            us make an informed decision. We highly recommend Swamy and his firm for realty and legal services.”
          </p>
        </div>
        <div class="clinet-inner text-center">
          <!-- <div class="client-thumb">
         <img src="<?= IMAGE ?>testimonials/ts-4.jpg" alt="" />
         </div> -->
          <div class="client-info">
            <h2>Rajendra Baniyavar</h2>
            <div class="client-reviews">
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
            </div>
          </div>
        </div>
      </div>
      <div class="single-testimonial" data-aos="zoom-in">
        <div class="client-comment client-comment1">
          <p>Very good experience in finding the right home In Nagarabhavi with mr.Swamy from PE-Realtors. We had
            told our requirements and we could finalise the very first house they had shown us. They are very
            professional in their approach and provided end to end solution . we are very happy with their services
            and surely will recommend to others.
          </p>
        </div>
        <div class="clinet-inner text-center">
          <!-- <div class="client-thumb">
         <img src="<?= IMAGE ?>testimonials/ts-5.jpg" alt="" />
         </div> -->
          <div class="client-info">
            <h2>Javagal Krishna Murthy</h2>
            <div class="client-reviews">
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
            </div>
          </div>
        </div>
      </div>
      <div class="single-testimonial" data-aos="zoom-in">
        <div class="client-comment client-comment1">
          <p>PER, I came across them by accident, as my other Property Consultant, tied up with them, to rent out my
            Flat. I
            have never regretted that accidental meeting.
            From 2014 onwards, I have never looked elsewhere, when Property related services were needed. They have
            gone beyond the job of looking for tenant, always, dealing with all hitches and obstacles, to finally hand
            over
            the deal without any loose ends.
            Their involvement in the matter, brings in more value added Services, as some of us, can pay for the
            services,
            but logistically cannot deal with them.
            I have found Mr. Swamy as a very positive person and ever willing to help.
            I have rated them 5 star, only because there is no 6 star rating.
            I wish the whole team, all the very best.
          </p>
        </div>
        <div class="clinet-inner text-center">
          <!--  <div class="client-thumb">
         <img src="<?= IMAGE ?>testimonials/ts-6.jpg" alt="" />
         </div> -->
          <div class="client-info">
            <h2>Parameshwar Iyer</h2>
            <div class="client-reviews">
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
            </div>
          </div>
        </div>
      </div>
    </div>
    <center class="mt-5"> <a href="https://g.co/kgs/JekYGw" target="_blank" class="primarybtn"> Google Reviews Link</a>
    </center>
  </div>
</section>
<section class="tf-section bg-white-1 home18 get-r-ser">
  <center>
    <div class="col-12">
      <div class="sec-title">
        <h2><span>Get your required </span> Realty Service</h2>
        <p>Experience the seamless process with professional touch in property related service</p>
      </div>
    </div>
    <img src="<?= IMAGE ?>get-your-realty-services-delivered.png">
  </center>
</section>
<section class="cta-bg home18" style="">
  <div class="sec-title">
    <h2><span style="color: #fff">Become PE-Realtors </span> Associate/Consultant</h2>
    <p style="color: #fff">Career Oportunities at PE-Realtors</p>
  </div>
  <div class="row align-items-center justify-content-center">
    <div class="col-lg-8 m-auto">
      <center>
        <h2 style="color: #ffffffb0 !important;line-height: 40px;margin-bottom: 20px;
         font-size: 21px;background: #2628368a;padding: 20px;">Join the team of <span style="color: #d89e29">Dreamers &
            Entrepreneurs</span> who thrives to make the difference to <span style="color: #d89e29">bring Changes and
            Success !</span></h2>
        <a href="" class="cta-btn" style="color: #000 !important">send your resume to pe@perealtors.com</a>
      </center>
    </div>
  </div>
</section>
<div class="home18 faq service-details bg-white-1" id="faqs">
  <div class="container ">
    <div class="sec-title">
      <h2><span>Frequently</span> Asked Questions relating to properties </h2>
      <p>“Questions about property pricing, market trend, property documents and property related services”</p>
    </div>
    <div class="row">
      <div class="col-lg-6">
        <div class="container ">
          <!-- <div class="row"> -->
          <div class="question">
            How do I Sell/Rent my properties quickly for a better price?
          </div>
          <div class="answercont">
            <div class="answer">
              Each property is unique in nature which requires a thoughtful marketing strategy to find the right
              customer for the right price. Focused marketing efforts needed to maximize the market reach along with an
              intensive follow-up and follow through with the right prospects enables reduction in the turnaround time
              for property sale or rent. PE-Realtors provide a customized solution to Sell/Rent the property [New or
              old] through “Priority Marketing Services”.
            </div>
          </div>
        </div>
        <div class="container">
          <div class="question">
            How do I know my property’s current Market Price?
          </div>
          <div class="answercont">
            <div class="answer">
              Property market price depends on various factors such as property location, unique selling propositions,
              property title, location advantage and future growth. Guidance value defined by the local authority can be
              a reference point to assess the fair market value of the property. PE- Realtors provide property valuation
              and market assessment services.
            </div>
          </div>
        </div>
        <div class="container">
          <div class="question">
            How do I know if my property document is complete and up to date?
          </div>
          <div class="answercont">
            <div class="answer">
              Property documentation should be up to date for any property. It is always a best practice to check the
              list of documents regularly and meet any latest Government/local authority’s requirements. PE-Realtors
              provide “Property Document Verification” service to check the title flow and provide “Legal Opinion” if
              needed.
            </div>
          </div>
        </div>
        <div class="container">
          <div class="question">
            Who can assist in my property related legal services?
          </div>
          <div class="answercont">
            <div class="answer">
              The title of the property and the documentation plays a vital role in deciding the value of the property.
              Legal assistance with title scrutiny and proper documentation is a must. A lawyer is the best person to
              guide and correct the documentation. Always keep your property documents updated. PE-Realtors have a legal
              team who can assist in the same.
            </div>
          </div>
        </div>
        <div class="container">
          <div class="question">
            What should I do post property registration?
          </div>
          <div class="answercont">
            <div class="answer">
              From a legal point of view, property registration [Sale deed Registration] is only a partial completion of
              title transfer. There are various other processes for to be completed post registration and to comply with
              the local authority’s requirements. It includes Khatha creation / transfer, change in the property tax
              system, change in electricity connection etc. The set of activities post registration varies from property
              to property. PE-Realtors provides end-to-end service to the customers post registration.
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-6">
        <img src="<?= IMAGE ?>faq1.png" alt="">
      </div>
    </div>
    <center>
  </div>
</div>
<section id="form-sec" class="header-image home18  d-flex align-items-center login-bg" id="slider">
  <div class="container">
    <div class="sec-title">
      <h2><span style="color: #fff">Submit Your </span> Requirement</h2>
      <p style="color: #fff">Our team will get back to you</p>
    </div>
    <div class="row d-flex align-items-center  mt-">
      <div class="col-lg-8 m-auto google-maps home-18" data-aos="fade-left">
        <div class="filter " style="width:100% !important">
          <!--  <div class="filter-toggle ">
         <h1 style="font-size: 20px;
            text-align: left !important;
            color: #fff;
            font-weight: 600;text-tranform:none !important">Log your <span style="color:#d89e29">requirement</span></h1>
         </div> -->
          <form method="get">
            <div class="row d-flex align-items-center  mt-">
              <div class="col-lg-6">
                <div class="filter-item ">
                  <input type="text" placeholder="Name">
                </div>
              </div>
              <div class="col-lg-6">
                <div class="filter-item ">
                  <input type="email" placeholder="Email Id">
                </div>
              </div>
            </div>
            <div class="row d-flex align-items-center  mt-">
              <div class="col-lg-6">
                <div class="filter-item ">
                  <input type="text" placeholder="Phone Number">
                </div>
              </div>
              <div class="col-lg-6">
                <div class="filter-item ">
                  <select>
                    <option> Select a Service</option>
                    <option> Buying a property</option>
                    <option> Selling a property</option>
                    <option> I have property to rent out</option>
                    <option> I need rental property</option>
                    <option> Property Document related</option>
                    <option> Property Legal Service
                    </option>
                  </select>
                  <!-- <textarea placeholder="Requirement" style="height: 50px;"></textarea> -->
                </div>
              </div>
            </div>
            <div class="row d-flex align-items-center  mt-">
              <div class="col-lg-12">
                <div class="filter-item ">
                  <textarea placeholder="Requirement" style="height: 150px;"></textarea>
                </div>
              </div>
            </div>
            <div class="row d-flex align-items-center  mt-">
              <div class="col-lg-12">
                <div class="filter-item d-flex align-items-start justify-content-start">
                  <input type="checkbox" id="vehicle1" name="vehicle1" value="Bike" style="margin-top: 5px">
                  <label for="vehicle1" style="color: #fff !important"> By checking this check box, you are providing
                    your consent to PE-Realtors, they may contact you on the telephone number and may send marketing
                    calls and texts to you using an automated system for selection or dialling of numbers or
                    pre-recorded or artificial voice messages that relate to real estate products or services.</label>
                </div>
              </div>
            </div>
            <div class="filter-item">
              <input type="submit" class="button alt mb-0" value="Submit" />
            </div>
          </form>
        </div>
        <div class="clear-both"></div>
      </div>
      <div class="col-lg-5 mt-10" data-aos="fade-right">
        <!-- <img src="<?= IMAGE ?>login1.png"> -->
      </div>
    </div>
  </div>
  </div>
</section>
<section class="visited-cities bg-white-1 home18">
  <div class="container">
    <div class="sec-title">
      <h2><span>Properties </span>Available</h2>
      <p>Choose the property type which you are Looking !</p>
    </div>
    <div class="row">
      <div class="col-md-12">
      </div>
      <div class="col-lg-6 col-md-6 pr-1" data-aos="fade-right">
        <!-- Image Box -->
        <a href="<?= MAINSITE ?>search-results?p_type=4" class="img-box hover-effect">
          <img src="<?= IMAGE ?>primary-loc/r-rent.png" class="img-responsive" alt="">
          <!-- Badge -->
          <div class="img-box-content visible">
            <h4 class="mb-2">Residential Sale</h4>
            <!--<span>200 Properties</span>
         <ul class="starts text-center mt-2">
            <li><i class="fa fa-star"></i>
            </li>
            <li><i class="fa fa-star"></i>
            </li>
            <li><i class="fa fa-star"></i>
            </li>
            <li><i class="fa fa-star"></i>
            </li>
            <li><i class="fa fa-star"></i>
            </li>
         </ul>!-->
          </div>
        </a>
      </div>
      <div class="col-lg-3 col-md-6 pr-1" data-aos="fade-left">
        <!-- Image Box -->
        <a href="<?= MAINSITE ?>search-results?p_type=1" class="img-box hover-effect">
          <img src="<?= IMAGE ?>primary-loc/r-sale.png" class="img-responsive" alt="">
          <div class="img-box-content visible">
            <h4 class="mb-2">Residentials Rentals</h4>
            <!-- <span>200 Properties</span>
         <ul class="starts text-center mt-2">
            <li><i class="fa fa-star"></i>
            </li>
            <li><i class="fa fa-star"></i>
            </li>
            <li><i class="fa fa-star"></i>
            </li>
            <li><i class="fa fa-star"></i>
            </li>
            <li><i class="fa fa-star"></i>
            </li>
         </ul>!-->
          </div>
        </a>
      </div>
      <div class="col-lg-3 col-md-6 pr" data-aos="fade-left">
        <!-- Image Box -->
        <a href="<?= MAINSITE ?>search-results?p_type=8" class="img-box hover-effect">
          <img src="<?= IMAGE ?>primary-loc/a-l.png" class="img-responsive" alt="">
          <div class="img-box-content visible">
            <h4 class="mb-2">Agricultural land
            </h4>
            <!-- <span>200 Properties</span>
         <ul class="starts text-center mt-2">
            <li><i class="fa fa-star"></i>
            </li>
            <li><i class="fa fa-star"></i>
            </li>
            <li><i class="fa fa-star"></i>
            </li>
            <li><i class="fa fa-star"></i>
            </li>
            <li><i class="fa fa-star"></i>
            </li>
         </ul>!-->
          </div>
        </a>
      </div>
      <div class="col-lg-3 col-md-6 pr-1" data-aos="fade-right">
        <!-- Image Box -->
        <a href="<?= MAINSITE ?>search-results?p_type=9" class="img-box no-mb mi x3 hover-effect">
          <img src="<?= IMAGE ?>primary-loc/proj.png" class="img-responsive" alt="">
          <div class="img-box-content visible">
            <h4 class="mb-2">Projects</h4>
            <!-- <span>200 Properties</span>
         <ul class="starts text-center mt-2">
            <li><i class="fa fa-star"></i>
            </li>
            <li><i class="fa fa-star"></i>
            </li>
            <li><i class="fa fa-star"></i>
            </li>
            <li><i class="fa fa-star"></i>
            </li>
            <li><i class="fa fa-star"></i>
            </li>
         </ul>!-->
          </div>
        </a>
      </div>
      <div class="col-lg-3 col-md-6 pr-1" data-aos="fade-right">
        <!-- Image Box -->
        <a href="<?= MAINSITE ?>search-results?p_type=2" class="img-box no-mb mi x3 hover-effect">
          <img src="<?= IMAGE ?>primary-loc/c-rent.png" class="img-responsive" alt="">
          <div class="img-box-content visible">
            <h4 class="mb-2">Commercial Rentals</h4>
            <!-- <span>200 Properties</span>
         <ul class="starts text-center mt-2">
            <li><i class="fa fa-star"></i>
            </li>
            <li><i class="fa fa-star"></i>
            </li>
            <li><i class="fa fa-star"></i>
            </li>
            <li><i class="fa fa-star"></i>
            </li>
            <li><i class="fa fa-star"></i>
            </li>
         </ul>!-->
          </div>
        </a>
      </div>
      <div class="col-lg-6 col-md-6 pr" data-aos="fade-left">
        <!-- Image Box -->
        <a href="<?= MAINSITE ?>search-results?p_type=6" class="img-box san no-mb x3 hover-effect">
          <img src="<?= IMAGE ?>primary-loc/c-s.png" class="img-responsive" alt="" style="width: 540px height:280px">
          <div class="img-box-content visible">
            <h4 class="mb-2">Commercial Sale
            </h4>
            <!-- <span>200 Properties</span>
         <ul class="starts text-center mt-2">
            <li><i class="fa fa-star"></i>
            </li>
            <li><i class="fa fa-star"></i>
            </li>
            <li><i class="fa fa-star"></i>
            </li>
            <li><i class="fa fa-star"></i>
            </li>
            <li><i class="fa fa-star"></i>
            </li>
         </ul>!-->
          </div>
        </a>
      </div>
    </div>
  </div>

</section>
<section class="home18 our-partners bg-white-1">
  <div class="container">
    <div class="sec-title">
      <h2><span>Official </span>Partners / Association</h2>
    </div>
    <div class="row m-auto justify-content-center align-items-center">
      <div class="col-lg-3">
        <a href="https://nriway.com/" target="_blank"><img src="<?= IMAGE ?>nriway-blue-logo.svg"></a>
      </div>
    </div>
  </div>
</section>