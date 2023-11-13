<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
.site-blocks-cover, .site-blocks-cover > .container > .row {
    min-height: 600px;
    height: calc(100vh); }
</style>
<div class="site-blocks-cover overlay" style="background-image: url(${pageContext.request.contextPath }/resources/images/hero_2.jpg);" data-aos="fade" id="home-section">

      <div class="container">
        <div class="row align-items-center justify-content-center">

          
          <div class="col-md-8 mt-lg-5 text-center">
            <h1 class="text-uppercase" data-aos="fade-up">당신이 원하는 인사관리의 시작,</h1>
            <h2 data-aos="fade-up">Want System In</h2><br/>
<!--             <p class="mb-5 desc"  data-aos="fade-up" data-aos-delay="100">Want System In</p> -->
            <div data-aos="fade-up" data-aos-delay="100">
              <a href="#intro-section" class="btn smoothscroll btn-primary mr-2 mb-2">시작하기</a>
              <a href="/askboard" class="btn smoothscroll btn-light mr-2 mb-2">문의하기</a>
            </div>
          </div>
            
        </div>
      </div>

      <a href="#intro-section" class="mouse smoothscroll">
        <span class="mouse-icon">
          <span class="mouse-wheel"></span>
        </span>
      </a>
    </div>  

    <!-- WSI 소개(intro-section)  -->
    <div class="site-section cta-big-image" id="intro-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-12 text-center" data-aos="fade">
            <h2 class="section-title mb-3">WSI 소개🖐</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-6 mb-5" data-aos="fade-up" data-aos-delay="">
            <figure class="circle-bg">
            <img src="${pageContext.request.contextPath }/resources/images/hero_1.jpg" alt="Image" class="img-fluid">
            </figure>
          </div>
          <div class="col-lg-5 ml-auto" data-aos="fade-up" data-aos-delay="100">
            <div class="mb-4">
              <h3 class="h3 mb-4 text-black"><b><em>원하는 시스템을 IN!</em></b></h3>
              <p>원시인은 획일화된 기능을 제공하던 기존의 인사시스템을 벗어나 사용자 맞춤형 서비스를 제공합니다.</p>
            </div>
            <div class="mb-4">
              <ul class="list-unstyled ul-check success">
                <li>사용자가 원하는 기능 선택</li>
                <li>언제든지 기능 추가 및 삭제 가능</li>
                <li>각종 통계 데이터 제공</li>
              </ul>
            </div>
          </div>
        </div>
      </div>  
    </div>


<!-- 	<section class="site-section testimonial-wrap" id="testimonials-section" data-aos="fade"> -->
<!--       <div class="container"> -->
<!--         <div class="row mb-5"> -->
<!--           <div class="col-12 text-center"> -->
<!--             <h2 class="section-title mb-3">기본 기능 소개</h2> -->
<!--           </div> -->
<!--         </div> -->
<!--       </div> -->
<!--       <div class="slide-one-item home-slider owl-carousel"> -->
<!--           <div> -->
<!--             <div class="testimonial"> -->
              
<!--               <blockquote class="mb-5"> -->
<!--               	<p>1. 인사 관리</p> -->
<!--               </blockquote> -->

<!--               <figure class="mb-4 d-flex align-items-center justify-content-center"> -->
<%--                 <div><img src="${pageContext.request.contextPath }/resources/images/person_3.jpg" alt="Image" class="w-50 img-fluid mb-3"></div> --%>
<!--                 <p>John Smith</p> -->
<!--               </figure> -->
<!--             </div> -->
<!--           </div> -->
<!--           <div> -->
<!--             <div class="testimonial"> -->

<!--               <blockquote class="mb-5"> -->
<!--                 <p>&ldquo;Lorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur unde reprehenderit aperiam quaerat fugiat repudiandae explicabo animi minima fuga beatae illum eligendi incidunt consequatur. Amet dolores excepturi earum unde iusto.&rdquo;</p> -->
<!--               </blockquote> -->
<!--               <figure class="mb-4 d-flex align-items-center justify-content-center"> -->
<%--                 <div><img src="${pageContext.request.contextPath }/resources/images/person_2.jpg" alt="Image" class="w-50 img-fluid mb-3"></div> --%>
<!--                 <p>Christine Aguilar</p> -->
<!--               </figure> -->
              
<!--             </div> -->
<!--           </div> -->

<!--           <div> -->
<!--             <div class="testimonial"> -->

<!--               <blockquote class="mb-5"> -->
<!--                 <p>&ldquo;Lorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur unde reprehenderit aperiam quaerat fugiat repudiandae explicabo animi minima fuga beatae illum eligendi incidunt consequatur. Amet dolores excepturi earum unde iusto.&rdquo;</p> -->
<!--               </blockquote> -->
<!--               <figure class="mb-4 d-flex align-items-center justify-content-center"> -->
<%--                 <div><img src="${pageContext.request.contextPath }/resources/images/person_4.jpg" alt="Image" class="w-50 img-fluid mb-3"></div> --%>
<!--                 <p>Robert Spears</p> -->
<!--               </figure> -->

              
<!--             </div> -->
<!--           </div> -->

<!--           <div> -->
<!--             <div class="testimonial"> -->

<!--               <blockquote class="mb-5"> -->
<!--                 <p>&ldquo;Lorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur unde reprehenderit aperiam quaerat fugiat repudiandae explicabo animi minima fuga beatae illum eligendi incidunt consequatur. Amet dolores excepturi earum unde iusto.&rdquo;</p> -->
<!--               </blockquote> -->
<!--               <figure class="mb-4 d-flex align-items-center justify-content-center"> -->
<%--                 <div><img src="${pageContext.request.contextPath }/resources/images/person_4.jpg" alt="Image" class="w-50 img-fluid mb-3"></div> --%>
<!--                 <p>Bruce Rogers</p> -->
<!--               </figure> -->

