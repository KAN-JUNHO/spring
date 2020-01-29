<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>제이시네마::좌석선택</title>
    <link rel="shortcut icon" href="/jcinema/img/favicon.ico"/>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="../css/style.css">    
    <link rel="stylesheet" href="../css/sub.css">        

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>    
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>    
    <script src="../js/topBannerBg.js"></script>
    <script src="../js/ticketCalendar.js"></script>
</head>
<body>
    <div id="wrapper">
        <div id="top-banner">
            <canvas id="canvas"></canvas>
            <div>
                <a href="#" class="image"><img id="topBannerImg" src="/jcinema/img/top_banner_poster1.jpg" alt=""></a>
                <a href="#" class="close"><img src="/jcinema/img/banner-close.png" alt=""></a>
            </div>
        </div>

        <header>
            <div class="service">
                <article>
                    <p>
                        <a href="#">모바일 APP</a>
                        <a href="#">좋아요</a>
                        <a href="#">구독하기</a>
                    </p>
                    <p>
                        <a href="#">로그인</a>
                        <a href="#">회원가입</a>
                        <a href="#">멤버십</a>
                        <a href="#">고객센터</a>
                    </p>
                </article>
            </div>
            <div class="logo">
                <article>
                    <a href="/jcinema"><img src="/jcinema/img/logo.gif" alt=""></a>
                </article>                
            </div>
            <div class="gnb">
                <article>
                    <ul>
                        <li class="on"><a href="#">예매</a></li>
                        <li><a href="#">영화</a></li>
                        <li><a href="#">영화관</a></li>
                        <li><a href="#">이벤트</a></li>
                        <li><a href="#">제이몰</a></li>
                        <li><a href="#">VOD</a></li>
                    </ul>

                </article>
            </div>
        </header>
        
        <div id="sub" class="choice-seat">
            <nav class="sub-menu"></nav>
            <section>
                <div class="seat-setting">
                    <h1>인원/좌석선택</h1>
                    <div>
                        <div>
                            <span>성인</span>
                            <select class="adult">
                                <option>0</option>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                            </select>
                            <span>청소년</span>
                            <select class="teenager">
                                <option>0</option>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                            </select>
                            <span>시니어</span>
                            <select class="senior">
                                <option>0</option>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                            </select>
                            <span>장애인</span>
                            <select class="disPerson">
                                <option>0</option>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                            </select>
                        </div>
                        <div>
                            <span>좌석 붙임 설정</span>
                            <img src="../img/ico_exclamation.gif" alt="!" title="좌석 붙임 설정 기능 이건 도저히 못하겠다.">
                            <em>·&nbsp;인원은 최대 5명까지 선택 가능합니다.</em>
                        </div>
                    </div>
                </div>    
            </section>
            <section>
                <div class="seat-area">
                    <div class="screen"><em>Screen</em></div>

                    <article>
                        <ul>
                            <li>
                                <span class="tit">A</span>
                                <a href="#" class="seat" data-seat="A1" title="좌석 A1">1</a>
                                <a href="#" class="seat" data-seat="A1" title="좌석 A1">2</a>
                                <a href="#" class="seat" data-seat="A1" title="좌석 A1">3</a>
                                <a href="#" class="seat" data-seat="A1" title="좌석 A1">4</a>
                                <a href="#" class="seat" data-seat="A1" title="좌석 A1">5</a>
                                <a href="#" class="seat" data-seat="A1" title="좌석 A1">6</a>
                                <a href="#" class="seat" data-seat="A1" title="좌석 A1">7</a>
                                <a href="#" class="seat" data-seat="A1" title="좌석 A1">8</a>
                                <a href="#" class="seat" data-seat="A1" title="좌석 A1">9</a>
                                <a href="#" class="seat" data-seat="A1" title="좌석 A1">10</a>
                                <a href="#" class="seat" data-seat="A1" title="좌석 A1">11</a>
                                <a href="#" class="seat" data-seat="A1" title="좌석 A1">12</a>
                                <a href="#" class="seat" data-seat="A1" title="좌석 A1">13</a>                                
                            </li>
                            <li>
                                <span class="tit">B</span>
                                <a href="#" class="seat" data-seat="B1" title="좌석 B1">1</a>
                                <a href="#" class="seat" data-seat="B2" title="좌석 B2">2</a>
                                <a href="#" class="seat" data-seat="B3" title="좌석 B3">3</a>
                                <a href="#" class="seat" data-seat="B4" title="좌석 B4">4</a>
                                <a href="#" class="seat" data-seat="B5" title="좌석 B5">5</a>
                                <a href="#" class="seat" data-seat="B6" title="좌석 B6">6</a>
                                <a href="#" class="seat" data-seat="B7" title="좌석 B7">7</a>
                                <a href="#" class="seat" data-seat="B8" title="좌석 B8">8</a>
                                <a href="#" class="seat" data-seat="B9" title="좌석 B9">9</a>
                                <a href="#" class="seat" data-seat="B10" title="좌석 B10">10</a>
                                <a href="#" class="seat" data-seat="B11" title="좌석 B11">11</a>
                                <a href="#" class="seat" data-seat="B12" title="좌석 B12">12</a>
                                <a href="#" class="seat" data-seat="B13" title="좌석 B13">13</a>                                
                            </li>
                            <li>
                                <span class="tit">C</span>
                                <a href="#" class="seat" data-seat="B1" title="좌석 B1">1</a>
                                <a href="#" class="seat" data-seat="B2" title="좌석 B2">2</a>
                                <a href="#" class="seat" data-seat="B3" title="좌석 B3">3</a>
                                <a href="#" class="seat" data-seat="B4" title="좌석 B4">4</a>
                                <a href="#" class="seat" data-seat="B5" title="좌석 B5">5</a>
                                <a href="#" class="seat" data-seat="B6" title="좌석 B6">6</a>
                                <a href="#" class="seat" data-seat="B7" title="좌석 B7">7</a>
                                <a href="#" class="seat" data-seat="B8" title="좌석 B8">8</a>
                                <a href="#" class="seat" data-seat="B9" title="좌석 B9">9</a>
                                <a href="#" class="seat" data-seat="B10" title="좌석 B10">10</a>
                                <a href="#" class="seat" data-seat="B11" title="좌석 B11">11</a>
                                <a href="#" class="seat" data-seat="B12" title="좌석 B12">12</a>
                                <a href="#" class="seat" data-seat="B13" title="좌석 B13">13</a>                                
                            </li>
                            <li>
                                <span class="tit">D</span>
                                <a href="#" class="seat" data-seat="B1" title="좌석 B1">1</a>
                                <a href="#" class="seat" data-seat="B2" title="좌석 B2">2</a>
                                <a href="#" class="seat" data-seat="B3" title="좌석 B3">3</a>
                                <a href="#" class="seat" data-seat="B4" title="좌석 B4">4</a>
                                <a href="#" class="seat" data-seat="B5" title="좌석 B5">5</a>
                                <a href="#" class="seat" data-seat="B6" title="좌석 B6">6</a>
                                <a href="#" class="seat" data-seat="B7" title="좌석 B7">7</a>
                                <a href="#" class="seat" data-seat="B8" title="좌석 B8">8</a>
                                <a href="#" class="seat" data-seat="B9" title="좌석 B9">9</a>
                                <a href="#" class="seat" data-seat="B10" title="좌석 B10">10</a>
                                <a href="#" class="seat" data-seat="B11" title="좌석 B11">11</a>
                                <a href="#" class="seat" data-seat="B12" title="좌석 B12">12</a>
                                <a href="#" class="seat" data-seat="B13" title="좌석 B13">13</a>                                
                            </li>
                            <li>
                                <span class="tit">E</span>
                                <a href="#" class="seat" data-seat="B1" title="좌석 B1">1</a>
                                <a href="#" class="seat" data-seat="B2" title="좌석 B2">2</a>
                                <a href="#" class="seat" data-seat="B3" title="좌석 B3">3</a>
                                <a href="#" class="seat" data-seat="B4" title="좌석 B4">4</a>
                                <a href="#" class="seat" data-seat="B5" title="좌석 B5">5</a>
                                <a href="#" class="seat" data-seat="B6" title="좌석 B6">6</a>
                                <a href="#" class="seat" data-seat="B7" title="좌석 B7">7</a>
                                <a href="#" class="seat" data-seat="B8" title="좌석 B8">8</a>
                                <a href="#" class="seat" data-seat="B9" title="좌석 B9">9</a>
                                <a href="#" class="seat" data-seat="B10" title="좌석 B10">10</a>
                                <a href="#" class="seat" data-seat="B11" title="좌석 B11">11</a>
                                <a href="#" class="seat" data-seat="B12" title="좌석 B12">12</a>
                                <a href="#" class="seat" data-seat="B13" title="좌석 B13">13</a>                                
                            </li>
                            <li>
                                <span class="tit">F</span>
                                <a href="#" class="seat" data-seat="B1" title="좌석 B1">1</a>
                                <a href="#" class="seat" data-seat="B2" title="좌석 B2">2</a>
                                <a href="#" class="seat" data-seat="B3" title="좌석 B3">3</a>
                                <a href="#" class="seat" data-seat="B4" title="좌석 B4">4</a>
                                <a href="#" class="seat" data-seat="B5" title="좌석 B5">5</a>
                                <a href="#" class="seat" data-seat="B6" title="좌석 B6">6</a>
                                <a href="#" class="seat" data-seat="B7" title="좌석 B7">7</a>
                                <a href="#" class="seat" data-seat="B8" title="좌석 B8">8</a>
                                <a href="#" class="seat" data-seat="B9" title="좌석 B9">9</a>
                                <a href="#" class="seat" data-seat="B10" title="좌석 B10">10</a>
                                <a href="#" class="seat" data-seat="B11" title="좌석 B11">11</a>
                                <a href="#" class="seat" data-seat="B12" title="좌석 B12">12</a>
                                <a href="#" class="seat" data-seat="B13" title="좌석 B13">13</a>                                
                            </li>
                            <li>
                                <span class="tit">G</span>
                                <a href="#" class="seat" data-seat="B1" title="좌석 B1">1</a>
                                <a href="#" class="seat" data-seat="B2" title="좌석 B2">2</a>
                                <a href="#" class="seat" data-seat="B3" title="좌석 B3">3</a>
                                <a href="#" class="seat" data-seat="B4" title="좌석 B4">4</a>
                                <a href="#" class="seat" data-seat="B5" title="좌석 B5">5</a>
                                <a href="#" class="seat" data-seat="B6" title="좌석 B6">6</a>
                                <a href="#" class="seat" data-seat="B7" title="좌석 B7">7</a>
                                <a href="#" class="seat" data-seat="B8" title="좌석 B8">8</a>
                                <a href="#" class="seat" data-seat="B9" title="좌석 B9">9</a>
                                <a href="#" class="seat" data-seat="B10" title="좌석 B10">10</a>
                                <a href="#" class="seat" data-seat="B11" title="좌석 B11">11</a>
                                <a href="#" class="seat" data-seat="B12" title="좌석 B12">12</a>
                                <a href="#" class="seat" data-seat="B13" title="좌석 B13">13</a>                                
                            </li>
                            <li>
                                <span class="tit">H</span>
                                <a href="#" class="seat" data-seat="B1" title="좌석 B1">1</a>
                                <a href="#" class="seat" data-seat="B2" title="좌석 B2">2</a>
                                <a href="#" class="seat" data-seat="B3" title="좌석 B3">3</a>
                                <a href="#" class="seat" data-seat="B4" title="좌석 B4">4</a>
                                <a href="#" class="seat" data-seat="B5" title="좌석 B5">5</a>
                                <a href="#" class="seat" data-seat="B6" title="좌석 B6">6</a>
                                <a href="#" class="seat" data-seat="B7" title="좌석 B7">7</a>
                                <a href="#" class="seat" data-seat="B8" title="좌석 B8">8</a>
                                <a href="#" class="seat" data-seat="B9" title="좌석 B9">9</a>
                                <a href="#" class="seat" data-seat="B10" title="좌석 B10">10</a>
                                <a href="#" class="seat" data-seat="B11" title="좌석 B11">11</a>
                                <a href="#" class="seat" data-seat="B12" title="좌석 B12">12</a>
                                <a href="#" class="seat" data-seat="B13" title="좌석 B13">13</a>                                
                            </li>
                        </ul>
                    </article>
                    <p>
                        · 선택한 좌석을 다시 클릭하면 취소됩니다.<br>
                        · SWEET SPOT은 최적의 화면과 사운드를 즐길 수 있는 좌석입니다.<br>
                        (스크린 가운데에서 상영관 뒤 벽까지 직선 거리의 2/3 지점)
                    </p>

                    <ol>
                        <li><i class="bg_seat_exit"></i>출입문</li>
                        <li><i class="bg_seat_selected"></i>선택좌석</li>
                        <li><i class="bg_seat_available"></i>선택가능</li>
                        <li><i class="bg_seat_reserved"></i>예매완료</li>
                        <li><i class="bg_seat_not"></i>선택불가</li>
                    </ol>

                </div>                
            </section>
            <section>
                <div class="seat-info">
                    <ol>
                        <li><i class="bg_seat_sweet"></i>SWEET SPOT</li>
                        <li><i class="bg_seat_couple"></i>CINE COUPLE</li>
                        <li><i class="bg_seat_family"></i>CINE FAMILY</li>
                        <li><i class="bg_seat_comfort"></i>CINE COMFORT(리클라이너)</li>
                        <li><i class="bg_set_disable"></i>장애인석</li>
                        <li><i class="bg_set_foot"></i>발받침</li>
                    </ol>
                </div>
            </section>
            <section>
                <div class="back-and-pay">
                    <a href="#">영화선택</a>
                    <a href="#">일반결제</a>
                </div>
            </section>
            <section>
                <div class="total-info">
                    <div>
                        <span>영화</span>
                        <article>
                            <img class="poster" src="../img/total_info_poster.jpg" alt="">
                            <p class="movie-info">
                                <strong>겨울왕국2</strong>
                                <b>2D</b>
                                <em>전체관람가</em>
                            </p>
                        </article>
                        
                    </div>
                    <div>
                        <span>예매정보</span>
                        <table>
                            <tr>
                                <td>상영일</td>
                                <td>2019-12-02(월)</td>
                            </tr>
                            <tr>
                                <td>상영시간</td>
                                <td>17:00 ~ 18:53</td>
                            </tr>
                            <tr>
                                <td>상영관</td>
                                <td>오투(부산대)</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>4관</td>
                            </tr>
                            <tr>
                                <td>좌석</td>
                                <td>C5, C6</td>
                            </tr>
                        </table>
                        <h2>28,000<span>원</span></h2>
                    </div>
                    <div>
                        <span>총 결제 금액</span>
                        <table>
                            <tr>
                                <td>영화예매</td>
                                <td class="right">￦28,000</td>
                            </tr>
                        </table>                        
                        <h2>28,000<span>원</span></h2>
                    </div>
                </div>
            </section>
        </div>
                
        <footer>
            <div class="banner1">
                <a href="#"><img src="../img/showtime_banner_img1.jpg" alt=""></a>
            </div>
            <div class="banner2" style="background-color: rgb(54, 54, 64);">
                <a href="#"><img src="/jcinema/img/footer_banner_event.jpg" alt=""></a>
            </div>
            <div class="content">
                <article>
                    <img class="logo" src="/jcinema/img/footer_logo.gif" alt="로고">
                    <p>
                        <a href="#">회원약관 |</a>
                        <a href="#">개인정보처리방침 |</a>
                        <a href="#">이메일무단수집거부 |</a>
                        <a href="#">영상정보처리기기 운영∙관리방침 |</a>
                        <a href="#">J.POINT회원안내 |</a>
                        <a href="#">배정기준 |</a>
                        <a href="#">채용안내 |</a>
                        <a href="#">광고/임대문의 |</a>
                        <a href="#">기업정보 |</a>
                        <a href="#">윤리경영</a><br>
                        부산광역시 부산진구 신천대로 300 월드타워 27층 | 고객센터 1544-1234<br>
                        대표이사 홍길동 | 사업자등록번호 123-12-12345 | 통신판매업신고번호 제1234호 | 개인정보 보호책임자 김춘추<br>
                        COPYRIGHT© JCINEMA ALL RIGHT RESERVED.
                    </p>
                </article>
            </div>
            <div class="award">
                <article>
                    <img src="/jcinema/img/footer_award1.jpg" alt=""/>
                    <img src="/jcinema/img/footer_award2.gif" alt=""/>
                    <img src="/jcinema/img/footer_award3.gif" alt=""/>
                    <img src="/jcinema/img/footer_award4.gif" alt=""/>
                    <img src="/jcinema/img/footer_award5.gif" alt=""/>
                    <img src="/jcinema/img/footer_award6.gif" alt=""/>
                    <img src="/jcinema/img/footer_award7.gif" alt=""/>
                    <img src="/jcinema/img/footer_award8.gif" alt=""/>
                </article>
            </div>
        </footer>
    </div>    
</body>
</html>