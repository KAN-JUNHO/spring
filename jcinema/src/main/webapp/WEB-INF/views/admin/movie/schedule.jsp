<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>JCINEMA::영화상영 일정 등록</title>
    <link rel="shortcut icon" href="./img/favicon.ico"/>    
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="../css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>    
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script src="../js/sideMenu.js"></script>
    <style>
        /* 영화관리 > 영화상영 일정 등록 */        
        #searchBg {
            display: none;
            position: fixed;
            left: 0;
            top: 0;            
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            z-index: 100;
        }

        #searchBg > .content {
            position: absolute;
            left: 50%;
            top: 50%;
            margin-left: -250px;
            margin-top: -250px;
            width: 500px;
            height: 500px;            
            background: #fff url('../img/admin_bg_popup.png') repeat-x;
        }

        #searchBg > .content > h2 {
            margin: 10px;            
            color: #FFFFFF;
            font-size: 15px;            
            font-weight: normal;
        }
        #searchBg > .content > .btnClose {
            position: absolute;
            right: 10px;
            top: 10px;
            height: 16px;
            width: 16px;
            padding: 0;
            background: transparent url('../img/admin_btn_close.png') no-repeat scroll 0 0;
            cursor: pointer;
            font-size: 0;
        }

        #searchBg > .content > div {     
            width: 100%;
            height: 414px;
            padding: 10px;
            box-sizing: border-box;       
        }

        #searchBg > .content .search-table {
            width: 100%;
            height: 100%;
            margin-top: 10px;
            overflow: auto;
        }        

        #searchBg > .content table {
            width: 100%;            
            border-collapse: collapse;
        }
      
        #searchBg > .content table tr:nth-child(2n+1) {
            background: #eceff5;
        }


        #searchBg > .content table tr > th {
            border-color: #959595;
            border-style: solid;
            border-width: 1px;            
            color: #484848;
            letter-spacing: 2px;
            padding: 12px;
            text-align: center;
            text-transform: uppercase;
        }
        #searchBg > .content table tr > td {
            border: 1px solid #959595;
            padding: 6px 6px 6px 12px;
            color: #484848;
        }


        #searchBg > .content .btnSearch {
            border: 1px solid #959595;
            font-size: 12px;
            background: #a8b2c5;
            padding: 9px 15px;
            color: #fff;
            vertical-align: top;
        }

        #searchBg > .content .btnChoice {
            border: 1px solid #959595;
            font-size: 12px;
            background: #a8b2c5;
            padding: 9px 15px;
            color: #fff;
            vertical-align: top;
        }

    </style>
    <script>
        $(function(){

            var btnMovieSearch = $('.btnMovieSearch');
            var btnClose = $('#searchBg .btnClose');
            var searchBg = $('#searchBg');

            btnMovieSearch.click(function(){
                searchBg.show();
            });

            btnClose.click(function(){
                searchBg.hide();
            });

        });
    </script>
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
                                <li><a href="./schedule.html">영화등록</a></li>                                
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
                <section id="sub" class="movie-schedule">

                    <div id="searchBg">

                        <div class="content">
                            <h2>영화검색</h2>
                            <button class="btnClose">닫기</button>
                            
                            <div>
                                <input type="text" name="title">
                                <button class="btnSearch">검색</button>
                                <div class="search-table">
                                    <table>                                    
                                        <tr>
                                            <th>1</th>
                                            <td>겨울왕국2</td>
                                            <td>애니메이션</td>
                                            <td>전체</td>
                                            <td>2019-12-01</td>
                                            <td><button class="btnChoice">선택</button></td>
                                        </tr>
                                        <tr>
                                            <th>2</th>
                                            <td>겨울왕국2</td>
                                            <td>애니메이션</td>
                                            <td>전체</td>
                                            <td>2019-12-01</td>
                                            <td><button class="btnChoice">선택</button></td>
                                        </tr>
                                        <tr>
                                            <th>2</th>
                                            <td>겨울왕국2</td>
                                            <td>애니메이션</td>
                                            <td>전체</td>
                                            <td>2019-12-01</td>
                                            <td><button class="btnChoice">선택</button></td>
                                        </tr>
                                        
                                                                
                                    </table>
                                </div>
                            </div>

                        </div>
                    </div>

                    <nav>
                        <h3>영화상영 일정 등록</h3>
                        <p>영화관리 > 영화상영 일정 등록</p>
                    </nav>
                                        
                    <article>
                        <form action="#">
                            <div class="field">
                                <label for="theater_city">영화관</label>
                                <select name="theater_city" id="theater_city">
                                    <option>지역선택</option>
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
                                <label for="screen_no">상영관</label>
                                <select name="screen_no" id="screen_no">
                                    <option>상영관 선택</option>
                                    <option>1관</option>
                                    <option>2관</option>
                                    <option>IMAX관</option>
                                    <option>4관</option>
                                    <option>5관</option>
                                    <option>6관</option>
                                    <option>7관</option>
                                </select>
                            </div>
                            <div class="field">
                                <label for="schedule_movie_title">상영영화</label>
                                <input id="schedule_movie_title" type="text" name="schedule_movie_title" readonly />
                                <button class="btnMovieSearch">검색</button>
                            </div>
                            <div class="field">
                                <label for="schedule_date">상영일</label>
                                <input id="schedule_date" type="date" name="schedule_date" />
                            </div>
                            <div class="field">
                                <label for="schedule_round_view">상영회차</label>
                                <select name="schedule_round_view" id="schedule_round_view">
                                    <option>상영회차 선택</option>
                                    <option value="1">1회차</option>
                                    <option value="2">2회차</option>
                                    <option value="3">3회차</option>
                                    <option value="4">4회차</option>
                                    <option value="5">5회차</option>
                                    <option value="6">6회차</option>
                                    <option value="7">7회차</option>
                                </select>
                            </div>
                            <div class="field">
                                <label for="schedule_start_time">상영 시작시간</label>
                                <input id="schedule_start_time" type="datetime" name="schedule_start_time" />
                                <span>24시간 형식 입력 예) 10:00, 13:00, 17:00, 23:00, 01:00</span>
                            </div>
                            <div class="field">
                                <label for="schedule_end_time">상영 종료시간</label>
                                <input id="schedule_end_time" type="datetime" name="schedule_end_time" />
                                <span>24시간 형식 입력 예) 10:00, 13:00, 17:00, 23:00, 01:00</span>
                            </div>
                            
                            <button type="submit" class="btnRegister">등록하기</button>
                        </form>
                    </article>

                    <p class="ico info">
                        <strong>Tip!</strong>
                        영화상영 일정을 등록해야 티켓을 생성할 수 있습니다.
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