<!--             </div> -->
<!--           </div> -->

<!--         </div> -->
<!--     </section> -->



	<!-- 기본 기능 소개 -->
    <section class="site-section" id="basicfunction-section">
      <div class="container">

        <div class="row mb-5 justify-content-center">
          <div class="col-md-7 text-center">
            <h2 class="section-title mb-3" data-aos="fade-up" data-aos-delay="">기본 기능📌</h2>
            <p class="lead" data-aos="fade-up" data-aos-delay="100">인사 관리, 채용 관리, 경영 관리, 자료실이 제공됩니다!</p>
          </div>
        </div>
        
        <div class="row" >
          <div class="col-lg-6 mb-5" data-aos="fade-up" data-aos-delay="">

            <div class="owl-carousel slide-one-item-alt">
              <img src="${pageContext.request.contextPath }/resources/images/insa.png" alt="Image" class="img-fluid">
              <img src="${pageContext.request.contextPath }/resources/images/chaeyong.png" alt="Image" class="img-fluid">
              <img src="${pageContext.request.contextPath }/resources/images/manage.png" alt="Image" class="img-fluid">
              <img src="${pageContext.request.contextPath }/resources/images/data.png" alt="Image" class="img-fluid">
            </div>
            <div class="custom-direction">
              <a href="#" class="custom-prev"><span><span class="icon-keyboard_backspace"></span></span></a><a href="#" class="custom-next"><span><span class="icon-keyboard_backspace"></span></span></a>
            </div>

          </div>
          <div class="col-lg-5 ml-auto" data-aos="fade-up" data-aos-delay="100">
            
            <div class="owl-carousel slide-one-item-alt-text">
              <div>
                <h2 class="section-title mb-3">1. 인사 관리</h2>
                <p class="lead">원시인의 편리한 인사 관리 기능을 만나보세요!</p>
                <p>사원들의 부서이동 및 승진, 퇴직까지 직관적인 프로세스로 원시인을 처음 이용하는 분들이라도 누구나 쉽게 사용할 수 있습니다.</p>

                <p><a href="http://localhost/resources/images/insa.png" target="_blank" class="btn btn-primary mr-2 mb-2">상세보기</a></p>
              </div>
              <div>
                <h2 class="section-title mb-3">2. 채용 관리</h2>
                <p class="lead">우리 회사 신입사원 관리도 원시인에서 도와드립니다!</p>
                <p>우리 회사에 첫 발을 내딛는 신입사원의 채용 뒤 첫 발령도 원시인으로 편리하게 처리할 수 있습니다.</p>

                <p><a href="http://localhost/resources/images/chaeyong.png" target="_blank" class="btn btn-primary mr-2 mb-2">상세보기</a></p>
              </div>
              <div>
                <h2 class="section-title mb-3">3. 경영 관리</h2>
                <p class="lead">우리 회사 얼마나 성장했을까? 원시인이 통계로 알려드립니다!</p>
                <p>직접 계산하려면 수고스러웠던 각종 경영 통계 자료들, 원시인을 이용하시면 직접 계산하지 않아도 편리하게 확인하실 수 있습니다.</p>

				<p><a href="http://localhost/resources/images/manage.png" target="_blank" class="btn btn-primary mr-2 mb-2">상세보기</a></p>
              </div>
              <div>
                <h2 class="section-title mb-3">4. 자료실</h2>
                <p class="lead">각종 교육자료와 증명서 양식, 관리가 힘드신가요?</p>
                <p>원시인에서 제공하는 자료실에 업로드하면 관리자와 사원 모두 한눈에 확인 가능합니다. 각종 서식과 자료들, 편리하게 업로드하고 다운로드 받아보세요.</p>

                <p><a href="http://localhost/resources/images/data.png" target="_blank" class="btn btn-primary mr-2 mb-2">상세보기</a></p>
              </div>
            </div>
            
          </div>
        </div>
      </div>
    </section>


	<!-- 선택 기능 소개 -->
    <section class="site-section" id="selectfunction-section">
      <div class="container">

        <div class="row mb-5 justify-content-center">
          <div class="col-md-7 text-center">
            <h2 class="section-title mb-3" data-aos="fade-up" data-aos-delay="">선택 기능✔</h2>
            <p class="lead" data-aos="fade-up" data-aos-delay="100">근태 관리, 휴가 관리, 급여 관리, 기안·결재 중 원하는 기능을 선택하세요!</p>
          </div>
        </div>
        
        <div class="row" >
          <div class="col-lg-6 mb-5" data-aos="fade-up" data-aos-delay="">

            <div class="owl-carousel slide-one-item-alt">
              <img src="${pageContext.request.contextPath }/resources/images/work.png" alt="Image" class="img-fluid">
              <img src="${pageContext.request.contextPath }/resources/images/vacation.png" alt="Image" class="img-fluid">
              <img src="${pageContext.request.contextPath }/resources/images/pay.png" alt="Image" class="img-fluid">
              <img src="${pageContext.request.contextPath }/resources/images/document.png" alt="Image" class="img-fluid">
            </div>
            <div class="custom-direction">
              <a href="#" class="custom-prev"><span><span class="icon-keyboard_backspace"></span></span></a><a href="#" class="custom-next"><span><span class="icon-keyboard_backspace"></span></span></a>
            </div>

          </div>
          <div class="col-lg-5 ml-auto" data-aos="fade-up" data-aos-delay="100">
            
            <div class="owl-carousel slide-one-item-alt-text">
              <div>
                <h2 class="section-title mb-3">1. 근태 관리</h2>
                <p class="lead">구성원 출퇴근 관리도 한번에 처리하세요!</p>
                <p>직원들의 근무기록을 한눈에 보고 싶으셨다면 원시인의 근태관리 기능을 선택해보세요! 팀별 근무 기록과 근무 유형을 한눈에 알아보기 쉽게 제공해드립니다.</p>

                <p><a href="http://localhost/resources/images/work.png" target="_blank" class="btn btn-primary mr-2 mb-2">상세보기</a></p>
              </div>
              <div>
                <h2 class="section-title mb-3">2. 휴가 관리</h2>
                <p class="lead">우리 회사 휴가, 쉽게 관리할 수 있어요!</p>
                <p>구성원 사기 증진을 위해서는 휴가 관리도 필수죠. 휴가 종류 관리부터 휴가별 부여 일수와 증명자료 여부, 유·무급 선택까지 쉽게 가능합니다.</p>

                <p><a href="http://localhost/resources/images/vacation.png" target="_blank" class="btn btn-primary mr-2 mb-2">상세보기</a></p>
              </div>
              <div>
                <h2 class="section-title mb-3">3. 급여 관리</h2>
                <p class="lead">매달 직접 급여업무를 처리하기 힘드시진 않았나요?</p>
                <p>원시인에서는 매달 말일 자동으로 급여업무를 처리할 수 있게 도와드립니다. 또, 중간정산과 퇴직금 정산도 문제 없어요.</p>

                <p><a href="http://localhost/resources/images/pay.png" target="_blank" class="btn btn-primary mr-2 mb-2">상세보기</a></p>
              </div>
              <div>
                <h2 class="section-title mb-3">4. 기안·결재</h2>
                <p class="lead">구성원들이 올리는 여러가지 기안, 모아서 관리할 수 있어요!</p>
                <p>각종 경비 신청, 휴가 신청, 근무 신청…. 직접 처리하지 마세요! 전자 결재로 간편하고 쉽게 해결하세요.</p>

                <p><a href="http://localhost/resources/images/document.png" target="_blank" class="btn btn-primary mr-2 mb-2">상세보기</a></p>
              </div>
            </div>
            
          </div>
        </div>
      </div>
    </section>
	

    
    <section class="site-section border-bottom" id="team-section">
      <div class="container">
        <div class="row mb-5 justify-content-center">
          <div class="col-md-8 text-center">
            <h2 class="section-title mb-3" data-aos="fade-up" data-aos-delay="">WSI 팀을 소개합니다!🤗</h2>
            
            <p class="lead" data-aos="fade-up" data-aos-delay="100">사용자가 원하는 기능을 선택할 수 있는 <b>'맞춤형 인사관리시스템'</b>을 만들고 있어요!</p>
          </div>
        </div>
        <div class="row">
          

          <div class="col-md-6 col-lg-4 mb-4" data-aos="fade-up" data-aos-delay="">
            <div class="team-member">
              <figure>
                <ul class="social">
                  <li><a href="#"><span class="icon-facebook"></span></a></li>
                  <li><a href="#"><span class="icon-twitter"></span></a></li>
                  <li><a href="#"><span class="icon-linkedin"></span></a></li>
                  <li><a href="#"><span class="icon-instagram"></span></a></li>
                </ul>
                <img src="${pageContext.request.contextPath }/resources/images/PYB.png" alt="Image" class="img-fluid">
              </figure>
              <div class="p-3">
                <h3><b>박유빈</b></h3>
                <span class="position">PL</span>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-4" data-aos="fade-up" data-aos-delay="100">
            <div class="team-member">
              <figure>
                <ul class="social">
                  <li><a href="#"><span class="icon-facebook"></span></a></li>
                  <li><a href="#"><span class="icon-twitter"></span></a></li>
                  <li><a href="#"><span class="icon-linkedin"></span></a></li>
                  <li><a href="#"><span class="icon-instagram"></span></a></li>
                </ul>
                <img src="${pageContext.request.contextPath }/resources/images/JCY.png" alt="Image" class="img-fluid">
              </figure>
              <div class="p-3">
                <h3><b>정천용</b></h3>
                <span class="position">TA</span>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-4" data-aos="fade-up" data-aos-delay="200">
            <div class="team-member">
              <figure>
                <ul class="social">
                  <li><a href="#"><span class="icon-facebook"></span></a></li>
                  <li><a href="#"><span class="icon-twitter"></span></a></li>
                  <li><a href="#"><span class="icon-linkedin"></span></a></li>
                  <li><a href="#"><span class="icon-instagram"></span></a></li>
                </ul>
                <img src="${pageContext.request.contextPath }/resources/images/CMK.png" alt="Image" class="img-fluid">
              </figure>
              <div class="p-3">
                <h3><b>최미키코</b></h3>
                <span class="position">UA</span>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-4" data-aos="fade-up" data-aos-delay="300">
            <div class="team-member">
              <figure>
                <ul class="social">
                  <li><a href="#"><span class="icon-facebook"></span></a></li>
                  <li><a href="#"><span class="icon-twitter"></span></a></li>
                  <li><a href="#"><span class="icon-linkedin"></span></a></li>
                  <li><a href="#"><span class="icon-instagram"></span></a></li>
                </ul>
                <img src="${pageContext.request.contextPath }/resources/images/CYJ.png" alt="Image" class="img-fluid">
              </figure>
              <div class="p-3">
                <h3><b>조예진</b></h3>
                <span class="position">AA</span>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-4" data-aos="fade-up" data-aos-delay="">
            <div class="team-member">
              <figure>
                <ul class="social">
                  <li><a href="#"><span class="icon-facebook"></span></a></li>
                  <li><a href="#"><span class="icon-twitter"></span></a></li>
                  <li><a href="#"><span class="icon-linkedin"></span></a></li>
                  <li><a href="#"><span class="icon-instagram"></span></a></li>
                </ul>
                <img src="${pageContext.request.contextPath }/resources/images/YHW.png" alt="Image" class="img-fluid">
              </figure>
              <div class="p-3">
                <h3><b>양혜원</b></h3>
                <span class="position">DA</span>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-4" data-aos="fade-up" data-aos-delay="100">
            <div class="team-member">
              <figure>
                <ul class="social">
                  <li><a href="#"><span class="icon-facebook"></span></a></li>
                  <li><a href="#"><span class="icon-twitter"></span></a></li>
                  <li><a href="#"><span class="icon-linkedin"></span></a></li>
                  <li><a href="#"><span class="icon-instagram"></span></a></li>
                </ul>
                <img src="${pageContext.request.contextPath }/resources/images/SKD.png" alt="Image" class="img-fluid">
              </figure>
              <div class="p-3">
                <h3><b>송기돈</b></h3>
                <span class="position">TA</span>
              </div>
            </div>
          </div>

      </div>
    </section>

