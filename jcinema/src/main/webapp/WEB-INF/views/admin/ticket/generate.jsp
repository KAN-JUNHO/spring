<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>JCINEMA::티켓생성</title>
    <link rel="shortcut icon" href="./img/favicon.ico"/>    
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="../css/style.css">    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>    
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script src="../js/sideMenu.js"></script>
    <style>
        /* 티켓관리 > 티켓생성 */

    </style>
</head>
<body>
    <div id="wrapper-admin">
        <header>
            <div class="container">
                <a class="logo" href="../index.html"><img src="../img/admin_logo.png" alt=""></a>
            </div>
        </header>
        <div>
            <div class="container">
                <aside>
                    <ul class="sideMenu">
                        <li>
                            <a href="#"><i class="fa fa-cogs" aria-hidden="true"></i>환경설정</a>
                            <ol>
                                <li><a href="#">기본환경설정</a></li>
                                <li><a href="#">배너관리</a></li>                                
                            </ol>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-users" aria-hidden="true"></i>회원관리</a>
                            <ol>
                                <li><a href="#">회원현황</a></li>
                                <li><a href="#">포인트관리</a></li>
                                <li><a href="#">비회원관리</a></li>
                            </ol>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-film" aria-hidden="true"></i>영화관리</a>
                            <ol>
                                <li><a href="#">영화현황</a></li>
                                <li><a href="./register.html">영화등록</a></li>                                
                            </ol>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-credit-card" aria-hidden="true"></i>결제관리</a>
                            <ol>
                                <li><a href="#">결제현황</a></li>
                                <li><a href="#">예매순위</a></li>
                            </ol>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-ticket" aria-hidden="true"></i>티켓관리</a>
                            <ol>
                                <li><a href="#">티켓현황</a></li>
                                <li><a href="#">티켓생성</a></li>                                
                            </ol>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-building-o" aria-hidden="true"></i>영화관 관리</a>
                            <ol>
                                <li><a href="#">영화관 현황</a></li>
                                <li><a href="#">영화관 등록</a></li>                                
                            </ol>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>게시판관리</a>
                            <ol>
                                <li><a href="#">게시판 현황</a></li>
                                <li><a href="#">게시물 추가</a></li>                                
                            </ol>
                        </li>                        
                    </ul>
                </aside>
                <section id="sub" class="ticket-generate">

                    <nav>
                        <h3>티켓생성</h3>
                        <p>티켓관리 > 티켓생성</p>
                    </nav>
                                        
                    <article>
                        <form action="#">
                            <div class="field">
                                <label for="theater_city">영화관</label>
                                <select name="theater_city" id="theater_city">
                                    <option>지역 선택</option>
                                    <option>서울</option>
                                    <option>경기/인천</option>
                                    <option>충청/대전</option>
                                    <option>전라/광주</option>
                                    <option>경북/대구</option>
                                    <option>경남/부산/울산</option>
                                    <option>강원</option>
                                    <option>제주</option>
                                </select>

                                <select name="theater_name" id="theater_name">
                                    <option>영화관 선택</option>
                                    <option>광복</option>
                                    <option>김해부원</option>
                                    <option>대영</option>
                                    <option>동래</option>
                                    <option>동부산 아울렛</option>
                                    <option>서면(전포동)</option>
                                    <option>센텀시티</option>
                                    <option>오투(부산대)</option>
                                </select>
                            </div>
                            <div class="field">
                                <label for="screen_name">상영관</label>
                                <select name="screen_name" id="screen_name">
                                    <option value="00">상영관 선택</option>
                                    <option value="01">1관</option>
                                    <option value="02">2관</option>
                                    <option value="03">3관</option>
                                    <option value="04">4관</option>
                                    <option value="05">5관</option>
                                </select>

                            </div>                            
                            <div class="field">
                                <label for="movie_date">상영일</label>
                                <input id="movie_date" type="date" name="movie_date" />
                            </div>
                            <div class="field">
                                <label for="round_view">상영회차</label>
                                <select name="round_view" id="round_view">
                                    <option value="0">상영회차 선택</option>
                                    <option value="1">1회차</option>
                                    <option value="2">2회차</option>
                                    <option value="3">3회차</option>
                                    <option value="4">4회차</option>
                                    <option value="5">5회차</option>                                    
                                </select>
                            </div>
                            <div class="field">
                                <label for="movie_no">영화</label>
                                <input type="text" name="movie_title">
                            </div>
                            
                            <div class="field">
                                <label for="price">티켓가격</label>
                                <input id="price" type="text" name="price" />
                                <span>1인 1매 가격 예) 10000, 12000, 18000</span>
                            </div>              
                            
                            <button type="submit" class="btnGenerate">생성하기</button>
                        </form>
                        
                    </article>

                    <p class="ico alert">
                        <strong>Warning!</strong>
                        티켓을 생성 전 먼저 영화상영 일정을 등록해야 합니다.
                    </p>
                    

                </section>
            </div>
        </div>
        <footer>
            <div class="container">
                <p>Copyright ©jcinema.kr. All rights reserved. JCINEMA ADMINISTRATOR Version 5.4.1.2</p>
            </div>
        </footer>
    </div>    
</body>
</html>