<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>JCINEMA::영화등록</title>
    <link rel="shortcut icon" href="./img/favicon.ico"/>    
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="../css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>    
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script src="../js/sideMenu.js"></script>
    <style>
        /* 영화관리 > 영화등록 */
        #sub.movie-register input[name=movie_title] {width: 300px;}
        #sub.movie-register input[name=movie_homepage] {width: 300px;}
        #sub.movie-register input[name=movie_poster] {width: 300px;}
        #sub.movie-register input[name=movie_actor] {width: 300px;}
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
                <section id="sub" class="movie-register">

                    <nav>
                        <h3>영화등록</h3>
                        <p>영화관리 > 영화등록</p>
                    </nav>
                                        
                    <article>
                        <form action="#">
                            <div class="field">
                                <label for="movie_title">영화제목</label>
                                <input id="movie_title" type="text" name="movie_title" />
                            </div>
                            <div class="field">
                                <label for="movie_grade">영화등급</label>
                                <select name="movie_grade" id="movie_grade">
                                    <option value="0">전체관람가</option>
                                    <option value="12">12세 이상 관람가</option>
                                    <option value="15">15세 이상 관람가</option>
                                    <option value="18">청소년 관람불가</option>
                                    <option value="19">미성년자 관람불가</option>
                                </select>
                            </div>
                            <div class="field">
                                <label for="movie_company">제작사</label>
                                <input id="movie_company" type="text" name="movie_company" />
                            </div>
                            <div class="field">
                                <label for="movie_release_date">개봉일</label>
                                <input id="movie_release_date" type="date" name="movie_release_date" />
                            </div>
                            <div class="field">
                                <label for="movie_genre">장르</label>
                                <input id="movie_genre" type="text" name="movie_genre" />
                            </div>
                            <div class="field">
                                <label for="movie_country">제작국</label>
                                <input id="movie_country" type="text" name="movie_country" />
                            </div>
                            <div class="field">
                                <label for="movie_running_time">러닝타임</label>
                                <input id="movie_running_time" type="text" name="movie_running_time" />
                                <span>분 단위로 입력 예) 100, 120, 160, 180</span>
                            </div>
                            <div class="field">
                                <label for="movie_homepage">공식 홈페이지</label>
                                <input id="movie_homepage" type="text" name="movie_homepage" />
                            </div>
                            <div class="field">
                                <label for="movie_poster">영화 공식 포스터</label>
                                <input id="movie_poster" type="file" name="movie_poster" />
                            </div>                        
                            <div class="field">
                                <label for="movie_director">영화감독</label>
                                <input id="movie_director" type="text" name="movie_director" />
                            </div>
                            <div class="field">
                                <label for="movie_actor">영화배우</label>
                                <input id="movie_actor" type="text" name="movie_actor" />
                                <span>쉼표 구분 입력 예) 정우성, 장동건, 이정재, 김태희, 한예슬</span>
                            </div>
                            <div class="field">
                                <label for="movie_desc">영화설명</label>
                                <textarea name="movie_desc" id="movie_desc" cols="100" rows="16"></textarea>
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