<!--     <section class="site-section" id="portfolio-section"> -->
      

<!--       <div class="container"> -->

<!--         <div class="row mb-3"> -->
<!--           <div class="col-12 text-center" data-aos="fade"> -->
<!--             <h2 class="section-title mb-3">Portfolio</h2> -->
<!--           </div> -->
<!--         </div> -->

<!--         <div class="row justify-content-center mb-5" data-aos="fade-up"> -->
<!--           <div id="filters" class="filters text-center button-group col-md-7"> -->
<!--             <button class="btn btn-primary active" data-filter="*">All</button> -->
<!--             <button class="btn btn-primary" data-filter=".web">Web</button> -->
<!--             <button class="btn btn-primary" data-filter=".design">Design</button> -->
<!--             <button class="btn btn-primary" data-filter=".brand">Brand</button> -->
<!--           </div> -->
<!--         </div>   -->
        
<!--         <div id="posts" class="row no-gutter"> -->
<!--           <div class="item web col-sm-6 col-md-4 col-lg-4 col-xl-3 mb-4"> -->
<!--             <a href="images/img_1.jpg" class="item-wrap fancybox" data-fancybox="gallery2"> -->
<!--               <span class="icon-search2"></span> -->
<%--               <img class="img-fluid" src="${pageContext.request.contextPath }/resources/images/img_1.jpg"> --%>
<!--             </a> -->
<!--           </div> -->
<!--           <div class="item web col-sm-6 col-md-4 col-lg-4 col-xl-3 mb-4"> -->
<!--             <a href="images/img_2.jpg" class="item-wrap fancybox" data-fancybox="gallery2"> -->
<!--               <span class="icon-search2"></span> -->
<%--               <img class="img-fluid" src="${pageContext.request.contextPath }/resources/images/img_2.jpg"> --%>
<!--             </a> -->
<!--           </div> -->

