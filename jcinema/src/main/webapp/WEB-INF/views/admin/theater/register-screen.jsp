<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>JCINEMA::상영관 등록</title>
    <link rel="shortcut icon" href="./img/favicon.ico"/>    
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="../css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>    
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script src="../js/sideMenu.js"></script>
    <style>
        /* 영화관 관리 > 상영관 등록 */
        
   
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
                                <li><a href="#">티켓등록</a></li>                                
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
                <section id="sub" class="theater-register-screen">

                    <nav>
                        <h3>상영관 등록</h3>
                        <p>영화관 관리 > 상영관 등록</p>
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

                            <div class="field-with-line">
                                <label for="theater_name">1관 이름</label>
                                <input type="text" name="theater_name"/>
                                <span>상영관 이름 예) '1관', 'IMAX관'</span>                                
                            </div>
                            <div class="field">
                                <label for="theater_name">총 좌석수</label>
                                <input type="text" name="theater_name"/>
                                <span>숫자만 기입 예) 80, 100, 120</span>
                            </div>

                            <div class="field-with-line">
                                <label for="theater_name">2관 이름</label>
                                <input type="text" name="theater_name"/>
                                <span>상영관 이름 예) '2관', 'IMAX관'</span>                                
                            </div>
                            <div class="field">
                                <label for="theater_name">총 좌석수</label>
                                <input type="text" name="theater_name"/>
                                <span>숫자만 기입 예) 80, 100, 120</span>
                            </div>

                            <div class="field-with-line">
                                <label for="theater_name">3관 이름</label>
                                <input type="text" name="theater_name"/>
                                <span>상영관 이름 예) '3관', 'IMAX관'</span>                                
                            </div>
                            <div class="field">
                                <label for="theater_name">총 좌석수</label>
                                <input type="text" name="theater_name"/>
                                <span>숫자만 기입 예) 80, 100, 120</span>
                            </div>

                            <div class="field-with-line">
                                <label for="theater_name">4관 이름</label>
                                <input type="text" name="theater_name"/>
                                <span>상영관 이름 예) '4관', 'IMAX관'</span>                                
                            </div>
                            <div class="field">
                                <label for="theater_name">총 좌석수</label>
                                <input type="text" name="theater_name"/>
                                <span>숫자만 기입 예) 80, 100, 120</span>
                            </div>

                            <div class="field-with-line">
                                <label for="theater_name">5관 이름</label>
                                <input type="text" name="theater_name"/>
                                <span>상영관 이름 예) '5관', 'IMAX관'</span>                                
                            </div>
                            <div class="field">
                                <label for="theater_name">총 좌석수</label>
                                <input type="text" name="theater_name"/>
                                <span>숫자만 기입 예) 80, 100, 120</span>
                            </div>

                            <button type="submit" class="btnRegister">등록하기</button>
                        </form>
                    </article>
                    
                    <p class="ico info">
                        <strong>Tip!</strong>
                        영화관을 먼저 등록해야 상영관을 등록 할 수 있습니다.
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