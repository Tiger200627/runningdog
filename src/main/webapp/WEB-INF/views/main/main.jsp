<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
        <c:import url="/WEB-INF/views/include/head.jsp"/>
	</head>
	<body oncontextmenu="return false" onselectstart="return false" ondragstart="return false">
		<div id="wrap">
            <c:import url="/WEB-INF/views/include/header.jsp"/>

            <!-- 비주얼영역 -->
            <!-- Swiper -->
            <div id="main_visual" class="swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide first">
                        <div class="main_visual">
                            <h2>가족이 되어주세요.</h2>
                            <p>매년 수많은 반려동물이 유기되어 가족을 잃은<br/>슬픔을 안고 보호센터에서 살아가고 있어요.</p>
                            <a href="#none" role="button">자세히보기<i class="xi-long-arrow-right"></i></a>
                        </div>
                    </div>
                    <div class="swiper-slide middle">
                        <div class="main_visual">
                            <h2>가족이 되어주세요.</h2>
                            <p>매년 수많은 반려동물이 유기되어 가족을 잃은<br/>슬픔을 안고 보호센터에서 살아가고 있어요.</p>
                            <a href="#none" role="button">자세히보기<i class="xi-long-arrow-right"></i></a>
                        </div>
                    </div>
                    <div class="swiper-slide last">
                        <div class="main_visual">
                            <h2>가족이 되어주세요.</h2>
                            <p>매년 수많은 반려동물이 유기되어 가족을 잃은<br/>슬픔을 안고 보호센터에서 살아가고 있어요.</p>
                            <a href="#none" role="button">자세히보기<i class="xi-long-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
                <!-- Add Pagination -->
                <div class="swiper-pagination"></div>
                <!-- Add Arrows -->
                <div class="swiper-button-next xi-angle-right"></div>
                <div class="swiper-button-prev xi-angle-left"></div>
                <script>
                    var swiper = new Swiper('.swiper-container', {
                        loop: true,
                        autoplay: {
                            delay: 2500,
                            disableOnInteraction: false,
                        },
                        pagination: {
                            el: '.swiper-pagination',
                            type: 'progressbar',
                        },
                        navigation: {
                            nextEl: '.swiper-button-next',
                            prevEl: '.swiper-button-prev',
                        },
                    });
                </script>
            </div>
			<!-- 비주얼영역 끝 -->
            
            <div id="main_content">
                <div class="search_wrap">
                    <form action="" name="">
                    <div class="search-box">
                        <input type="text" placeholder="작은 천사들을 검색해주세요.">
                        <button onclick="#none" class="xi-search"></button>
                    </div>
                </form>
                </div>
                
                <div class="main_animalInfo">
                    <h2><span>'작은 생명'</span>의 소중한 친구가<br/>될 수 있는 <span>'작은 실천'</span></h2>
                    <ul>
                        <li onclick="location='#none'">
                            <div>
                                <a href="#none" class="chooseIcon">분양가능</a>
                                <a href="#none" class="urlIcon xi-share-alt-o"></a>
                                <img src="/runningdog/resources/images/test/animalImg01.jpg">
                            </div>
                            <h3>[강아지] 푸들</h3>
                            <p>
                                나이 : 약 2세<br/>
                                보호센터 : '따뜻한 집'<br/>
                                주소 : 서울시 종로구 종로5. 6가동
                                <span>등록일 : 2020.08.22</span>
                            </p>
                        </li>
                        <li onclick="location='#none'">
                            <div>
                                <a href="#none" class="chooseIcon">분양가능</a>
                                <a href="#none" class="urlIcon xi-share-alt-o"></a>
                                <img src="/runningdog/resources/images/test/animalImg02.jpg">
                            </div>
                            <h3>[강아지] 말티즈</h3>
                            <p>
                                나이 : 약 2세<br/>
                                보호센터 : '따뜻한 집'<br/>
                                주소 : 서울시 종로구 종로5. 6가동
                                <span>등록일 : 2020.08.22</span>
                            </p>
                        </li>
                        <li onclick="location='#none'">
                            <div>
                                <a href="#none" class="chooseIcon">분양가능</a>
                                <a href="#none" class="urlIcon xi-share-alt-o"></a>
                                <img src="/runningdog/resources/images/test/animalImg03.jpg">
                            </div>
                            <h3>[강아지] 말티즈</h3>
                            <p>
                                나이 : 약 2세<br/>
                                보호센터 : '따뜻한 집'<br/>
                                주소 : 서울시 종로구 종로5. 6가동
                                <span>등록일 : 2020.08.22</span>
                            </p>
                        </li>
                        <li onclick="location='#none'">
                            <div>
                                <a href="#none" class="chooseIcon">분양가능</a>
                                <a href="#none" class="urlIcon xi-share-alt-o"></a>
                                <img src="/runningdog/resources/images/test/animalImg04.jpg">
                            </div>
                            <h3>[강아지] 푸들</h3>
                            <p>
                                나이 : 약 2세<br/>
                                보호센터 : '따뜻한 집'<br/>
                                주소 : 서울시 종로구 종로5. 6가동
                                <span>등록일 : 2020.08.22</span>
                            </p>
                        </li>
                    </ul>
                </div>

                <div class="main_banner">
                    <ul>
                        <li>
                            <a href="#none" class="xi-plus-circle-o"></a>
                            <h2>보호센터 정보 <i class="xi-maker-drop"></i></h2>
                            <p>필요한 편의시설의 정보를 한눈에!</p>
                        </li>
                        <li>
                            <a href="#none" class="xi-plus-circle-o"></a>
                            <h2>후원하기 <i class="xi-piggy-bank"></i></h2>
                            <p>작은 천사에게 필요한 용품을 후원할 수 있어요!</p>
                        </li>
                    </ul>
                </div>


                <div class="main_animalNews">
                    <h2><span>'나의 작은 천사'</span>천사와<br/>함께보는 오늘의 이슈!</h2>
                    <ul class="grid">
                        <li class="grid-sizer"></li>
                        <li class="grid-item" onclick="location='#none'">
                            <div>
                                <a href="#none" class="xi-share-alt-o"></a>
                                <img src="/runningdog/resources/images/test/animalNews01.jpg">
                            </div>
                            <dl>
                                <dt><img src="/runningdog/resources/images/test/animalImg02.jpg"></dt>
                                <dd>
                                    <h3>아련한 표정의 고양이, 무엇을 원하니..?</h3>
                                    <p>
                                        작성자 : koreadognews<br/>
                                        조회수 : 102
                                    </p>
                                </dd>
                            </dl>
                        </li>
                        <li class="grid-item" onclick="location='#none'">
                            <div>
                                <a href="#none" class="xi-share-alt-o"></a>
                                <img src="/runningdog/resources/images/test/animalNews02.jpg">
                            </div>
                            <dl>
                                <dt><img src="/runningdog/resources/images/test/animalImg01.jpg"></dt>
                                <dd>
                                    <h3>고양이가 사랑받는 이유 4가지</h3>
                                    <p>
                                        작성자 : koreadognews<br/>
                                        조회수 : 102
                                    </p>
                                </dd>
                            </dl>
                        </li>
                        <li class="grid-item" onclick="location='#none'">
                            <div>
                                <a href="#none" class="xi-share-alt-o"></a>
                                <img src="/runningdog/resources/images/test/animalNews03.jpg">
                            </div>
                            <dl>
                                <dt><img src="/runningdog/resources/images/test/animalImg03.jpg"></dt>
                                <dd>
                                    <h3>반려동물이 먹어야할 필수 영양제 5가지</h3>
                                    <p>
                                        작성자 : koreadognews<br/>
                                        조회수 : 102
                                    </p>
                                </dd>
                            </dl>
                        </li>
                        <li class="grid-item" onclick="location='#none'">
                            <div>
                                <a href="#none" class="xi-share-alt-o"></a>
                                <img src="/runningdog/resources/images/test/animalNews04.jpg">
                            </div>
                            <dl>
                                <dt><img src="/runningdog/resources/images/test/animalImg04.jpg"></dt>
                                <dd>
                                    <h3>나와 함께하는 작은 친구. 멍무이</h3>
                                    <p>
                                        작성자 : koreadognews<br/>
                                        조회수 : 102
                                    </p>
                                </dd>
                            </dl>
                        </li>
                        <li class="grid-item" onclick="location='#none'">
                            <div>
                                <a href="#none" class="xi-share-alt-o"></a>
                                <img src="/runningdog/resources/images/test/animalNews03.jpg">
                            </div>
                            <dl>
                                <dt><img src="/runningdog/resources/images/test/animalImg03.jpg"></dt>
                                <dd>
                                    <h3>반려동물이 먹어야할 필수 영양제 5가지</h3>
                                    <p>
                                        작성자 : koreadognews<br/>
                                        조회수 : 102
                                    </p>
                                </dd>
                            </dl>
                        </li>
                        <li class="grid-item" onclick="location='#none'">
                            <div>
                                <a href="#none" class="xi-share-alt-o"></a>
                                <img src="/runningdog/resources/images/test/animalNews01.jpg">
                            </div>
                            <dl>
                                <dt><img src="/runningdog/resources/images/test/animalImg02.jpg"></dt>
                                <dd>
                                    <h3>아련한 표정의 고양이, 무엇을 원하니..?</h3>
                                    <p>
                                        작성자 : koreadognews<br/>
                                        조회수 : 102
                                    </p>
                                </dd>
                            </dl>
                        </li>
                        <li class="grid-item" onclick="location='#none'">
                            <div>
                                <a href="#none" class="xi-share-alt-o"></a>
                                <img src="/runningdog/resources/images/test/animalNews04.jpg">
                            </div>
                            <dl>
                                <dt><img src="/runningdog/resources/images/test/animalImg04.jpg"></dt>
                                <dd>
                                    <h3>나와 함께하는 작은 친구. 멍무이</h3>
                                    <p>
                                        작성자 : koreadognews<br/>
                                        조회수 : 102
                                    </p>
                                </dd>
                            </dl>
                        </li>
                        <li class="grid-item" onclick="location='#none'">
                            <div>
                                <a href="#none" class="xi-share-alt-o"></a>
                                <img src="/runningdog/resources/images/test/animalNews02.jpg">
                            </div>
                            <dl>
                                <dt><img src="/runningdog/resources/images/test/animalImg01.jpg"></dt>
                                <dd>
                                    <h3>고양이가 사랑받는 이유 4가지</h3>
                                    <p>
                                        작성자 : koreadognews<br/>
                                        조회수 : 102
                                    </p>
                                </dd>
                            </dl>
                        </li>
                    </ul>
                </div>

                <div class="main_banner2">
                    <ul>
                        <li>
                            <a href="#none" class="xi-plus-circle-o"></a>
                            <h2>자원봉사모집 <i class="xi-note-o"></i></h2>
                            <p>
                                함께하는 여러분의 따뜻한<br/>손길이 모여 큰 힘이 됩니다.
                            </p>
                        </li>
                        <li>
                            <a href="#none" class="xi-plus-circle-o"></a>
                            <h2>상식/이슈 <i class="xi-message-o"></i></h2>
                            <p>사랑스러운 반려동물의<br/>유용한 소식을 알려드립니다.</p>
                        </li>
                        <li>
                            <a href="#none" class="xi-plus-circle-o"></a>
                            <h2>공지사항 <i class="xi-bell-o"></i></h2>
                            <p>'지금 달려갈 개'의<br/>공지사항을 꼭 확인해주세요.</p>
                        </li>
                    </ul>
                </div>
            </div>
            <c:import url="/WEB-INF/views/include/footer.jsp"/>
		</div>
	</body>
</html>