<!--           <div class="item brand col-sm-6 col-md-4 col-lg-4 col-xl-3 mb-4"> -->
<!--             <a href="images/img_3.jpg" class="item-wrap fancybox" data-fancybox="gallery2"> -->
<!--               <span class="icon-search2"></span> -->
<%--               <img class="img-fluid" src="${pageContext.request.contextPath }/resources/images/img_3.jpg"> --%>
<!--             </a> -->
<!--           </div> -->

<!--           <div class="item design col-sm-6 col-md-4 col-lg-4 col-xl-3 mb-4"> -->

<!--             <a href="images/img_4.jpg" class="item-wrap fancybox" data-fancybox="gallery2"> -->
<!--               <span class="icon-search2"></span> -->
<%--               <img class="img-fluid" src="${pageContext.request.contextPath }/resources/images/img_4.jpg"> --%>
<!--             </a> -->

<!--           </div> -->

<!--           <div class="item web col-sm-6 col-md-4 col-lg-4 col-xl-3 mb-4"> -->
<!--             <a href="images/img_5.jpg" class="item-wrap fancybox" data-fancybox="gallery2"> -->
<!--               <span class="icon-search2"></span> -->
<%--               <img class="img-fluid" src="${pageContext.request.contextPath }/resources/images/img_5.jpg"> --%>
<!--             </a> -->
<!--           </div> -->

<!--           <div class="item brand col-sm-6 col-md-4 col-lg-4 col-xl-3 mb-4"> -->
<!--             <a href="images/img_6.jpg" class="item-wrap fancybox" data-fancybox="gallery2"> -->
<!--               <span class="icon-search2"></span> -->
<%--               <img class="img-fluid" src="${pageContext.request.contextPath }/resources/images/img_6.jpg"> --%>
<!--             </a> -->
<!--           </div> -->

<!--           <div class="item web col-sm-6 col-md-4 col-lg-4 col-xl-3 mb-4"> -->
<!--             <a href="images/img_7.jpg" class="item-wrap fancybox" data-fancybox="gallery2"> -->
<!--               <span class="icon-search2"></span> -->
<%--               <img class="img-fluid" src="${pageContext.request.contextPath }/resources/images/img_7.jpg"> --%>
<!--             </a> -->
<!--           </div> -->

<!--           <div class="item design col-sm-6 col-md-4 col-lg-4 col-xl-3 mb-4"> -->
<!--             <a href="images/img_8.jpg" class="item-wrap fancybox" data-fancybox="gallery2"> -->
<!--               <span class="icon-search2"></span> -->
<%--               <img class="img-fluid" src="${pageContext.request.contextPath }/resources/images/img_8.jpg"> --%>
<!--             </a> -->
<!--           </div> -->

