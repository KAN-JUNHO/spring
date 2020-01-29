<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>KAN</title>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <link rel="stylesheet" href="./css/layout.css">
    <link rel="stylesheet" href="./css/module.css">
    <link rel="stylesheet" href="./css/reset.css">
    <link rel="stylesheet" href="./css/eggupdate.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>    
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

</head>
<body class style="zoom: 1;">
    <div id="cgvwrap">
        <div class="cgv-ad-wrap" id="cgv_main_ad">
            <div id="TopBarWrapper" class="sect-head-ad">
                <div class="top_extend_ad_wrap">
                    <div class="adreduce" id="adReduce"> 
                        <iframe src="images/AD.jpg" width="100%" height="80" title="영화광고-해치지않아" 
                        frameborder="0" scrolling="no" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" name="TopBanner" id="TopBanner">
                        </iframe>
                    </div>
                    <div class="adextend" id="adExtend"></div>
                </div>

            </div>
        </div>

	<!-- Header -->
	<div id="header">
		<div class="head">
			
            <!--서비스메뉴-->
            <!--앱다운로드 레이어 팝업-->
                <h1 >
                    <a href="/">
                        <img src="/KAN/images/title/h1_cgv.png" alt="KAN">
                    </a>
                </h1>
                <div class="sect-service">
                    <h2>서비스 메뉴</h2>
                    <ul class="util">
                        <li>
                            <a class="app" style="cursor: pointer;" title="CGV앱 4.0설치"></a>
                        </li>
                        <li>
                            <a href="https://www.facebook.com/CJCGV" class="like" target="_blank"
                            title="Facebook 좋아요! 새창">
                                <span>Facebook 좋아요!</span>
                            </a>
                        </li>
                        <li>
                            <a href="https://www.instagram.com/cgv_korea/" class="insta" target="_blank" title="Instagram Fllow">
                                <span>Instagram Follow</span>
                            </a>
                        </li>
                        <li>
                            <a href="/discount/" class="frugal">
                                <span>알뜰한 영화 관람법!</span>
                            </a>
                        </li>
                    </ul>
                    
                    <ul class="gnb">
                        <li>
                            <a href="#" class="login">
                                <span>로그인</span>
                            </a>
                        </li>
                        <li>
                            <a href="/user/join" class="join">
                                <span>회원가입</span>
                            </a>
                        </li>
                        <li>
                            <a href="/user/mycgv/" class="mycgv required-login" data-url="/user/mycgv/">
                                <span>MY CGV</span>
                            </a>
                        </li>
                        <li>
                            <a href="#" title="새창" class="club specialclub">
                                <span>CLUB 서비스</span>
                            </a>
                        </li>
                        <li>
                            <a href="/support/default.aspx" class="customer">
            
                                <span>고객센터</span>
                            </a>
                        </li>

                    </ul>

                </div>
                <div class="im-wrap">
                    <h2>
                        <img src="/KAN/images/title/h2_cultureplex.png" alt="CULTURPLEX">
                    </h2>
                    <!--서브 메뉴-->

                    <!--통합검색-->
                    <div class="lnb">
                        <h2>CGV 주메뉴</h2>
                        <ul id="gnb_list">
                            <li class="movie"><a href="/movies/">영화</a>
                                <div class="sub-wrap">
                                    <i></i>
                                    <div class="smenu">
                                        <ul>
                                            <li><a href="/movies/">무비차트</a></li>
                                            <li><a href="/movies/hd-trailer.aspx">HD 트레일러</a></li>
                                            <li><a href="/movies/finder.aspx">무비파인더</a></li>
                                            <!--
                                            2019-12-03 평점 서비스 삭제 by 안지은
                                            <li><a href="/movies/point/">평점</a></li>
                                            -->
                                            <li class="last"><a href="/arthouse/">CGV아트하우스</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li class="booking"><a href="/ticket/">예매</a>
                                <div class="sub-wrap">
                                    <i></i>
                                    <div class="smenu">
                                        <ul>
                                            <li><a href="/ticket/">빠른예매</a></li>
                                            <li><a href="/reserve/show-times/">상영시간표</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li class="theaters"><a href="/theaters/">극장</a>
                                <div class="sub-wrap">
                                    <i></i>
                                    <div class="smenu">
                                        <ul>
                                            <li><a href="/theaters/">CGV 극장</a></li>
                                            <li><a href="/theaters/special/">특별관</a></li>
                                            <li class="last"><a href="/user/memberShip/ClubService.aspx" class="specialclub">CLUB 서비스</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li class="culture"><a href="/culture-event/event/">이벤트&amp;컬쳐</a>
                                <div class="sub-wrap">
                                    <i></i>
                                    <div class="smenu">
                                        <ul>
                                            <li><a href="/culture-event/event/">이벤트</a></li>
                                            <li><a href="/culture-event/popcorn-store/">기프트샵</a></li>
                                            <li><a href="/magazine/">매거진</a></li>									
                                        </ul>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    
                
                    <!-- Integrated search(통합검색) -->
                    <div class="sect-srh">
                        <h2>통합검색서비스</h2>
                        <fieldset>
                            <legend>통합검색</legend>
                            <input type="text" title="통합검색" id="header_keyword" name="header_keyword" minlength="2" maxlength="20">
                            <input type="hidden" id="header_ad_keyword" name="header_ad_keyword">
                            <button type="button" class="btn-go-search" id="btn_header_search">검색</button>
                            <iframe src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/main@Search_txt" width="0" height="0" title="" frameborder="0" scrolling="no" marginwidth="0" marginheight="0"></iframe>
                        </fieldset>
                    </div>
                </div>
        </div>

        <div class="ctl00_sect_txt_banner" class="sect_txt_banner">
            <div class="inner">
                <a href="/KAN/" target="_blank" style="display:block">
                    <img src="/KAN/images/banner/14890258372960.jpg">
                </a>
            </div>
        </div>
    </div>

    <div id="contaniner" class>
        <div id="ct100_navigation_line" class="linemap-wrap">
            <div class="sect-linemap">
                <div class="sect-bcrumb">
                    <ul>
                        <li>
                            <a href="/">
                                <img alt="home" src="images/common/btn/btn_home.png">
                            </a>
                        </li>                    
                        <li>
                            <a href="/movies/">영화</a>
                        </li>
                    
                        <li>
                            <a href="/movies/">무비차트</a>
                        </li>
                    
                        <li class="last">
                            무비차트
                        </li>
                    </ul>
                </div>
                <div class="sect-special">
                    <ul>
                        <li><a href="/user/vip-lounge/">VIP LOUNGE</a></li>
                        <li><a href="/user/memberShip/ClubService.aspx" title="새창" class="specialclub">Club서비스</a></li>
                        <li><a href="http://phototicket.cgv.co.kr/" title="새창" class="photi" target="_blank">포토티켓</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!--Line Map-->
        <div id="contents" class>
            <div class="wrap-movie-chart">
                <!-- Heading Map Multi -->
                <div class="tit-heading-wrap">
                    <h3>무비차트</h3>
                    <div class="submenu">
                        <ul>
                            <li class="on">
                                <a href="/movies/" title="선택">무비차트</a>
                            </li>
                            <li>
                                <a href="/movies/pre-movies.aspx">상영예정작</a>
                            </li>
                            <li>
                                <a href="/movies/?lt=3">CGV아트하우스</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- //Heading Map Multi -->
                <!-- Sorting -->
                <div class="sect-sorting">
                    <div class="nowshow">
                        <input type="checkbox" id="chk_nowshow" title="현재 선택됨" checked="">
                        <label for="chk_nowshow">현재 상영작만 보기</label>                
                    </div>
                    <label for="order_type" class="hidden">정렬</label>
                    <select id="order_type" name="order-type">
                        <option title="현재 선택됨" selected="" value="1">예매율순</option>
                        <option value="2">평점순</option>
                        <option value="3">관람객순</option>
                    </select>
                    <button type="button" class="round gray">
                        <span>GO</span>
                    </button>
                </div>
                <!--/Sorting-->
                <div class="sect-movie-chart">
                    <h4 class="hidden">무비차트 - 예매율순</h4>
                    <ol>
                        <li>
                            <div class="box-image">
                                <strong class="rank">No.1</strong>	
                                <a href="/movies/detail-view/?midx=82747">
                                    <span class="thumb-image">
                                        <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000082/82747/82747_320.jpg" alt="백두산 포스터" onerror="errorImage(this)">
                                        <span class="ico-grade grade-12">12세 이상</span>
                                    </span>
                                    <strong class="no1">1위</strong>
                                </a>
                                <span class="screentype">
                                    
                                        <a class="forDX" href="#" title="4DX 상세정보 바로가기" data-regioncode="4D14">4DX</a>
                                    
                                </span>
                            </div>
                            <div class="box-contents">
                                <a href="/movies/detail-view/?midx=82747">
                                    <strong class="title">백두산</strong>
                                </a>
        
                                <div class="score">
                                    <strong class="percent">예매율<span>18.1%</span></strong>
                                    <!--[2015-12-10] 에그포인트 적용 범위1~ 3위. start : add_mwpark-->
                                    <div class="egg-gage small">
                                        <span class="egg great"></span>
                                        <span class="percent">89%</span>
                                    </div>
                                    <!--[2015-12-10] 에그포인트 적용 범위 1~ 3위. end : add_mwpark-->
                                    <!-- [2015-12-11] 무비 차트 평점 개편 별점 UI 삭제 start : del_mwpark
                                        <div class="point">
                                            <em>89.0</em>
                                        </div>
                                    [2015-12-11] 무비 차트 평점 개편 별점 UI 삭제 start : del_mwpark-->
                                </div>
        
                                <span class="txt-info">
                                    <strong>
                                        2019.12.19 
                                        <span>개봉</span>
                                        
                                    </strong>
                                </span>
                                <span class="like"> 
                                    <button class="btn-like" value="82747">영화 찜하기</button>
                                    <span class="count"> 
                                        <strong><i>11,150</i><span>명이 선택</span></strong> 
                                        <i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i>
                                    </span>
                                    <a class="link-reservation" href="/ticket/?MOVIE_CD=20021747&amp;MOVIE_CD_GROUP=20021747">예매</a>
                                </span>
                            </div>
                        </li>
                        <li>
                            <div class="box-image">
                                <strong class="rank">No.2</strong>	
                                <a href="/movies/detail-view/?midx=82738">
                                    <span class="thumb-image">
                                        <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000082/82738/82738_320.jpg" alt="천문- 하늘에 묻는다 포스터" onerror="errorImage(this)">
                                        <span class="ico-grade grade-12">12세 이상</span>
                                    </span>
                                    
                                </a>
                                <span class="screentype">
                                    
                                </span>
                            </div>
                            <div class="box-contents">
                                <a href="/movies/detail-view/?midx=82738">
                                    <strong class="title">천문- 하늘에 묻는다</strong>
                                </a>
        
                                <div class="score">
                                    <strong class="percent">예매율<span>11.6%</span></strong>
                                    <!--[2015-12-10] 에그포인트 적용 범위1~ 3위. start : add_mwpark-->
                                    <div class="egg-gage small">
                                        <span class="egg great"></span>
                                        <span class="percent">94%</span>
                                    </div>
                                    <!--[2015-12-10] 에그포인트 적용 범위 1~ 3위. end : add_mwpark-->
                                    <!-- [2015-12-11] 무비 차트 평점 개편 별점 UI 삭제 start : del_mwpark
                                        <div class="point">
                                            <em>94.0</em>
                                        </div>
                                    [2015-12-11] 무비 차트 평점 개편 별점 UI 삭제 start : del_mwpark-->
                                </div>
        
                                <span class="txt-info">
                                    <strong>
                                        2019.12.26 
                                        <span>개봉</span>
                                        
                                    </strong>
                                </span>
                                <span class="like"> 
                                    <button class="btn-like" value="82738">영화 찜하기</button>
                                    <span class="count"> 
                                        <strong><i>6,225</i><span>명이 선택</span></strong> 
                                        <i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i>
                                    </span>
                                    <a class="link-reservation" href="/ticket/?MOVIE_CD=20022170&amp;MOVIE_CD_GROUP=20021709">예매</a>
                                </span>
                            </div>    
                        </li>
                        <li>
                            <div class="box-image">
                                <strong class="rank">No.3</strong>	
                                <a href="/movies/detail-view/?midx=82737">
                                    <span class="thumb-image">
                                        <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000082/82737/82737_320.jpg" alt="시동 포스터" onerror="errorImage(this)">
                                        <span class="ico-grade grade-15">15세 이상</span>
                                    </span>
                                    
                                </a>
                                <span class="screentype">
                                    
                                </span>
                            </div>
                            <div class="box-contents">
                                <a href="/movies/detail-view/?midx=82737">
                                    <strong class="title">시동</strong>
                                </a>
        
                                <div class="score">
                                    <strong class="percent">예매율<span>7.5%</span></strong>
                                    <!--[2015-12-10] 에그포인트 적용 범위1~ 3위. start : add_mwpark-->
                                    <div class="egg-gage small">
                                        <span class="egg great"></span>
                                        <span class="percent">92%</span>
                                    </div>
                                    <!--[2015-12-10] 에그포인트 적용 범위 1~ 3위. end : add_mwpark-->
                                    <!-- [2015-12-11] 무비 차트 평점 개편 별점 UI 삭제 start : del_mwpark
                                        <div class="point">
                                            <em>92.0</em>
                                        </div>
                                    [2015-12-11] 무비 차트 평점 개편 별점 UI 삭제 start : del_mwpark-->
                                </div>
        
                                <span class="txt-info">
                                    <strong>
                                        2019.12.18 
                                        <span>개봉</span>
                                        
                                    </strong>
                                </span>
                                <span class="like"> 
                                    <button class="btn-like" value="82737">영화 찜하기</button>
                                    <span class="count"> 
                                        <strong><i>9,138</i><span>명이 선택</span></strong> 
                                        <i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i>
                                    </span>
                                    <a class="link-reservation" href="/ticket/?MOVIE_CD=20021708&amp;MOVIE_CD_GROUP=20021708">예매</a>
                                </span>
                            </div>    
                        </li>
                    </ol>
                    <ol>
            
                        <li>
                            <div class="box-image">
                                <strong class="rank">No.4</strong>	
                                <a href="/movies/detail-view/?midx=82014">
                                    <span class="thumb-image">
                                        <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000082/82014/82014_320.jpg" alt="겨울왕국 2 포스터" onerror="errorImage(this)">
                                        <span class="ico-grade grade-all">전체</span>
                                    </span>
                                </a>
                                <span class="screentype">
                                    
                                        <a class="forDX" href="#" data-regioncode="4D14">4DX</a>
                                    
                                        <a class="threeD" href="#" data-regioncode="3D" style="cursor: default;">3D</a>
                                    
                                </span>
                            </div>
                            
                            <div class="box-contents">
                                <a href="/movies/detail-view/?midx=82014">
                                    <strong class="title">겨울왕국 2</strong>
                                </a>
        
                                <div class="score">
                                    <strong class="percent">예매율<span>7.0%</span></strong>
                                     <!--[2015-12-10] 에그포인트 적용 범위4~ 7위. start : add_mwpark-->
                                    <div class="egg-gage small">
                                        <span class="egg great"></span>
                                        <span class="percent">95%</span>
                                    </div>
                                    <!--[2015-12-10] 에그포인트 적용 범위 4~ 7위. end : add_mwpark-->
                                    <!-- [2015-12-11] 무비 차트 평점 개편 별점 UI 삭제 start : del_mwpark
                                        <div class="point">
                                            <em>95.0</em>
                                        </div>
                                    [2015-12-11] 무비 차트 평점 개편 별점 UI 삭제 start : del_mwpark-->
                                </div>
        
                                <span class="txt-info">
                                    <strong>
                                        2019.11.21 
                                        <span>개봉</span>
                                        
                                    </strong>
                                </span>
                                <span class="like"> 
                                    <button class="btn-like" value="82014">영화 찜하기</button>
                                    <span class="count"> 
                                        <strong><i>32,661</i><span>명이 선택</span></strong> 
                                        <i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i>
                                    </span> 
        
                                    <a class="link-reservation" href="/ticket/?MOVIE_CD=20020041&amp;MOVIE_CD_GROUP=20020041">예매</a>
                                    
                                </span>
                            </div>    
                        </li>
                    
                        <li>
                            <div class="box-image">
                                <strong class="rank">No.5</strong>	
                                <a href="/movies/detail-view/?midx=81914">
                                    <span class="thumb-image">
                                        <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000081/81914/81914_320.jpg" alt="포드 V 페라리 포스터" onerror="errorImage(this)">
                                        <span class="ico-grade grade-12">12세 이상</span>
                                    </span>
                                </a>
                                <span class="screentype">
                                    
                                        <a class="forDX" href="#" data-regioncode="4D14">4DX</a>
                                    
                                        <a class="screenx" href="#" data-regioncode="SCX">SCREENX</a>
                                    
                                </span>
                            </div>
                            
                            <div class="box-contents">
                                <a href="/movies/detail-view/?midx=81914">
                                    <strong class="title">포드 V 페라리</strong>
                                </a>
        
                                <div class="score">
                                    <strong class="percent">예매율<span>5.2%</span></strong>
                                     <!--[2015-12-10] 에그포인트 적용 범위4~ 7위. start : add_mwpark-->
                                    <div class="egg-gage small">
                                        <span class="egg great"></span>
                                        <span class="percent">99%</span>
                                    </div>
                                    <!--[2015-12-10] 에그포인트 적용 범위 4~ 7위. end : add_mwpark-->
                                    <!-- [2015-12-11] 무비 차트 평점 개편 별점 UI 삭제 start : del_mwpark
                                        <div class="point">
                                            <em>99.0</em>
                                        </div>
                                    [2015-12-11] 무비 차트 평점 개편 별점 UI 삭제 start : del_mwpark-->
                                </div>
        
                                <span class="txt-info">
                                    <strong>
                                        2019.12.04 
                                        <span>개봉</span>
                                        
                                    </strong>
                                </span>
                                <span class="like"> 
                                    <button class="btn-like" value="81914">영화 찜하기</button>
                                    <span class="count"> 
                                        <strong><i>9,195</i><span>명이 선택</span></strong> 
                                        <i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i>
                                    </span> 
        
                                    <a class="link-reservation" href="/ticket/?MOVIE_CD=20022086&amp;MOVIE_CD_GROUP=20019814">예매</a>
                                    
                                </span>
                            </div>    
                        </li>
                    
                        <li>
                            <div class="box-image">
                                <strong class="rank">No.6</strong>	
                                <a href="/movies/detail-view/?midx=82495">
                                    <span class="thumb-image">
                                        <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000082/82495/82495_320.jpg" alt="신비아파트 극장판 하늘도깨비 대 요르문간드 포스터" onerror="errorImage(this)">
                                        <span class="ico-grade grade-all">전체</span>
                                    </span>
                                </a>
                                <span class="screentype">
                                    
                                        <a class="forDX" href="#" data-regioncode="4D14">4DX</a>
                                    
                                </span>
                            </div>
                            
                            <div class="box-contents">
                                <a href="/movies/detail-view/?midx=82495">
                                    <strong class="title">신비아파트 극장판 하늘도깨비 대 요르문간드</strong>
                                </a>
        
                                <div class="score">
                                    <strong class="percent">예매율<span>4.0%</span></strong>
                                     <!--[2015-12-10] 에그포인트 적용 범위4~ 7위. start : add_mwpark-->
                                    <div class="egg-gage small">
                                        <span class="egg great"></span>
                                        <span class="percent">96%</span>
                                    </div>
                                    <!--[2015-12-10] 에그포인트 적용 범위 4~ 7위. end : add_mwpark-->
                                    <!-- [2015-12-11] 무비 차트 평점 개편 별점 UI 삭제 start : del_mwpark
                                        <div class="point">
                                            <em>96.0</em>
                                        </div>
                                    [2015-12-11] 무비 차트 평점 개편 별점 UI 삭제 start : del_mwpark-->
                                </div>
        
                                <span class="txt-info">
                                    <strong>
                                        2019.12.19 
                                        <span>개봉</span>
                                        
                                    </strong>
                                </span>
                                <span class="like"> 
                                    <button class="btn-like" value="82495">영화 찜하기</button>
                                    <span class="count"> 
                                        <strong><i>1,976</i><span>명이 선택</span></strong> 
                                        <i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i>
                                    </span> 
        
                                    <a class="link-reservation" href="/ticket/?MOVIE_CD=20021195&amp;MOVIE_CD_GROUP=20021195">예매</a>
                                    
                                </span>
                            </div>    
                        </li>
                    
                        <li>
                            <div class="box-image">
                                <strong class="rank">No.7</strong>	
                                <a href="/movies/detail-view/?midx=82493">
                                    <span class="thumb-image">
                                        <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000082/82493/82493_320.jpg" alt="나이브스 아웃 포스터" onerror="errorImage(this)">
                                        <span class="ico-grade grade-12">12세 이상</span>
                                    </span>
                                </a>
                                <span class="screentype">
                                    
                                </span>
                            </div>
                            
                            <div class="box-contents">
                                <a href="/movies/detail-view/?midx=82493">
                                    <strong class="title">나이브스 아웃</strong>
                                </a>
        
                                <div class="score">
                                    <strong class="percent">예매율<span>3.0%</span></strong>
                                     <!--[2015-12-10] 에그포인트 적용 범위4~ 7위. start : add_mwpark-->
                                    <div class="egg-gage small">
                                        <span class="egg great"></span>
                                        <span class="percent">98%</span>
                                    </div>
                                    <!--[2015-12-10] 에그포인트 적용 범위 4~ 7위. end : add_mwpark-->
                                    <!-- [2015-12-11] 무비 차트 평점 개편 별점 UI 삭제 start : del_mwpark
                                        <div class="point">
                                            <em>98.0</em>
                                        </div>
                                    [2015-12-11] 무비 차트 평점 개편 별점 UI 삭제 start : del_mwpark-->
                                </div>
        
                                <span class="txt-info">
                                    <strong>
                                        2019.12.04 
                                        <span>개봉</span>
                                        
                                    </strong>
                                </span>
                                <span class="like"> 
                                    <button class="btn-like" value="82493">영화 찜하기</button>
                                    <span class="count"> 
                                        <strong><i>9,697</i><span>명이 선택</span></strong> 
                                        <i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i>
                                    </span> 
        
                                    <a class="link-reservation" href="/ticket/?MOVIE_CD=20021188&amp;MOVIE_CD_GROUP=20021188">예매</a>
                                    
                                </span>
                            </div>    
                        </li>
                    
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="com_pop_wrap">
		<div class="com_pop_fog"></div>
    </div>
    <!--footer-->
    <div id="footer">
        <div id="BottomWrapper" class="sect-ad">
            <iframe src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/main@Bottom" width="100%" height="240" title="광고-CGV 기프트 카드" frameborder="0" scrolling="no" marginwidth="0" marginheight="0" name="Bottom" id="Bottom"></iframe>
        </div>
        <div class="foot">
            <div class="sect-smuse">
                <h2>특별관 리스트</h2>
                <ul>
                    <li><a href="" class="dx">4DX</a></li>
                    <li><a href="" class="imax">IMAX</a></li>
                    <li><a href="" class="screenx">SCREENX</a></li>
                    <li><a href="" class="spherex">SphereX</a></li>
                    <li><a href="" class="tempur">Tempur</a></li>
                    <li><a href="" class="gold">GOLDCLASS</a></li>
                    <li><a href="" class="cine">CINE de CHEF</a></li>
                    <li><a href="" class="cinema">THE PRIVATE CINEMA</a></li>
                    <li><a href="" class="kids">Cine kids</a></li>
                    <li><a href="" class="cinenforet">CINE&FORET</a></li>
                </ul>
            </div>
            <div class="sect-cinfo">
                <p class="logo">CJ CGV 로고</p>
                <h2>CJ CGV 회사소개 및 정책</h2>
                <div class="policy">
                    <ul>
                        <li><a href="" target="_blank">회사소개</a></li>
                        <li><a href="" target="_blank">IR</a></li>
                        <li><a href="" target="_blank">채용정보</a></li>
                        <li><a href="" target="_blank">광고/프로모션문의</a></li>
                        <li><a href="" target="_blank">제휴문의</a></li>
                        <li><a href="" target="_blank">출점문의</a></li>
                        <li><a href="">편성기준</a></li>
                        <li><a href="" class="empha-red">개인정보처리방침</a></li>
                        <li><a href="">법적고지</a></li>
                        <li><a href="">이메일주소무단수집거부</a></li>
                        <li><a href="">상생경영</a></li>
                        <li><a href="">사이트맵</a></li>
                    </ul>
                </div>
                <div class="share">
                    <a href="https://www.facebook.com/CJCGV" target="_blank" class="facebook" title="새창">페이스북</a>
                    <a href="https://twitter.com/cj_cgv" target="_blank" class="twitter" title="새창">트위터</a>
                    <a href="https://www.instagram.com/cgv_korea/" target="_blank" class="instagram" title="새창">인스타그램</a>
                </div>
                <div class="address">
                    <address>(04377)서울특별시 용산구 한강대로 23길 55, 아이파크몰 6층(한강로동)</address>
                    <p class="vl">
                        <span>대표이사 : 최병환</span>
                        <span>사업자등록번호 : 104-81-45690</span>
                        <span>통신판매업신고번호 : 2017-서울용산-0662</span>
                        <a href="javascript:void(0);" onclick="goFtc()" class="btn_goFtc">
                            <img src="http://img.cgv.co.kr/r2014/images/common/btn_reg.png" alt="사업자정보확인">
                        </a>
                        <a></a>
                    </p>
                    <a>
                    <p class="vl">
                        <span>호스팅사업자 : CJ올리브네트웍스</span>
                        <span>개인정보보호 책임자 : 정종민</span>
                        <span>대표이메일 : cjcgvmaster@cj.net</span>
                        <span>CGV고객센터 : 1544-1122</span>
                    </p>
                    <p class="copyright">© CJ CGV. All Rights Reserved</p>
                </a>
                </div>
                <!--
                <a>
                    <div class="familysite">
                        <label for="familysite" class="hidden">CJ그룹 계열사 바로가기</label>
                        <select id="familysite">
                            <option value="">계열사 바로가기</option>
                              <optgroup label="CJ그룹">
                                <option value="http://www.cj.net/">CJ주식회사</option>
                                </optgroup><optgroup label="엔터테인먼트 &amp; 미디어">
                                <option value="http://www.cjenm.com/">CJ ENM (E&amp;M)</option>
                                <option value="http://www.cgv.co.kr/">CJ CGV</option>
                                <option value="http://www.cjhello.com/">CJ Hello</option>
                                <option value="http://www.cjpowercast.com/">CJ파워캐스트</option>
                                </optgroup><optgroup label="식품 &amp; 식품서비스">
                                <option value="https://www.cj.co.kr/kr/index">CJ제일제당 (식품)</option>
                                <option value="http://www.cjfreshway.com/">CJ프레시웨이</option>
                                <option value="http://www.cjfoodville.co.kr/">CJ푸드빌</option>
                                <option value="http://www.md1.co.kr/">CJ엠디원</option>
                                </optgroup><optgroup label="생명공학">
                                <option value="https://www.cj.co.kr/kr/index">CJ제일제당 (바이오)</option>
                                </optgroup><optgroup label="신유통">
                                <option value="http://display.cjmall.com">CJ ENM (오쇼핑)</option>
                                <option value="http://www.cjlogistics.com">CJ대한통운</option>
                                <option value="http://www.cjtelenix.com/">CJ텔레닉스</option>
                                <option value="http://www.oliveyoung.co.kr/store/main/main.do">CJ올리브영</option>
                                </optgroup><optgroup label="인프라">
                                <option value="http://www.cjenc.co.kr/">CJ대한통운 (건설)</option>
                                <option value="http://www.cjolivenetworks.co.kr/itbusiness/">CJ올리브네트웍스</option>
                                </optgroup>                 
                        </select>
                        <button type="button" title="새창" onclick="goFamilySite()">GO</button>
                    </div>
                </a>
                -->
            </div>
            <a></a>
        </div>

    </div id="footer">
    <!-- aside -->
</div>
    
</body>
</html>