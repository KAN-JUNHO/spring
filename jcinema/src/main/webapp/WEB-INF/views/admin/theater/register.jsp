<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>JCINEMA::영화관등록</title>
    <link rel="shortcut icon" href="./img/favicon.ico"/>    
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="../css/style.css">    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>    
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script src="../js/sideMenu.js"></script>
    <style>
        /* 영화관 관리 > 영화관등록 */        
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
                <section id="sub" class="theater-register">

                    <nav>
                        <h3>영화관 등록</h3>
                        <p>영화관 관리 > 영화관 등록</p>
                    </nav>
                                        
                    <article>
                        <form action="#">
                            <div class="field">
                                <label for="theater_city">지역</label>
                                <select name="theater_city" id="theater_city">
                                    <option>선택</option>
                                    <option value="02">서울</option>
                                    <option value="03">경기/인천</option>
                                    <option value="04">충청/대전</option>
                                    <option value="05">전라/광주</option>
                                    <option value="06">경북/대구</option>
                                    <option value="07">경남/부산/울산</option>
                                    <option value="08">강원</option>
                                    <option value="09">제주</option>
                                </select>
                            </div>

                            <div class="field">
                                <label for="theater_name">영화관 이름</label>
                                <input type="text" name="theater_name"/>
                                <span>지점명 예) 서면점, 남포점, 오투점</span>
                            </div>
                            <div class="field">
                                <label for="theater_tel">영화관 연락처</label>
                                <input id="theater_tel" type="tel" name="theater_tel" />
                                <span>지역번호 포함 예) 051-512-0012</span>
                            </div>
                            <div class="field">
                                <label for="theater_addr">영화관 주소</label>
                                <input type="text" name="theater_addr">
                                <span>우편번호 생략</span>
                            </div>                            
                            <div class="field">
                                <label for="theater_screen_count">상영관 수</label>
                                <input type="text" name="theater_screen_count">
                                <span>숫자만 기입</span>
                            </div>

                            <button type="submit" class="btnRegister">등록하기</button>
                        </form>
                    </article>

                    

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