<!--           <div class="item web col-sm-6 col-md-4 col-lg-4 col-xl-3 mb-4"> -->
<!--             <a href="images/img_9.jpg" class="item-wrap fancybox" data-fancybox="gallery2"> -->
<!--               <span class="icon-search2"></span> -->
<%--               <img class="img-fluid" src="${pageContext.request.contextPath }/resources/images/img_9.jpg"> --%>
<!--             </a> -->
<!--           </div> -->

<!--           <div class="item design col-sm-6 col-md-4 col-lg-4 col-xl-3 mb-4"> -->
<!--             <a href="images/img_10.jpg" class="item-wrap fancybox" data-fancybox="gallery2"> -->
<!--               <span class="icon-search2"></span> -->
<%--               <img class="img-fluid" src="${pageContext.request.contextPath }/resources/images/img_10.jpg"> --%>
<!--             </a> -->
<!--           </div> -->

<!--           <div class="item brand col-sm-6 col-md-4 col-lg-4 col-xl-3 mb-4"> -->
<!--             <a href="images/img_11.jpg" class="item-wrap fancybox" data-fancybox="gallery2"> -->
<!--               <span class="icon-search2"></span> -->
<%--               <img class="img-fluid" src="${pageContext.request.contextPath }/resources/images/img_11.jpg"> --%>
<!--             </a> -->
<!--           </div> -->

<!--           <div class="item design col-sm-6 col-md-4 col-lg-4 col-xl-3 mb-4"> -->
<!--             <a href="images/img_12.jpg" class="item-wrap fancybox" data-fancybox="gallery2"> -->
<!--               <span class="icon-search2"></span> -->
<%--               <img class="img-fluid" src="${pageContext.request.contextPath }/resources/images/img_12.jpg"> --%>
<!--             </a> -->
<!--           </div> -->

<!--           <div class="item web col-sm-6 col-md-4 col-lg-4 col-xl-3 mb-4"> -->
<!--             <a href="images/img_13.jpg" class="item-wrap fancybox" data-fancybox="gallery2"> -->
<!--               <span class="icon-search2"></span> -->
<%--               <img class="img-fluid" src="${pageContext.request.contextPath }/resources/images/img_13.jpg"> --%>
<!--             </a> -->
<!--           </div> -->

<!--         </div> -->
<!--       </div> -->

<!--     </section> -->
    
  
<!--     <section class="site-section border-bottom bg-light" id="services-section"> -->
<!--       <div class="container"> -->
<!--         <div class="row mb-5"> -->
<!--           <div class="col-12 text-center" data-aos="fade"> -->
<!--             <h2 class="section-title mb-3">Our Services</h2> -->
<!--           </div> -->
<!--         </div> -->
<!--         <div class="row align-items-stretch"> -->
<!--           <div class="col-md-6 col-lg-4 mb-4 mb-lg-4" data-aos="fade-up"> -->
<!--             <div class="unit-4"> -->
<!--               <div class="unit-4-icon mr-4"><span class="text-primary flaticon-startup"></span></div> -->
<!--               <div> -->
<!--                 <h3>Business Consulting</h3> -->
<!--                 <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi at.</p> -->
<!--                 <p><a href="#">Learn More</a></p> -->
<!--               </div> -->
<!--             </div> -->
<!--           </div> -->
<!--           <div class="col-md-6 col-lg-4 mb-4 mb-lg-4" data-aos="fade-up" data-aos-delay="100"> -->
<!--             <div class="unit-4"> -->
<!--               <div class="unit-4-icon mr-4"><span class="text-primary flaticon-graphic-design"></span></div> -->
<!--               <div> -->
<!--                 <h3>Market Analysis</h3> -->
<!--                 <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi at.</p> -->
<!--                 <p><a href="#">Learn More</a></p> -->
<!--               </div> -->
<!--             </div> -->
<!--           </div> -->
<!--           <div class="col-md-6 col-lg-4 mb-4 mb-lg-4" data-aos="fade-up" data-aos-delay="200"> -->
<!--             <div class="unit-4"> -->
<!--               <div class="unit-4-icon mr-4"><span class="text-primary flaticon-settings"></span></div> -->
<!--               <div> -->
<!--                 <h3>User Monitoring</h3> -->
<!--                 <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi at.</p> -->
<!--                 <p><a href="#">Learn More</a></p> -->
<!--               </div> -->
<!--             </div> -->
<!--           </div> -->


<!--           <div class="col-md-6 col-lg-4 mb-4 mb-lg-4" data-aos="fade-up" data-aos-delay=""> -->
<!--             <div class="unit-4"> -->
<!--               <div class="unit-4-icon mr-4"><span class="text-primary flaticon-idea"></span></div> -->
<!--               <div> -->
<!--                 <h3>Insurance Consulting</h3> -->
<!--                 <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi at.</p> -->
<!--                 <p><a href="#">Learn More</a></p> -->
<!--               </div> -->
<!--             </div> -->
<!--           </div> -->
<!--           <div class="col-md-6 col-lg-4 mb-4 mb-lg-4" data-aos="fade-up" data-aos-delay="100"> -->
<!--             <div class="unit-4"> -->
<!--               <div class="unit-4-icon mr-4"><span class="text-primary flaticon-smartphone"></span></div> -->
<!--               <div> -->
<!--                 <h3>Financial Investment</h3> -->
<!--                 <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi at.</p> -->
<!--                 <p><a href="#">Learn More</a></p> -->
<!--               </div> -->
<!--             </div> -->
<!--           </div> -->
<!--           <div class="col-md-6 col-lg-4 mb-4 mb-lg-4" data-aos="fade-up" data-aos-delay="200"> -->
<!--             <div class="unit-4"> -->
<!--               <div class="unit-4-icon mr-4"><span class="text-primary flaticon-head"></span></div> -->
<!--               <div> -->
<!--                 <h3>Financial Management</h3> -->
<!--                 <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi at.</p> -->
<!--                 <p><a href="#">Learn More</a></p> -->
<!--               </div> -->
<!--             </div> -->
<!--           </div> -->

<!--         </div> -->
<!--       </div> -->
<!--     </section> -->

    

    <section class="site-section bg-light" id="pricing-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-12 text-center" data-aos="fade-up">
            <h2 class="section-title mb-3">가격 정책💸</h2>
            <h5>자료실 용량과 기능을 선택하세요!<br>
            	인사관리, 채용관리, 경영관리, 자료실 기능은 기본 제공됩니다!</h5>
          </div>
        </div>
        <div class="row mb-5">
          <div class="col-md-6 mb-4 mb-lg-0 col-lg-4" data-aos="fade-up" data-aos-delay="">
            <div class="pricing">
              <h4 class="text-center text-black">30인 이하 사업장 추천</h4>
              <div class="price text-center mb-4 ">
                <span><span>2,500</span> (원) / 1인·1개월</span>
              </div>
              <ul class="list-unstyled ul-check success mb-5">
              
                <li>인사관리</li>
                <li>채용관리</li>
                <li>경영관리</li>
                <li>자료실 1G</li>
              </ul>
<!--               <p class="text-center"> -->
<!--                 <a href="#" class="btn btn-secondary">Buy Now</a> -->
<!--               </p> -->
            </div>
          </div>

          <div class="col-md-6 mb-4 mb-lg-0 col-lg-4" data-aos="fade-up" data-aos-delay="100">
            <div class="pricing">
              <h4 class="text-center text-black">30인~100인 사업장 추천</h4>
              <div class="price text-center mb-4 ">
                <span><span>3,500</span> (원) / 1인·1개월</span>
              </div>
              <ul class="list-unstyled ul-check success mb-5">
                
                <li>인사관리</li>
                <li>채용관리</li>
                <li>경영관리</li>
                <li>자료실 5G</li>
              </ul>
<!--               <p class="text-center"> -->
<!--                 <a href="#" class="btn btn-primary">Buy Now</a> -->
<!--               </p> -->
            </div>
          </div>

          <div class="col-md-6 mb-4 mb-lg-0 col-lg-4" data-aos="fade-up" data-aos-delay="200">
            <div class="pricing">
              <h4 class="text-center text-black">100인 이상 사업장 추천</h4>
              <div class="price text-center mb-4 ">
                <span><span>4,500</span> (원) / 1인·1개월</span>
              </div>
              <ul class="list-unstyled ul-check success mb-5">
                
                <li>인사관리</li>
                <li>채용관리</li>
                <li>경영관리</li>
                <li>자료실 10G</li>
              </ul>
<!--               <p class="text-center"> -->
<!--                 <a href="#" class="btn btn-secondary">Buy Now</a> -->
<!--               </p> -->
            </div>
          </div>
        </div>
			<div class="text-center">
<!-- 				<a href="/subscribe" class="btn btn-primary" style="width: 500px;">구독 시작하기</a> -->
				<button type="button" id="subBtn" class="btn btn-primary" style="width: 500px;">구독 시작하기</button>
			</div>
        
        <div class="row site-section" id="faq-section">
          <div class="col-12 text-center" data-aos="fade">
            <h2 class="section-title">자주 묻는 질문📒</h2>
            <h5>자주 묻는 질문들을 확인하세요!</h5>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-6">
	          <div class="mb-5" data-aos="fade-up" data-aos-delay="100">
	           <h3 class="text-black h4 mb-4">💡 <b>회원가입은 어떻게 해야하나요?</b></h3>
	           <p>WSI는 사업자번호로 가입이 가능합니다.<br>
	           	유효한 사업자번호인지 확인해주세요!
	           </p>
	          </div>
	          <div class="mb-5" data-aos="fade-up" data-aos-delay="100">
	           <h3 class="text-black h4 mb-4">💡 <b>유효한 사업자번호란 무엇인가요?</b></h3>
	           <p>국세청에 등록되어 있는 정상적인 사업자번호를 의미합니다.<br>
	           	WSI는 국세청 사업자번호 상태조회 서비스를 이용하고 있습니다.<br>
	           	휴/폐업 처리된 사업자번호로는 가입이 불가능합니다.
	           </p>
	          </div>
	          <div class="mb-5" data-aos="fade-up" data-aos-delay="100">
	           <h3 class="text-black h4 mb-4">💡 <b>카드 결제가 가능한가요?</b></h3>
	           <p>카드결제 가능합니다.<br>
				현재 결제 가능한 카드는 삼성, 신한, 국민, BC, 현대, 롯데카드 등이 가능하며 결제 편의를 위해
				타 카드사 와의 업무 협의를 계속 진행중에 있습니다.</p>
	          </div>
	          
<!-- 	          <div class="mb-5" data-aos="fade-up" data-aos-delay="100"> -->
<!-- 	           <h3 class="text-black h4 mb-4"><b>법인카드도 결제 가능한가요?</b></h3> -->
<!-- 	           <h5>법인카드도 개인카드와 마찬가지로 결제가 가능합니다.</h5> -->
<!-- 	          </div> -->
          </div>
          <div class="col-lg-6">
            <div class="mb-5" data-aos="fade-up" data-aos-delay="100">
	            <h3 class="text-black h4 mb-4">💡 <b>WSI 시스템을 무료로 체험해 볼 수 있나요?</b></h3>
	            <p>네. WSI는 무료체험을 제공합니다.<br>
	            	자세한 사항은 관리자에게 문의해주세요!</p>
            </div>
            <div class="mb-5" data-aos="fade-up" data-aos-delay="100">
	            <h3 class="text-black h4 mb-4">💡 <b>무료 체험에서 제한되는 기능들이 있나요?</b></h3>
	            <p>아닙니다. WSI의 모든 기능을 체험하실 수 있습니다!</p>
            </div>
            <div class="mb-5" data-aos="fade-up" data-aos-delay="100">
	            <h3 class="text-black h4 mb-4">💡 <b>최고관리자와 중간관리자의 차이점은 무엇인가요?</b></h3>
	            <p>WSI의 관리자 권한은 다음과 같습니다.<br>
	            	최고관리자 : 회사 내 모든 회사 설정을 할 수 있습니다.<br>
	            	중간관리자 : 회사 내 모든 데이터를 생성/수정/삭제 할 수 있으며 열람할 수 있습니다.<br>
	            	(최고관리자는 시스템 내의 시스템 설정에서 중간관리자의 권한을 제한하거나 부여할 수 있습니다.)
	            </p>
            </div>
          </div>
        </div>
          	<div align="center">
        	<p><b>원하시는 질문이 없으신가요?</b></p>
            <button type="button" class="btn btn-primary" id="askBtn" style="width: 500px;">문의하기</button>
          	</div>
      </div>
    </section>

<!--     <section class="site-section" id="about-section"> -->
<!--       <div class="container"> -->
<!--         <div class="row mb-5"> -->
          
<!--           <div class="col-lg-5 ml-auto mb-5 order-1 order-lg-2" data-aos="fade" data-aos="fade-up" data-aos-delay=""> -->
<%--             <img src="${pageContext.request.contextPath }/resources/images/about_1.jpg" alt="Image" class="img-fluid rounded"> --%>
<!--           </div> -->
<!--           <div class="col-lg-6 order-2 order-lg-1" data-aos="fade"> -->

<!--             <div class="row"> -->

              
              
<!--               <div class="col-md-12 mb-md-5 mb-0 col-lg-6" data-aos="fade-up" data-aos-delay=""> -->
<!--                 <div class="unit-4"> -->
<!--                   <div class="unit-4-icon mr-4 mb-3"><span class="text-primary flaticon-head"></span></div> -->
<!--                   <div> -->
<!--                     <h3>Web &amp; Mobile Specialties</h3> -->
<!--                     <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis consect.</p> -->
<!--                     <p class="mb-0"><a href="#">Learn More</a></p> -->
<!--                   </div> -->
<!--                 </div> -->
<!--               </div> -->
<!--               <div class="col-md-12 mb-md-5 mb-0 col-lg-6" data-aos="fade-up" data-aos-delay="100"> -->
<!--                 <div class="unit-4"> -->
<!--                   <div class="unit-4-icon mr-4 mb-3"><span class="text-primary flaticon-smartphone"></span></div> -->
<!--                   <div> -->
<!--                     <h3>Intuitive Thinkers</h3> -->
<!--                     <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis.</p> -->
<!--                     <p class="mb-0"><a href="#">Learn More</a></p> -->
<!--                   </div> -->
<!--                 </div> -->
<!--               </div> -->
<!--             </div> -->
<!--           </div> -->
          
<!--         </div> -->
<!--       </div> -->
<!--     </section> -->
  
    
    

<!--     <section class="site-section" id="blog-section"> -->
<!--       <div class="container"> -->
<!--         <div class="row mb-5"> -->
<!--           <div class="col-12 text-center" data-aos="fade"> -->
<!--             <h2 class="section-title mb-3">Our Blog</h2> -->
<!--           </div> -->
<!--         </div> -->

<!--         <div class="row"> -->
<!--           <div class="col-md-6 col-lg-4 mb-4 mb-lg-4" data-aos="fade-up" data-aos-delay=""> -->
<!--             <div class="h-entry"> -->
<!--               <a href="single.html"> -->
<%--                 <img src="${pageContext.request.contextPath }/resources/images/img_1.jpg" alt="Image" class="img-fluid"> --%>
<!--               </a> -->
<!--               <h2 class="font-size-regular"><a href="#">Where Do You Learn HTML & CSS in 2019?</a></h2> -->
<!--               <div class="meta mb-4">Ham Brook <span class="mx-2">&bullet;</span> Jan 18, 2019<span class="mx-2">&bullet;</span> <a href="#">News</a></div> -->
<!--               <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus eligendi nobis ea maiores sapiente veritatis reprehenderit suscipit quaerat rerum voluptatibus a eius.</p> -->
<!--               <p><a href="#">Continue Reading...</a></p> -->
<!--             </div>  -->
<!--           </div> -->
<!--           <div class="col-md-6 col-lg-4 mb-4 mb-lg-4" data-aos="fade-up" data-aos-delay="100"> -->
<!--             <div class="h-entry"> -->
<!--               <a href="single.html"> -->
<%--                 <img src="${pageContext.request.contextPath }/resources/images/img_4.jpg" alt="Image" class="img-fluid"> --%>
<!--               </a> -->
<!--               <h2 class="font-size-regular"><a href="#">Where Do You Learn HTML & CSS in 2019?</a></h2> -->
<!--               <div class="meta mb-4">James Phelps <span class="mx-2">&bullet;</span> Jan 18, 2019<span class="mx-2">&bullet;</span> <a href="#">News</a></div> -->
<!--               <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus eligendi nobis ea maiores sapiente veritatis reprehenderit suscipit quaerat rerum voluptatibus a eius.</p> -->
<!--               <p><a href="#">Continue Reading...</a></p> -->
<!--             </div> -->
<!--           </div> -->
<!--           <div class="col-md-6 col-lg-4 mb-4 mb-lg-4" data-aos="fade-up" data-aos-delay="200"> -->
<!--             <div class="h-entry"> -->
<!--               <a href="single.html"> -->
<%--                 <img src="${pageContext.request.contextPath }/resources/images/img_3.jpg" alt="Image" class="img-fluid"> --%>
<!--               </a> -->
<!--               <h2 class="font-size-regular"><a href="#">Where Do You Learn HTML & CSS in 2019?</a></h2> -->
<!--               <div class="meta mb-4">James Phelps <span class="mx-2">&bullet;</span> Jan 18, 2019<span class="mx-2">&bullet;</span> <a href="#">News</a></div> -->
<!--               <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus eligendi nobis ea maiores sapiente veritatis reprehenderit suscipit quaerat rerum voluptatibus a eius.</p> -->
<!--               <p><a href="#">Continue Reading...</a></p> -->
<!--             </div>  -->
<!--           </div> -->
          
<!--         </div> -->
<!--       </div> -->
<!--     </section> -->

   


    <section class="site-section bg-light" id="contact-section" data-aos="fade">
      <div class="container">
        <div class="row mb-5">
          <div class="col-12 text-center">
            <h2 class="section-title mb-3">Contact Us📞</h2>
          </div>
        </div>
        <div class="row">

          <div class="col-md-4 text-center">
            <p class="mb-4">
              <span class="icon-room d-block h4 text-primary"></span>
              <span>대전광역시 중구 계룡로 846<br>(오류동 175-13)</span>
            </p>
          </div>
          <div class="col-md-4 text-center">
            <p class="mb-4">
              <span class="icon-phone d-block h4 text-primary"></span>
              <a href="#">042 222 8202</a>
            </p>
          </div>
          <div class="col-md-4 text-center">
            <p class="mb-0">
              <span class="icon-mail_outline d-block h4 text-primary"></span>
              <a href="#">support@wsi.team</a>
            </p>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 mb-5">

            <!-- 이미지 지도를 표시할 div 입니다 -->
            <div class="p-5">
				<div id="staticMap" style="text-align: center; width:1000px; height:500px;"></div>
            </div>


<!--             <form action="#" class="p-5 bg-white"> -->
              
<!--               <h2 class="h4 text-black mb-5">Contact Form</h2>  -->

<!--               <div class="row form-group"> -->
<!--                 <div class="col-md-6 mb-3 mb-md-0"> -->
<!--                   <label class="text-black" for="fname">First Name</label> -->
<!--                   <input type="text" id="fname" class="form-control"> -->
<!--                 </div> -->
<!--                 <div class="col-md-6"> -->
<!--                   <label class="text-black" for="lname">Last Name</label> -->
<!--                   <input type="text" id="lname" class="form-control"> -->
<!--                 </div> -->
<!--               </div> -->

<!--               <div class="row form-group"> -->
                
<!--                 <div class="col-md-12"> -->
<!--                   <label class="text-black" for="email">Email</label>  -->
<!--                   <input type="email" id="email" class="form-control"> -->
<!--                 </div> -->
<!--               </div> -->

<!--               <div class="row form-group"> -->
                
<!--                 <div class="col-md-12"> -->
<!--                   <label class="text-black" for="subject">Subject</label>  -->
<!--                   <input type="subject" id="subject" class="form-control"> -->
<!--                 </div> -->
<!--               </div> -->

<!--               <div class="row form-group"> -->
<!--                 <div class="col-md-12"> -->
<!--                   <label class="text-black" for="message">Message</label>  -->
<!--                   <textarea name="message" id="message" cols="30" rows="7" class="form-control" placeholder="Write your notes or questions here..."></textarea> -->
<!--                 </div> -->
<!--               </div> -->

<!--               <div class="row form-group"> -->
<!--                 <div class="col-md-12"> -->
<!--                   <input type="submit" value="Send Message" class="btn btn-primary btn-md text-white"> -->
<!--                 </div> -->
<!--               </div> -->

  
<!--             </form> -->
          </div>
          
        </div>
      </div>
    </section>
    
  </div> <!-- .site-wrap -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>  
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5285950aee70d191b24dc05e899579b6"></script>
<script>
// 이미지 지도에 표시할 마커입니다
var marker = {
    position: new kakao.maps.LatLng(36.32524933233122, 127.4086795722671), 
    text: 'WSI 원시인' // text 옵션을 설정하면 마커 위에 텍스트를 함께 표시할 수 있습니다
};

var staticMapContainer  = document.getElementById('staticMap'), // 이미지 지도를 표시할 div
    staticMapOption = { 
        center: new kakao.maps.LatLng(36.32524933233122, 127.4086795722671), // 이미지 지도의 중심좌표
        level: 3, // 이미지 지도의 확대 레벨
        marker: marker // 이미지 지도에 표시할 마커
    };

// 이미지 지도를 생성합니다
var staticMap = new kakao.maps.StaticMap(staticMapContainer, staticMapOption);
</script>

<script type="text/javascript">
$(function() {
	var askBtn = $("#askBtn");
	var subBtn = $("#subBtn");
	
	askBtn.on("click", function() {
		location.href = "/askboard";
	});
	
	subBtn.on("click", function() {
		location.href = "/subscribeform";
	});
	
});
</script>