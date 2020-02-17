<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="shortcut icon" href="./images/favicon.ico">
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <link rel="shortcut icon" type="image/x-icon" href="http://img.cgv.co.kr/R2014/images/favicon.ico">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>    
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <link rel="stylesheet" href="/kan/css/module.css">
    <link rel="stylesheet" href="/kan/css/reset.css">
    <link rel="stylesheet" href="/kan/css/eggupdate.css">
    <link rel="stylesheet" href="/kan/css/layout.css">
    <link rel="stylesheet" href="/kan/css/content.css">
    <link rel="stylesheet" href="/kan/css/common.css">
    <link rel="stylesheet" href="/kan/css/print.css">

	<script async="" src="//www.googletagmanager.com/gtm.js?id=GTM-NNNFR3"></script>
	<script async="" src="//www.google-analytics.com/analytics.js"></script>

</head>
<body class style="zoom: 1;">
    <div id="cgvwrap">
        <div class="cgv-ad-wrap" id="cgv_main_ad">
            <div id="TopBarWrapper" class="sect-head-ad">
                <div class="top_extend_ad_wrap">
                    <div class="adreduce" id="adReduce"> 
                        <iframe src="/images/AD.jpg" width="100%" height="80" title="영화광고-해치지않아" frameborder="0" scrolling="no" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" name="TopBanner" id="TopBanner">
                        </iframe>
                    </div>
                    <div class="adextend" id="adExtend"></div>
                </div>

            </div>
        </div>

	<div id="header">
		<div class="head">
			
            <!-- 서비스 메뉴 --> 
            

<!-- 앱다운로드 레이어 팝업 -->
<script type="text/javascript">
    $(function () {
        $('.btn_send').on('click', function () {

            var smsyn = $('input:radio[name="myapp"]:checked').val();
            var phoneNum_1 = $('#phoneNum1').val();
            var phoneNum_2 = $('#phoneNum2').val();
            var phoneNum_3 = $('#phoneNum3').val();


            var $btn = $('.util .app');
            var $btnli = $btn.parent();
            var $layer = $btnli.find('.app-downinfo');
            var $closebtn = $layer.find('.btn_close');

            if ($("input:radio[name='myapp']:checked").val() == undefined) {

                alert('앱을 선택해주세요.');
                return;
            }

            if ($('#phoneNum1').val() == '') {

                alert('첫번째 휴대폰번호를 입력해주세요.');
                return $('#phoneNum1').focus();
            }

            if ($('#phoneNum2').val() == '') {
                alert('두번째 휴대폰번호를 입력해주세요.');
                return $('#phoneNum2').focus();
            }

            if ($('#phoneNum3').val() == '') {
                alert('세번째 휴대폰번호를 입력해주세요.');
                return $('#phoneNum3').focus();
            }

            $.ajax({
                type: "POST",
                url: '/common/ajax/user.aspx/GetSMSMaster',
                data: "{'sms_yn':'" + smsyn + "' , 'phoneNum1':'" + app.crypto.AESEncryptToBase64(phoneNum_1) + "',  'phoneNum2':'" + app.crypto.AESEncryptToBase64(phoneNum_2) + "', 'phoneNum3':'" + app.crypto.AESEncryptToBase64(phoneNum_3) + "'  }",
                contentType: "application/json; charset=utf-8",
                dataType: 'json',
                success: function (result) {
                    switch (result.d.toString()) {
                        case "0":
                            // 등록되지 않음
                            alert('전송에 실패하였습니다. 잠시후 다시 시도해주시길 바랍니다.');
                            break;
                        case "1":

                            //alert('성공');
                            alert('고객님의 핸드폰 번호 ' + phoneNum_1 + '-' + phoneNum_2 + '-' + phoneNum_3 + '로 전송완료 하였습니다.');
                            $('#phoneNum1').val('')
                            $('#phoneNum2').val('')
                            $('#phoneNum3').val('')
                            $layer.removeClass('on');
                            $(this).blur();

                            // 등록완료
                            break;
                        case "2":
                            // 등록되지 않음
                            alert('1일 3회까지만 발송 가능합니다.');
                            break;
                        default:
                            //   alert('Error result Value : ' + result);
                            break;
                    }
                }
            });
        });  // SMS
    });
    

    function numberOnly() {
        if (event.keyCode != 8 && event.keyCode != 9) {
            if ((event.keyCode < 48) || (event.keyCode > 57)
				&& (event.keyCode < 96 || event.keyCode > 105)) {
                event.returnValue = false;
            }
        }
    }

    $("#phoneNum1").keyup(function (event) {
        if (!(event.keyCode >= 37 && event.keyCode <= 40)) {
            var inputVal = $(this).val();
            $(this).val(inputVal.replace(/[^0-9]/gi, ''));
        }
    });

    $("#phoneNum2").keyup(function (event) {
        if (!(event.keyCode >= 37 && event.keyCode <= 40)) {
            var inputVal = $(this).val();
            $(this).val(inputVal.replace(/[^0-9]/gi, ''));
        }
    });

    $("#phoneNum3").keyup(function (event) {
        if (!(event.keyCode >= 37 && event.keyCode <= 40)) {
            var inputVal = $(this).val();
            $(this).val(inputVal.replace(/[^0-9]/gi, ''));
        }
    });

    function appDownInfoPop() {

        var $btn = $('.util .app');
        var $btnli = $btn.parent();
        var $layer = $btnli.find('.app-downinfo');
        var $closebtn = $layer.find('.btn_close');

        var isCheck = function () {
            if (!$layer.hasClass('hover') && !$btnli.find('*').is(':focus')) {
                $layer.removeClass('on');
            }
        }

        $btn.on('focusin', inHandler);
        $btnli.on('mouseenter focusin', mouseenterHandler).on('mouseleave focusout', mouseleaveHandler);
        $layer.on('mouseenter', function () {
            $layer.addClass('hover');
        }).on('mouseleave', function () {
            $layer.removeClass('hover');
        })

        function inHandler(e) {
            $layer.addClass('on');

            return false;
        }
        function mouseenterHandler(e) {
            $layer.addClass('on');

            /******************************************
            GA Tag 상단 appdownload 마우스 오버시 전송
            *******************************************/
            ga('send', { hitType: 'pageview', location: 'http://www.cgv.co.kr/appdownload', title: '앱다운로드 레이어팝업' });
            ga('cgvTracker.send', { hitType: 'pageview', location: 'http://www.cgv.co.kr/appdownload', title: '앱다운로드 레이어팝업' });
            ga('rollup.send', { hitType: 'pageview', location: 'http://www.cgv.co.kr/appdownload', title: '앱다운로드 레이어팝업' });

            return false;
        }
        function mouseleaveHandler(e) {
            setTimeout(isCheck, 100);
            return false;
        }

        $closebtn.on('click', function () {
            $layer.removeClass('on');
            $(this).blur();
            return false;
        })
    }
</script>



            <h1><a href="/"><img src="http://img.cgv.co.kr/R2014/images/title/h1_cgv.png" alt="CGV"></a></h1>

            <div class="sect-service">
				<h2>서비스 메뉴</h2>
                <ul class="util">
					<li>
                        <!-- 2019.09 수정 -->
                        <a href="#" class="app" style="cursor:pointer" title="CGV앱 4.0 설치 새창"><span>CGV앱 4.0 설치</span></a>
						<!-- 앱 다운로드 레이어 팝업 2019.09 SMS 전송,하단 영역 제거 -->
						<div class="app-downinfo v2">
							<div class="inner">
								<div class="tit-box">
									<strong><em>CGV</em>앱에서<br>더 편리하게 이용하세요.</strong>
								</div>
								<div class="choice-way">
									<div class="qr">
										<div class="qr-codeimg">
											<img src="http://img.cgv.co.kr/R2014//images/common/img_qrcode.gif" alt="QR CODE">
										</div>
                                        <div class="qr-desc">
                                            <p>QR코드를 스캔하고<br>앱 설치 페이지로 바로 이동하세요 </p>
                                        </div>
									</div>
								</div>
								<a class="btn_close" href="#">팝업 닫기</a>
							</div>
						</div>
                        <!-- 2019.09 수정 -->
                    </li>
					<li><a href="https://www.facebook.com/CJCGV" class="like" target="_blank" title="Facebook 좋아요! 새창"><span>Facebook 좋아요!</span></a></li>
				    <li><a href="https://www.instagram.com/cgv_korea/" class="insta" target="_blank" title="Instagram Follow"><span>Instagram Follow</span></a></li>
                	<li><a href="/discount/" class="frugal"><span>알뜰한 영화관람법!</span></a></li> <!-- 할인카드 -->
				</ul>
                <ul class="gnb">
                
                    <li><a href="/user/login/?returnURL=http%3a%2f%2fwww.cgv.co.kr%2fdefault.aspx" class="login"><span>로그인</span></a></li>
					<li><a href="/user/join/" class="join"><span>회원가입</span></a></li>
                    
                

					<li><a href="/user/mycgv/" class="mycgv required-login" data-url="/user/mycgv/"><span>MY CGV</span></a></li>
					<li><a href="/user/vip-lounge/" class="vip"><span>VIP LOUNGE</span></a></li>
					<li><a href="/user/memberShip/ClubService.aspx" title="새창" class="club specialclub"><span>CLUB 서비스</span></a></li>
					<!-- 2014.12.8 리뉴얼-->
					<li><a href="/support/default.aspx" class="customer"><span>고객센터</span></a></li>
				    <!-- 2014.12.8 리뉴얼-->
					<li><a href="/ticket/eng/newdefault.aspx" class="showtimes"><span>ENGLISH TICKETING</span></a></li>
				</ul>
           </div>
            <!-- 서비스 메뉴 -->
            
            <div class="im-wrap"> <!-- Important wrap -->
				<h2><img src="http://img.cgv.co.kr/R2014/images/title/h2_cultureplex.png" alt="CULTUREPLEX"></h2>

				<!-- 서브 메뉴 -->
				

<script type="text/javascript">
    //상단 키워드 광고 (S)
    function AdSearchExt(txt, SearchText) {
        $('#header_keyword').attr('placeholder', txt);
        $('#header_ad_keyword').val(SearchText);
    }

    function hdIcoSet(left, sh) { }
    //상단 키워드 광고 (E)


    //특별관 클럽 팝업
    function openSpecialClub() {
        
        var win = window.open('http://www.cgv.co.kr/event/develop/1503_CLUB_Info.aspx', 'winSpecialClub', 'left=0,top=0,width=580,height=700,toolbar=no,scrollbars=yes');
        win.focus();
    }

    //동성로타운
//    function openDownTown() {
//        var win = window.open('http://section.cgv.co.kr/event/dongsungroTown/serviceInfo.aspx', 'winDownTown', 'left=0,top=0,width=670,height=800,toolbar=no,scrollbars=yes');
//        win.focus();
//    }

    //노원타운
    function openNowonTown() {
        var win = window.open('http://section.cgv.co.kr/event/NowonTown/serviceInfo.aspx', 'winNowonTown', 'left=0,top=0,width=700,height=800,toolbar=no,scrollbars=yes');
        win.focus();
    }


    //상단광고닫기
    function hideCgvTopAd() {
        $(".cgv-ad-wrap").hide();
        $('#wrap_main_notice').parent('div').css('top', 280);
    }

    //비즈스프링 클릭로그
    function setClickLog(title) {
        // eval("try{trk_clickTrace('EVT', '" + title + "')}catch(_e){}");
    }
   
    //]]>
</script>

<!-- 통합검색 -->
<script type="text/javascript">
    (function ($) {
        $(function () {

            //검색 입력창 클릭 시 광고값 reset
            $('#header_keyword').on('click', function () {
                $(this).attr('placeholder', '');
                $('#header_ad_keyword').val('');
            });

            //통합검색 상단 검색 버튼
            $('#btn_header_search').on('click', function () {
                if ($('#header_ad_keyword').val() != "")
                    goSearch($('#header_ad_keyword'));      //광고
                else
                    goSearch($('#header_keyword'));

                return false;
            });

            //통합검색 검색어 입력창
            $('#header_keyword').keyup(function (e) {
                if (e.keyCode == 13) goSearch($('#header_keyword'));
            });

            //통합검색
            function goSearch($objKeyword) {

                if ($objKeyword.val() == "") {
                    alert("검색어를 입력해 주세요");
                    $objKeyword.focus();
                    return false;
                }

                location = "/search/?query=" + escape($objKeyword.val());
            }
        });
    })(jQuery);
</script>
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
				<!-- /Local Navigation Bar -->

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
				<!-- /Integrated search(통합검색) -->

                <!-- Quick Phototicket -->
				<div class="sect-phototicket">
					<h2>CGV 포토티켓</h2>
					<a href="http://phototicket.cgv.co.kr/" target="_blank">CGV 포토티켓</a>
				</div>
				<!-- /Quick Phototicket -->

                <!-- Advertisement -->
                
				<div class="ad-partner">
                    <a href="http://section.cgv.co.kr/discount/Special/discount/EventDetail.aspx?Idx=11972&amp;pb=Y">
                        <img src="http://img.cgv.co.kr/WingBanner/2019/1104/15728438201650.png" alt="현대오일뱅크">
                    </a>					
				</div>
                
				<!-- /Advertisement -->
                <!-- 서브 메뉴 -->
				
			</div>
		</div>
        <!-- txt banner -->
        
        <!-- /text banner -->
	</div>
    <div id="contaniner" class>
        <!-- LineMap-->
        <div id="navigation_line" class="linemap-wrap">
            <div class="sect-bcrumb">
                <ul>
                    <li><a href="/"><img alt="home" src="http://img.cgv.co.kr/R2014/images/common/btn/btn_home.png"></a></li>
                    <li><a href="/ticket/">예매</a></li>
                    <li class="last">빠른예매</li>
                </ul>
            </div>            
            <div class="sect-special">
                <ul> 
                    <li><a href="/user/vip-lounge/">VIP LOUNGE</a></li>
                    <li><a href="/user/memberShip/ClubService.aspx" class="specialclub" title="새창">CLUB 서비스</a></li>
                    <li><a href="#" class="photi" title="새창">포토티켓</a></li>
                </ul>
            </div>
        </div>
    </div>
    <iframe title="CGV 빠른예매" id="ticket_iframe" src="Reservation/Reservation.html?MOVIE_CD=&amp;MOVIE_CD_GROUP=&amp;PLAY_YMD=&amp;THEATER_CD=&amp;PLAY_NUM=&amp;PLAY_START_TM=&amp;AREA_CD=&amp;SCREEN_CD=&amp;THIRD_ITEM=" scrolling="no" frameborder="0" width="100%" height="998" style="width:100%; border:0 none;">
            
        <body style="zoom: 1;">
        <a name="t"></a>
        <div id="wrap" oncontextmenu="return false" ondragstart="return false" onselectstart="return false">
            <!-- 컨텐츠 -->
            <div id="container">
                <!-- 빠른예매 -->
                <div id="ticket" class="ticket ko">
                    
                    <!-- 타이틀 -->
                    <div class="navi">
                        <div class="newsletter">
                            <p style="display: none;"><a href="#">Click here</a> if you want to receive newsletter about English subtitle movies</p>
                        </div>
                        <span class="right">
                        
                            <a class="button button-english" href="#" onmousedown="javascript:logClick('옵션/ENGLISH');" onclick="switchLanguage(); return false;"><span>ENGLISH</span></a>
                            <a class="button button-guide" href="#" onmousedown="javascript:logClick('옵션/예매가이드');" onclick="ticketPopupShow('popup_guide'); return false;"><span>예매가이드 - 레이어로 서비스 되기 때문에 가상커서를 해지(Ctrl+Shift+F12)한 후 사용합니다.</span></a>
                            <a class="button button-discount" href="#" onmousedown="javascript:logClick('옵션/제휴할인혜택');" onclick="ticketNewWindow('http://section.cgv.co.kr/discount/Special/discount/Default.aspx');return false;" title="새창열기"><span>제휴할인혜택</span></a>
                            <a class="button button-schedule" href="#" onmousedown="javascript:logClick('옵션/상영시간표');" onclick="openSchedulePopup();return false;" title="새창열기"><span>상영시간표</span></a>
                            <a class="button button-reservation-restart" href="#" onmousedown="javascript:logClick('옵션/예매다시하기');" onclick="ticketRestart(); return false;"><span>예매 다시하기</span></a>
                        
                        </span>
                        
                    </div>
                    <!-- //타이틀 -->
                    <!-- 메인컨텐츠 -->
                    <div class="steps">
                        <!-- step1 -->
                        <div class="step step1" style="height: 595px; display: block;">
                            <!-- MOVIE 섹션 -->
                            <div class="section section-movie">
                                <!-- col-head -->
                                <div class="col-head" id="skip_movie_list">
                                    <h3 class="sreader">영화</h3>
                                    <a href="#" class="skip_to_something" onclick="skipToSomething('skip_theater_list');return false;">영화선택 건너뛰기</a>
                                </div>
                                <!-- col-body -->
                                <div class="col-body" style="height: 560px;">
                                    <!-- 영화선택 -->
                                    <div class="movie-select">
                                        <div class="tabmenu">
                                            <span class="side on"></span>
                                            <a href="#" class="button menu1 selected">전체</a>
                                            <span class="side on"></span>
                                            <a href="#" class="button menu2">아트하우스<span class="arrow"></span></a>
                                            <div class="tabmenu-selectbox MOVIECOLLAGE" style="display:none;">
                                                <ul>
                                                    <li><a href="#" onclick="return false;">전체</a></li>
                                                    <li><a href="#" onclick="return false;">최신작</a></li>
                                                <li com_cd="01"><a href="#" onclick="return false;">큐레이터</a></li><li com_cd="03"><a href="#" onclick="return false;">시네마톡</a></li><li com_cd="05"><a href="#" onclick="return false;">라이브톡</a></li><li com_cd="85"><a href="#" onclick="return false;">라이브러리톡</a></li><li com_cd="99"><a href="#" onclick="return false;">라이브톡,현장</a></li><li com_cd="GW"><a href="#" onclick="return false;">화요 명화展</a></li><li com_cd="M1"><a href="#" onclick="return false;">더스페셜패키지</a></li><li com_cd="NQ"><a href="#" onclick="return false;">아트하우스 Choice</a></li><li com_cd="NT"><a href="#" onclick="return false;">뮤지컬 기획전</a></li><li com_cd="NU"><a href="#" onclick="return false;">연말특가</a></li><li com_cd="NV"><a href="#" onclick="return false;">큐레이터,아트하우스Choice</a></li><li com_cd="OA"><a href="#" onclick="return false;">SPHEREX 오픈특가</a></li><li com_cd="OC"><a href="#" onclick="return false;">아듀, 2019 아티스트</a></li><li com_cd="OD"><a href="#" onclick="return false;">아트하우스 겨울명작전</a></li><li com_cd="OG"><a href="#" onclick="return false;">프랑수아 오종 기획전</a></li><li com_cd="OH"><a href="#" onclick="return false;">신년특가</a></li><li com_cd="OI"><a href="#" onclick="return false;">시네마 푸드위크</a></li><li com_cd="R1"><a href="#" onclick="return false;">아트하우스클래스</a></li></ul>
                                            </div>
                                            <span class="side"></span>
                                            <a href="#" onclick="return false;" class="button menu3">특별관<span class="arrow"></span></a>
                                            <div class="tabmenu-selectbox SPECIALTHEATER" style="display:none;">
                                                <ul>
                                                    <li><a href="#" onclick="return false;">전체</a></li>
                                                    <li><a href="#" onclick="return false;">4DX</a></li>
                                                    <li><a href="#" onclick="return false;">IMAX</a></li>
                                                    <li><a href="#" onclick="return false;">STARIUM</a></li>
                                                    <li><a href="#" onclick="return false;">CINE DE CHEF</a></li>
                                                    <li><a href="#" onclick="return false;">GOLD CLASS</a></li>
                                                    <li><a href="#" onclick="return false;">Brand관</a></li>
                                                    <li><a href="#" onclick="return false;">Premium관</a></li>
                                                    <li><a href="#" onclick="return false;">CINE KIDS</a></li>
                                                <li><a href="#" onclick="return false;">SphereX</a></li><li><a href="#" onclick="return false;">TEMPUR CINEMA</a></li><li><a href="#" onclick="return false;">ScreenX</a></li></ul>
                                            </div>
                                            <span class="side"></span>
                                        </div>
                                        <div class="sortmenu">
                                            <a href="#" onclick="sortMovieByRank();return false;" id="movieSortRankBtn" class="button btn-rank selected">예매율순</a>
                                            <a href="#" onclick="sortMovieByName();return false;" id="movieSortNameBtn" class="button btn-abc">가나다순</a>
                                            
                                        </div>
                                        <div class="movie-list nano has-scrollbar has-scrollbar-y" id="movie_list">
                                            <ul class="content scroll-y" onscroll="movieSectionScrollEvent();" tabindex="-1" style="right: -21px;"><li class="rating-all" data-index="0" movie_cd_group="20021302" movie_idx="82531"><a href="#" onclick="return false;" title="닥터두리틀" alt="닥터두리틀"><span class="icon">&nbsp;</span><span class="text">닥터두리틀</span><span class="sreader"></span></a></li><li class="rating-12" data-index="1" movie_cd_group="20021318" movie_idx="82537"><a href="#" onclick="return false;" title="스타워즈-라이즈오브스카이워커" alt="스타워즈-라이즈오브스카이워커"><span class="icon">&nbsp;</span><span class="text">스타워즈-라이즈오브스카이워커</span><span class="sreader"></span></a></li><li class="rating-12" data-index="2" movie_cd_group="20021747" movie_idx="82747"><a href="#" onclick="return false;" title="백두산" alt="백두산"><span class="icon">&nbsp;</span><span class="text">백두산</span><span class="sreader"></span></a></li><li class="rating-15" data-index="3" movie_cd_group="20022001" movie_idx="82940"><a href="#" onclick="return false;" title="미드웨이" alt="미드웨이"><span class="icon">&nbsp;</span><span class="text">미드웨이</span><span class="sreader"></span></a></li><li class="rating-12" data-index="4" movie_cd_group="20022179" movie_idx="82985"><a href="#" onclick="return false;" title="해치지않아" alt="해치지않아"><span class="icon">&nbsp;</span><span class="text">해치지않아</span><span class="sreader"></span></a></li><li class="rating-12" data-index="5" movie_cd_group="20021709" movie_idx="82738"><a href="#" onclick="return false;" title="천문-하늘에묻는다" alt="천문-하늘에묻는다"><span class="icon">&nbsp;</span><span class="text">천문-하늘에묻는다</span><span class="sreader"></span></a></li><li class="rating-all" data-index="6" movie_cd_group="20018162" movie_idx="81478"><a href="#" onclick="return false;" title="알라딘" alt="알라딘"><span class="icon">&nbsp;</span><span class="text">알라딘</span><span class="sreader"></span></a></li><li class="rating-15" data-index="7" movie_cd_group="20021708" movie_idx="82737"><a href="#" onclick="return false;" title="시동" alt="시동"><span class="icon">&nbsp;</span><span class="text">시동</span><span class="sreader"></span></a></li><li class="rating-15" data-index="8" movie_cd_group="20022198" movie_idx="82999"><a href="#" onclick="return false;" title="남산의부장들" alt="남산의부장들"><span class="icon">&nbsp;</span><span class="text">남산의부장들</span><span class="sreader"></span></a></li><li class="rating-all" data-index="9" movie_cd_group="20020041" movie_idx="82014"><a href="#" onclick="return false;" title="겨울왕국2" alt="겨울왕국2"><span class="icon">&nbsp;</span><span class="text">겨울왕국2</span><span class="sreader"></span></a></li><li class="rating-12" data-index="10" movie_cd_group="20021188" movie_idx="82493"><a href="#" onclick="return false;" title="나이브스아웃" alt="나이브스아웃"><span class="icon">&nbsp;</span><span class="text">나이브스아웃</span><span class="sreader"></span></a></li><li class="rating-15" data-index="11" movie_cd_group="20022183" movie_idx="82987"><a href="#" onclick="return false;" title="타오르는여인의초상" alt="타오르는여인의초상"><span class="icon">&nbsp;</span><span class="text">타오르는여인의초상</span><span class="sreader"></span></a></li><li class="rating-12" data-index="12" movie_cd_group="20019814" movie_idx="81914"><a href="#" onclick="return false;" title="포드V페라리" alt="포드V페라리"><span class="icon">&nbsp;</span><span class="text">포드V페라리</span><span class="sreader"></span></a></li><li class="rating-all" data-index="13" movie_cd_group="20021195" movie_idx="82495"><a href="#" onclick="return false;" title="신비아파트극장판하늘도깨비대요르문간드" alt="신비아파트극장판하늘도깨비대요르문간드"><span class="icon">&nbsp;</span><span class="text">신비아파트극장판하늘도깨비대요르문간드</span><span class="sreader"></span></a></li><li class="rating-15" data-index="14" movie_cd_group="20022097" movie_idx="82958"><a href="#" onclick="return false;" title="피아니스트의전설" alt="피아니스트의전설"><span class="icon">&nbsp;</span><span class="text">피아니스트의전설</span><span class="sreader"></span></a></li><li class="rating-18" data-index="15" movie_cd_group="20022188" movie_idx="82991"><a href="#" onclick="return false;" title="나쁜녀석들-포에버" alt="나쁜녀석들-포에버"><span class="icon">&nbsp;</span><span class="text">나쁜녀석들-포에버</span><span class="sreader"></span></a></li><li class="rating-15" data-index="16" movie_cd_group="20022178" movie_idx="82984"><a href="#" onclick="return false;" title="차일드인타임" alt="차일드인타임"><span class="icon">&nbsp;</span><span class="text">차일드인타임</span><span class="sreader"></span></a></li><li class="rating-15" data-index="17" movie_cd_group="20022276" movie_idx="83039"><a href="#" onclick="return false;" title="히트맨" alt="히트맨"><span class="icon">&nbsp;</span><span class="text">히트맨</span><span class="sreader"></span></a></li><li class="rating-all" data-index="18" movie_cd_group="20020665" movie_idx="82265"><a href="#" onclick="return false;" title="타발루가와얼음공주" alt="타발루가와얼음공주"><span class="icon">&nbsp;</span><span class="text">타발루가와얼음공주</span><span class="sreader"></span></a></li><li class="rating-15" data-index="19" movie_cd_group="20018422" movie_idx="81558"><a href="#" onclick="return false;" title="가버나움" alt="가버나움"><span class="icon">&nbsp;</span><span class="text">가버나움</span><span class="sreader"></span></a></li><li class="rating-12" data-index="20" movie_cd_group="20022167" movie_idx="82980"><a href="#" onclick="return false;" title="파바로티" alt="파바로티"><span class="icon">&nbsp;</span><span class="text">파바로티</span><span class="sreader"></span></a></li><li class="rating-12" data-index="21" movie_cd_group="20018347" movie_idx="81532"><a href="#" onclick="return false;" title="그린북" alt="그린북"><span class="icon">&nbsp;</span><span class="text">그린북</span><span class="sreader"></span></a></li><li class="rating-15" data-index="22" movie_cd_group="20020856" movie_idx="82377"><a href="#" onclick="return false;" title="조커" alt="조커"><span class="icon">&nbsp;</span><span class="text">조커</span><span class="sreader"></span></a></li><li class="rating-all" data-index="23" movie_cd_group="20019774" movie_idx="81907"><a href="#" onclick="return false;" title="토이스토리4" alt="토이스토리4"><span class="icon">&nbsp;</span><span class="text">토이스토리4</span><span class="sreader"></span></a></li><li class="rating-15" data-index="24" movie_cd_group="20022270" movie_idx="83034"><a href="#" onclick="return false;" title="소녀가소녀에게" alt="소녀가소녀에게"><span class="icon">&nbsp;</span><span class="text">소녀가소녀에게</span><span class="sreader"></span></a></li><li class="rating-all" data-index="25" movie_cd_group="20022166" movie_idx="82979"><a href="#" onclick="return false;" title="울지마톤즈2-슈크란바바" alt="울지마톤즈2-슈크란바바"><span class="icon">&nbsp;</span><span class="text">울지마톤즈2-슈크란바바</span><span class="sreader"></span></a></li><li class="rating-12" data-index="26" movie_cd_group="20021768" movie_idx="82762"><a href="#" onclick="return false;" title="고흐,영원의문에서" alt="고흐,영원의문에서"><span class="icon">&nbsp;</span><span class="text">고흐,영원의문에서</span><span class="sreader"></span></a></li><li class="rating-all" data-index="27" movie_cd_group="20022186" movie_idx="82989"><a href="#" onclick="return false;" title="몽마르트파파" alt="몽마르트파파"><span class="icon">&nbsp;</span><span class="text">몽마르트파파</span><span class="sreader"></span></a></li><li class="rating-all" data-index="28" movie_cd_group="20020246" movie_idx="82090"><a href="#" onclick="return false;" title="이타미준의바다" alt="이타미준의바다"><span class="icon">&nbsp;</span><span class="text">이타미준의바다</span><span class="sreader"></span></a></li><li class="rating-15" data-index="29" movie_cd_group="20022191" movie_idx="82994"><a href="#" onclick="return false;" title="신의은총으로" alt="신의은총으로"><span class="icon">&nbsp;</span><span class="text">신의은총으로</span><span class="sreader"></span></a></li><li class="rating-15" data-index="30" movie_cd_group="20019864" movie_idx="81943"><a href="#" onclick="return false;" title="조" alt="조"><span class="icon">&nbsp;</span><span class="text">조</span><span class="sreader"></span></a></li><li class="rating-all" data-index="31" movie_cd_group="20022223" movie_idx="83010"><a href="#" onclick="return false;" title="(월간오페라X골드클래스)라트라비아타" alt="(월간오페라X골드클래스)라트라비아타"><span class="icon">&nbsp;</span><span class="text">(월간오페라X골드클래스)라트라비아타</span><span class="sreader"></span></a></li><li class="rating-12" data-index="32" movie_cd_group="20022379" movie_idx="83053"><a href="#" onclick="return false;" title="브라이야기" alt="브라이야기"><span class="icon">&nbsp;</span><span class="text">브라이야기</span><span class="sreader"></span></a></li><li class="rating-15" data-index="33" movie_cd_group="20020104" movie_idx="82042"><a href="#" onclick="return false;" title="돈워리" alt="돈워리"><span class="icon">&nbsp;</span><span class="text">돈워리</span><span class="sreader"></span></a></li><li class="rating-12" data-index="34" movie_cd_group="20013097" movie_idx="79745"><a href="#" onclick="return false;" title="프란츠" alt="프란츠"><span class="icon">&nbsp;</span><span class="text">프란츠</span><span class="sreader"></span></a></li><li class="rating-12" data-index="35" movie_cd_group="20021329" movie_idx="82542"><a href="#" onclick="return false;" title="파비안느에관한진실" alt="파비안느에관한진실"><span class="icon">&nbsp;</span><span class="text">파비안느에관한진실</span><span class="sreader"></span></a></li><li class="rating-12" data-index="36" movie_cd_group="20020205" movie_idx="82078"><a href="#" onclick="return false;" title="예스터데이" alt="예스터데이"><span class="icon">&nbsp;</span><span class="text">예스터데이</span><span class="sreader"></span></a></li><li class="rating-15" data-index="37" movie_cd_group="20003388" movie_idx="77042"><a href="#" onclick="return false;" title="인더하우스" alt="인더하우스"><span class="icon">&nbsp;</span><span class="text">인더하우스</span><span class="sreader"></span></a></li><li class="rating-18" data-index="38" movie_cd_group="20006818" movie_idx="78045"><a href="#" onclick="return false;" title="나의사적인여자친구" alt="나의사적인여자친구"><span class="icon">&nbsp;</span><span class="text">나의사적인여자친구</span><span class="sreader"></span></a></li><li class="rating-15" data-index="39" movie_cd_group="20022096" movie_idx="82957"><a href="#" onclick="return false;" title="와일드라이프" alt="와일드라이프"><span class="icon">&nbsp;</span><span class="text">와일드라이프</span><span class="sreader"></span></a></li><li class="rating-12" data-index="40" movie_cd_group="20022271" movie_idx="83035"><a href="#" onclick="return false;" title="썩시드" alt="썩시드"><span class="icon">&nbsp;</span><span class="text">썩시드</span><span class="sreader"></span></a></li><li class="rating-18" data-index="41" movie_cd_group="20022279" movie_idx="83041"><a href="#" onclick="return false;" title="디어스킨" alt="디어스킨"><span class="icon">&nbsp;</span><span class="text">디어스킨</span><span class="sreader"></span></a></li><li class="rating-18" data-index="42" movie_cd_group="20004439" movie_idx="77315"><a href="#" onclick="return false;" title="영앤뷰티풀" alt="영앤뷰티풀"><span class="icon">&nbsp;</span><span class="text">영앤뷰티풀</span><span class="sreader"></span></a></li><li class="rating-all" data-index="43" movie_cd_group="20002365" movie_idx="76828"><a href="#" onclick="return false;" title="러브레터" alt="러브레터"><span class="icon">&nbsp;</span><span class="text">러브레터</span><span class="sreader"></span></a></li><li class="rating-12" data-index="44" movie_cd_group="20018556" movie_idx="81581"><a href="#" onclick="return false;" title="증인" alt="증인"><span class="icon">&nbsp;</span><span class="text">증인</span><span class="sreader"></span></a></li><li class="rating-all" data-index="45" movie_cd_group="20021618" movie_idx="82712"><a href="#" onclick="return false;" title="눈의여왕4" alt="눈의여왕4"><span class="icon">&nbsp;</span><span class="text">눈의여왕4</span><span class="sreader"></span></a></li><li class="rating-18" data-index="46" movie_cd_group="20009174" movie_idx="78723"><a href="#" onclick="return false;" title="캐롤" alt="캐롤"><span class="icon">&nbsp;</span><span class="text">캐롤</span><span class="sreader"></span></a></li><li class="rating-18" data-index="47" movie_cd_group="20014583" movie_idx="80284"><a href="#" onclick="return false;" title="두개의사랑" alt="두개의사랑"><span class="icon">&nbsp;</span><span class="text">두개의사랑</span><span class="sreader"></span></a></li><li class="rating-all" data-index="48" movie_cd_group="20022224" movie_idx="83011"><a href="#" onclick="return false;" title="(월간오페라XTPC)라트라비아타" alt="(월간오페라XTPC)라트라비아타"><span class="icon">&nbsp;</span><span class="text">(월간오페라XTPC)라트라비아타</span><span class="sreader"></span></a></li><li class="rating-all" data-index="49" movie_cd_group="20021547" movie_idx="82643"><a href="#" onclick="return false;" title="[오페라마]바리톤정경의한국가곡전상서" alt="[오페라마]바리톤정경의한국가곡전상서"><span class="icon">&nbsp;</span><span class="text">[오페라마]바리톤정경의한국가곡전상서</span><span class="sreader"></span></a></li><li class="rating-12" data-index="50" movie_cd_group="20021647" movie_idx="82716"><a href="#" onclick="return false;" title="미안해요,리키" alt="미안해요,리키"><span class="icon">&nbsp;</span><span class="text">미안해요,리키</span><span class="sreader"></span></a></li><li class="rating-all" data-index="51" movie_cd_group="20021529" movie_idx="82639"><a href="#" onclick="return false;" title="프린스코기" alt="프린스코기"><span class="icon">&nbsp;</span><span class="text">프린스코기</span><span class="sreader"></span></a></li><li class="rating-12" data-index="52" movie_cd_group="20002181" movie_idx="76658"><a href="#" onclick="return false;" title="레미제라블" alt="레미제라블"><span class="icon">&nbsp;</span><span class="text">레미제라블</span><span class="sreader"></span></a></li><li class="rating-all" data-index="53" movie_cd_group="20022190" movie_idx="82993"><a href="#" onclick="return false;" title="리틀큐" alt="리틀큐"><span class="icon">&nbsp;</span><span class="text">리틀큐</span><span class="sreader"></span></a></li><li class="rating-all" data-index="54" movie_cd_group="20022233" movie_idx="83017"><a href="#" onclick="return false;" title="[사이다경제_사계강의(겨울)]나도회사다니는동안책한권써볼까" alt="[사이다경제_사계강의(겨울)]나도회사다니는동안책한권써볼까"><span class="icon">&nbsp;</span><span class="text">[사이다경제_사계강의(겨울)]나도회사다니는동안책한권써볼까</span><span class="sreader"></span></a></li><li class="rating-12" data-index="55" movie_cd_group="20020991" movie_idx="82427"><a href="#" onclick="return false;" title="82년생김지영" alt="82년생김지영"><span class="icon">&nbsp;</span><span class="text">82년생김지영</span><span class="sreader"></span></a></li><li class="rating-12" data-index="56" movie_cd_group="20021530" movie_idx="82640"><a href="#" onclick="return false;" title="러브앳" alt="러브앳"><span class="icon">&nbsp;</span><span class="text">러브앳</span><span class="sreader"></span></a></li><li class="rating-all" data-index="57" movie_cd_group="20022447" movie_idx="83067"><a href="#" onclick="return false;" title="이다혜의북클럽시즌2-오만과편견" alt="이다혜의북클럽시즌2-오만과편견"><span class="icon">&nbsp;</span><span class="text">이다혜의북클럽시즌2-오만과편견</span><span class="sreader"></span></a></li><li class="rating-all" data-index="58" movie_cd_group="20022222" movie_idx="83009"><a href="#" onclick="return false;" title="(월간오페라X씨네드쉐프)라트라비아타" alt="(월간오페라X씨네드쉐프)라트라비아타"><span class="icon">&nbsp;</span><span class="text">(월간오페라X씨네드쉐프)라트라비아타</span><span class="sreader"></span></a></li><li class="rating-all" data-index="59" movie_cd_group="20021501" movie_idx="82625"><a href="#" onclick="return false;" title="프란치스코교황-맨오브히스워드" alt="프란치스코교황-맨오브히스워드"><span class="icon">&nbsp;</span><span class="text">프란치스코교황-맨오브히스워드</span><span class="sreader"></span></a></li><li class="rating-all" data-index="60" movie_cd_group="20022199" movie_idx="83000"><a href="#" onclick="return false;" title="스파이지니어스" alt="스파이지니어스"><span class="icon">&nbsp;</span><span class="text">스파이지니어스</span><span class="sreader"></span></a></li><li class="rating-15" data-index="61" movie_cd_group="20017762" movie_idx="81315"><a href="#" onclick="return false;" title="도어락" alt="도어락"><span class="icon">&nbsp;</span><span class="text">도어락</span><span class="sreader"></span></a></li><li class="rating-15" data-index="62" movie_cd_group="20021886" movie_idx="82866"><a href="#" onclick="return false;" title="카운트다운" alt="카운트다운"><span class="icon">&nbsp;</span><span class="text">카운트다운</span><span class="sreader"></span></a></li><li class="rating-all" data-index="63" movie_cd_group="20021210" movie_idx="82500"><a href="#" onclick="return false;" title="EBS댄스파티" alt="EBS댄스파티"><span class="icon">&nbsp;</span><span class="text">EBS댄스파티</span><span class="sreader"></span></a></li><li class="rating-12" data-index="64" movie_cd_group="20021270" movie_idx="82521"><a href="#" onclick="return false;" title="쥬만지-넥스트레벨" alt="쥬만지-넥스트레벨"><span class="icon">&nbsp;</span><span class="text">쥬만지-넥스트레벨</span><span class="sreader"></span></a></li><li class="rating-12" data-index="65" movie_cd_group="20022214" movie_idx="83004"><a href="#" onclick="return false;" title="미스터주-사라진VIP" alt="미스터주-사라진VIP"><span class="icon">&nbsp;</span><span class="text">미스터주-사라진VIP</span><span class="sreader"></span></a></li><li class="rating-all" data-index="66" movie_cd_group="20022264" movie_idx="83028"><a href="#" onclick="return false;" title="슈퍼베어" alt="슈퍼베어"><span class="icon">&nbsp;</span><span class="text">슈퍼베어</span><span class="sreader"></span></a></li><li class="rating-all" data-index="67" movie_cd_group="20022262" movie_idx="83027"><a href="#" onclick="return false;" title="스파이즈" alt="스파이즈"><span class="icon">&nbsp;</span><span class="text">스파이즈</span><span class="sreader"></span></a></li><li class="rating-18" data-index="68" movie_cd_group="20022397" movie_idx="83056"><a href="#" onclick="return false;" title="[시네아스트-한국영화]박정범이라는상징적리얼리즘" alt="[시네아스트-한국영화]박정범이라는상징적리얼리즘"><span class="icon">&nbsp;</span><span class="text">[시네아스트-한국영화]박정범이라는상징적리얼리즘</span><span class="sreader"></span></a></li><li class="rating-15" data-index="69" movie_cd_group="20022398" movie_idx="83057"><a href="#" onclick="return false;" title="[시네아스트-한국영화]봉준호의코미디혹은공간적리얼리즘에대하여" alt="[시네아스트-한국영화]봉준호의코미디혹은공간적리얼리즘에대하여"><span class="icon">&nbsp;</span><span class="text">[시네아스트-한국영화]봉준호의코미디혹은공간적리얼리즘에대하여</span><span class="sreader"></span></a></li><li class="rating-12" data-index="70" movie_cd_group="20022470" movie_idx=""><a href="#" onclick="return false;" title="녹차의중력+백두번째구름" alt="녹차의중력+백두번째구름"><span class="icon">&nbsp;</span><span class="text">녹차의중력+백두번째구름</span><span class="sreader"></span></a></li></ul>
                                        <div class="pane pane-y" style="display: block; opacity: 1; visibility: visible;"><div class="slider slider-y" style="height: 50px; top: 0px;"></div></div><div class="pane pane-x" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-x" style="width: 50px;"></div></div></div>
                                        <div class="selectbox-movie-type" style="display:none;">
                                            <a href="#" onclick="closeSelectboxMovieType();return false;" class="btn-close">영화속성 레이어 닫기</a>
                                            <ul>
                                                <li id="sbmt_all" class="GROUP1 ALL"><a data-type="ALL" href="#" onclick="SelectboxMovieTypeClickListener(event);return false;">전체</a></li>
                                                <li id="sbmt_digital" class="GROUP1 DIGITAL proplist"><a data-type="DIGITAL" href="#" onclick="SelectboxMovieTypeClickListener(event);return false;">2D</a></li>
                                                <li id="sbmt_imax" class="GROUP1 IMAX proplist"><a data-type="IMAX" href="#" onclick="SelectboxMovieTypeClickListener(event);return false;">IMAX</a></li>
                                                <li id="sbmt_4dx" class="GROUP1 4DX proplist"><a data-type="4DX" href="#" onclick="SelectboxMovieTypeClickListener(event);return false;">4DX</a></li>
                                                <li id="sbmt_soundx" class="GROUP1 SOUNDX proplist"><a data-type="SOUNDX" href="#" onclick="SelectboxMovieTypeClickListener(event);return false;">SOUNDX</a></li>
                                                <li id="sbmt_screenx" class="GROUP1 SCREENX proplist"><a data-type="SCREENX" href="#" onclick="SelectboxMovieTypeClickListener(event);return false;">SCREENX</a></li>
                                                <li id="sbmt_3d" class="GROUP1 3D proplist"><a data-type="3D" href="#" onclick="SelectboxMovieTypeClickListener(event);return false;">3D</a></li>
                                                <li id="sbmt_dubbing" class="GROUP2 DUBBING proplist"><a data-type="DUBBING" href="#" onclick="SelectboxMovieTypeClickListener(event);return false;">더빙</a></li>
                                                <li id="sbmt_subtitle" class="GROUP2 SUBTITLES proplist"><a data-type="SUBTITLES" href="#" onclick="SelectboxMovieTypeClickListener(event);return false;">자막</a></li>
                                                <li id="sbmt_lovemom" class="GROUP3 LOVEMOM proplist"><a data-type="LOVEMOM" href="#" onclick="SelectboxMovieTypeClickListener(event);return false;">러브맘</a></li>
                                                <li id="sbmt_liveTalk" class="GROUP3 LIVETALK proplist"><a data-type="LIVETALK" href="#" onclick="SelectboxMovieTypeClickListener(event);return false;">스타라이브톡</a></li>
                                                <li id="sbmt_wheelchairAccess" class="GROUP3 WHEELCHAIRACCESS proplist"><a data-type="WHEELCHAIRACCESS" href="#" onclick="SelectboxMovieTypeClickListener(event);return false;">배리어프리</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- THEATER 섹션 -->
                            <div class="section section-theater">
                                <!-- col-head -->
                                <div class="col-head" id="skip_theater_list">
                                    <h3 class="sreader">극장</h3>
                                    <a href="#" class="skip_to_something" onclick="skipToSomething('skip_date_list');return false;">극장선택 건너뛰기</a>
                                </div>
                                <!-- col-body -->
                                <div class="col-body" style="height: 560px;">
                                    <!-- 자주가는 CGV -->
                                    
                                    <!-- 극장선택 -->
                                    <div class="theater-select" style="height: 429px;">
                                        <div class="tabmenu">
                                            <span class="side on"></span>
                                            <a href="#" onclick="return false;" class="button menu1 selected">전체</a>
                                            <span class="side on"></span>
                                            <a href="#" onclick="return false;" class="button menu2">아트하우스</a>
                                            <span class="side"></span>
                                            <a href="#" onclick="return false;" class="button menu3">특별관</a>
                                            <span class="side"></span>
                                        </div>
                                        <div class="theater-list" style="height: 388px;">
                                            <div class="theater-area-list" id="theater_area_list">
                                                <ul>
                                                    <li class="selected"><a href="#" onclick="theaterAreaClickListener(event);return false;"><span class="name">서울</span><span class="count">(30)</span></a><div class="area_theater_list nano has-scrollbar has-scrollbar-y"><ul class="content scroll-y" tabindex="-1" style="right: -21px;"><li class="" data-index="0" areaindex="0" theater_cd="0056" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">강남<span class="sreader"></span></a></li><li class="" data-index="2" areaindex="0" theater_cd="0001" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="강변역 테크노마트">강변<span class="sreader"></span></a></li><li class="" data-index="4" areaindex="0" theater_cd="0229" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">건대입구<span class="sreader"></span></a></li><li class="" data-index="18" areaindex="0" theater_cd="0010" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">구로<span class="sreader"></span></a></li><li class="" data-index="47" areaindex="0" theater_cd="0063" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">대학로<span class="sreader"></span></a></li><li class="" data-index="49" areaindex="0" theater_cd="0252" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">동대문<span class="sreader"></span></a></li><li class="" data-index="55" areaindex="0" theater_cd="0230" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">등촌<span class="sreader"></span></a></li><li class="" data-index="57" areaindex="0" theater_cd="0009" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="눈스퀘어 8층">명동<span class="sreader"></span></a></li><li class="" data-index="58" areaindex="0" theater_cd="0105" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="명동역 7,8번 출구">명동역 씨네라이브러리<span class="sreader"></span></a></li><li class="" data-index="59" areaindex="0" theater_cd="0011" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">목동<span class="sreader"></span></a></li><li class="" data-index="62" areaindex="0" theater_cd="0057" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">미아<span class="sreader"></span></a></li><li class="" data-index="71" areaindex="0" theater_cd="0030" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">불광<span class="sreader"></span></a></li><li class="" data-index="73" areaindex="0" theater_cd="0046" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">상봉<span class="sreader"></span></a></li><li class="" data-index="79" areaindex="0" theater_cd="0300" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">성신여대입구<span class="sreader"></span></a></li><li class="" data-index="83" areaindex="0" theater_cd="0088" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">송파<span class="sreader"></span></a></li><li class="" data-index="85" areaindex="0" theater_cd="0276" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">수유<span class="sreader"></span></a></li><li class="" data-index="90" areaindex="0" theater_cd="0150" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">신촌아트레온<span class="sreader"></span></a></li><li class="" data-index="92" areaindex="0" theater_cd="P001" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">씨네드쉐프 압구정<span class="sreader"></span></a></li><li class="" data-index="93" areaindex="0" theater_cd="P013" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">씨네드쉐프 용산아이파크몰<span class="sreader"></span></a></li><li class="" data-index="98" areaindex="0" theater_cd="0040" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">압구정<span class="sreader"></span></a></li><li class="" data-index="103" areaindex="0" theater_cd="0112" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">여의도<span class="sreader"></span></a></li><li class="" data-index="106" areaindex="0" theater_cd="0059" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">영등포<span class="sreader"></span></a></li><li class="" data-index="110" areaindex="0" theater_cd="0074" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">왕십리<span class="sreader"></span></a></li><li class="" data-index="111" areaindex="0" theater_cd="0013" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">용산아이파크몰<span class="sreader"></span></a></li><li class="" data-index="137" areaindex="0" theater_cd="0131" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="홈플러스 중계점 8층">중계<span class="sreader"></span></a></li><li class="" data-index="143" areaindex="0" theater_cd="0199" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">천호<span class="sreader"></span></a></li><li class="" data-index="144" areaindex="0" theater_cd="0107" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">청담씨네시티<span class="sreader"></span></a></li><li class="" data-index="161" areaindex="0" theater_cd="0223" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">피카디리1958<span class="sreader"></span></a></li><li class="" data-index="162" areaindex="0" theater_cd="0164" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="건영백화점 B1층">하계<span class="sreader"></span></a></li><li class="" data-index="165" areaindex="0" theater_cd="0191" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">홍대<span class="sreader"></span></a></li></ul><div class="pane pane-y" style="display: block; opacity: 1; visibility: visible;"><div class="slider slider-y" style="height: 50px; top: 0px;"></div></div><div class="pane pane-x" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-x" style="width: 50px;"></div></div></div></li>
                                                    <li><a href="#" onclick="theaterAreaClickListener(event);return false;"><span class="name">경기</span><span class="count">(42)</span></a><div class="area_theater_list nano has-scrollbar"><ul class="content scroll-y" tabindex="-1" style="right: -21px;"><li class="" data-index="5" areaindex="1" theater_cd="0260" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">경기광주<span class="sreader"></span></a></li><li class="" data-index="7" areaindex="1" theater_cd="0266" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">광교상현<span class="sreader"></span></a></li><li class="" data-index="8" areaindex="1" theater_cd="0182" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="철산역 1번 출구">광명철산<span class="sreader"></span></a></li><li class="" data-index="19" areaindex="1" theater_cd="0232" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">구리<span class="sreader"></span></a></li><li class="" data-index="23" areaindex="1" theater_cd="0188" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">김포운양<span class="sreader"></span></a></li><li class="" data-index="24" areaindex="1" theater_cd="0126" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="풍무동 홈플러스">김포풍무<span class="sreader"></span></a></li><li class="" data-index="25" areaindex="1" theater_cd="0298" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">김포한강<span class="sreader"></span></a></li><li class="" data-index="51" areaindex="1" theater_cd="0124" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">동백<span class="sreader"></span></a></li><li class="" data-index="52" areaindex="1" theater_cd="0041" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="인계동 씨네파크 7층">동수원<span class="sreader"></span></a></li><li class="" data-index="53" areaindex="1" theater_cd="0106" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="메타폴리스 A블럭">동탄<span class="sreader"></span></a></li><li class="" data-index="54" areaindex="1" theater_cd="0265" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">동탄역<span class="sreader"></span></a></li><li class="" data-index="63" areaindex="1" theater_cd="0226" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">배곧<span class="sreader"></span></a></li><li class="" data-index="64" areaindex="1" theater_cd="0155" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="범계역 뉴코아아울렛">범계<span class="sreader"></span></a></li><li class="" data-index="66" areaindex="1" theater_cd="0015" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="현대백화점 5층">부천<span class="sreader"></span></a></li><li class="" data-index="67" areaindex="1" theater_cd="0194" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="부천역 3번출구에 있습니다.">부천역<span class="sreader"></span></a></li><li class="" data-index="69" areaindex="1" theater_cd="0049" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">북수원<span class="sreader"></span></a></li><li class="" data-index="72" areaindex="1" theater_cd="0242" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">산본<span class="sreader"></span></a></li><li class="" data-index="78" areaindex="1" theater_cd="0196" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">서현<span class="sreader"></span></a></li><li class="" data-index="82" areaindex="1" theater_cd="0143" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">소풍<span class="sreader"></span></a></li><li class="" data-index="84" areaindex="1" theater_cd="0012" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">수원<span class="sreader"></span></a></li><li class="" data-index="88" areaindex="1" theater_cd="0274" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">스타필드시티위례<span class="sreader"></span></a></li><li class="" data-index="89" areaindex="1" theater_cd="0073" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">시흥<span class="sreader"></span></a></li><li class="" data-index="96" areaindex="1" theater_cd="0211" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">안산<span class="sreader"></span></a></li><li class="" data-index="97" areaindex="1" theater_cd="0279" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">안성<span class="sreader"></span></a></li><li class="" data-index="99" areaindex="1" theater_cd="0003" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">야탑<span class="sreader"></span></a></li><li class="" data-index="104" areaindex="1" theater_cd="0029" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">역곡<span class="sreader"></span></a></li><li class="" data-index="107" areaindex="1" theater_cd="0004" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">오리<span class="sreader"></span></a></li><li class="" data-index="108" areaindex="1" theater_cd="0305" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">오산<span class="sreader"></span></a></li><li class="" data-index="109" areaindex="1" theater_cd="0307" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">오산중앙<span class="sreader"></span></a></li><li class="" data-index="112" areaindex="1" theater_cd="0271" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">용인<span class="sreader"></span></a></li><li class="" data-index="119" areaindex="1" theater_cd="0113" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="신세계 백화점 10층">의정부<span class="sreader"></span></a></li><li class="" data-index="120" areaindex="1" theater_cd="0187" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="센트럴타워 15층">의정부태흥<span class="sreader"></span></a></li><li class="" data-index="121" areaindex="1" theater_cd="0205" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">이천<span class="sreader"></span></a></li><li class="" data-index="128" areaindex="1" theater_cd="0054" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">일산<span class="sreader"></span></a></li><li class="" data-index="136" areaindex="1" theater_cd="0055" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">죽전<span class="sreader"></span></a></li><li class="" data-index="155" areaindex="1" theater_cd="0148" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">파주문산<span class="sreader"></span></a></li><li class="" data-index="156" areaindex="1" theater_cd="0181" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">판교<span class="sreader"></span></a></li><li class="" data-index="157" areaindex="1" theater_cd="0195" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">평촌<span class="sreader"></span></a></li><li class="" data-index="158" areaindex="1" theater_cd="0052" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">평택<span class="sreader"></span></a></li><li class="" data-index="159" areaindex="1" theater_cd="0214" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">평택소사<span class="sreader"></span></a></li><li class="" data-index="168" areaindex="1" theater_cd="0301" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">화성봉담<span class="sreader"></span></a></li><li class="" data-index="169" areaindex="1" theater_cd="0145" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">화정<span class="sreader"></span></a></li></ul><div class="pane pane-y" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-y" style="height: 50px;"></div></div><div class="pane pane-x" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-x" style="width: 50px;"></div></div></div></li>
                                                    <li><a href="#" onclick="theaterAreaClickListener(event);return false;"><span class="name">인천</span><span class="count">(10)</span></a><div class="area_theater_list nano has-scrollbar"><ul class="content scroll-y" tabindex="-1" style="right: -21px;"><li class="" data-index="6" areaindex="2" theater_cd="0043" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">계양<span class="sreader"></span></a></li><li class="" data-index="29" areaindex="2" theater_cd="0198" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="주안역 8번 출구 아이하니 9층 ">남주안<span class="sreader"></span></a></li><li class="" data-index="68" areaindex="2" theater_cd="0021" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="청천동 아이즈빌 아울렛">부평<span class="sreader"></span></a></li><li class="" data-index="105" areaindex="2" theater_cd="0247" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">연수역<span class="sreader"></span></a></li><li class="" data-index="124" areaindex="2" theater_cd="0002" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="구월동 홈플러스">인천<span class="sreader"></span></a></li><li class="" data-index="125" areaindex="2" theater_cd="0118" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">인천공항<span class="sreader"></span></a></li><li class="" data-index="126" areaindex="2" theater_cd="0254" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">인천논현<span class="sreader"></span></a></li><li class="" data-index="127" areaindex="2" theater_cd="0258" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">인천연수<span class="sreader"></span></a></li><li class="" data-index="135" areaindex="2" theater_cd="0027" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">주안역<span class="sreader"></span></a></li><li class="" data-index="145" areaindex="2" theater_cd="0235" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">청라<span class="sreader"></span></a></li></ul><div class="pane pane-y" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-y" style="height: 50px;"></div></div><div class="pane pane-x" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-x" style="width: 50px;"></div></div></div></li>
                                                    <li><a href="#" onclick="theaterAreaClickListener(event);return false;"><span class="name">강원</span><span class="count">(5)</span></a><div class="area_theater_list nano has-scrollbar"><ul class="content scroll-y" tabindex="-1" style="right: -21px;"><li class="" data-index="1" areaindex="3" theater_cd="0139" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">강릉<span class="sreader"></span></a></li><li class="" data-index="116" areaindex="3" theater_cd="0144" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">원주<span class="sreader"></span></a></li><li class="" data-index="123" areaindex="3" theater_cd="0281" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">인제<span class="sreader"></span></a></li><li class="" data-index="151" areaindex="3" theater_cd="0070" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">춘천<span class="sreader"></span></a></li><li class="" data-index="152" areaindex="3" theater_cd="0189" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">춘천명동<span class="sreader"></span></a></li></ul><div class="pane pane-y" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-y" style="height: 50px;"></div></div><div class="pane pane-x" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-x" style="width: 50px;"></div></div></div></li>
                                                    <li><a href="#" onclick="theaterAreaClickListener(event);return false;"><span class="name">대전/충청</span><span class="count">(21)</span></a><div class="area_theater_list nano has-scrollbar"><ul class="content scroll-y" tabindex="-1" style="right: -21px;"><li class="" data-index="31" areaindex="4" theater_cd="0207" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">당진<span class="sreader"></span></a></li><li class="" data-index="42" areaindex="4" theater_cd="0007" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">대전<span class="sreader"></span></a></li><li class="" data-index="43" areaindex="4" theater_cd="0286" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">대전가수원<span class="sreader"></span></a></li><li class="" data-index="44" areaindex="4" theater_cd="0154" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">대전가오<span class="sreader"></span></a></li><li class="" data-index="45" areaindex="4" theater_cd="0202" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">대전탄방<span class="sreader"></span></a></li><li class="" data-index="46" areaindex="4" theater_cd="0127" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">대전터미널<span class="sreader"></span></a></li><li class="" data-index="65" areaindex="4" theater_cd="0275" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">보령<span class="sreader"></span></a></li><li class="" data-index="76" areaindex="4" theater_cd="0091" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">서산<span class="sreader"></span></a></li><li class="" data-index="80" areaindex="4" theater_cd="0219" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">세종<span class="sreader"></span></a></li><li class="" data-index="117" areaindex="4" theater_cd="0206" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">유성노은<span class="sreader"></span></a></li><li class="" data-index="118" areaindex="4" theater_cd="0209" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">유성온천<span class="sreader"></span></a></li><li class="" data-index="140" areaindex="4" theater_cd="0044" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="천안역 1번 출구">천안<span class="sreader"></span></a></li><li class="" data-index="141" areaindex="4" theater_cd="0293" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">천안터미널<span class="sreader"></span></a></li><li class="" data-index="142" areaindex="4" theater_cd="0110" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="불당동 펜타포트(천안아산역)">천안펜타포트<span class="sreader"></span></a></li><li class="" data-index="146" areaindex="4" theater_cd="0297" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">청주성안길<span class="sreader"></span></a></li><li class="" data-index="147" areaindex="4" theater_cd="0282" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">청주율량<span class="sreader"></span></a></li><li class="" data-index="148" areaindex="4" theater_cd="0142" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">청주지웰시티<span class="sreader"></span></a></li><li class="" data-index="149" areaindex="4" theater_cd="0294" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">청주터미널<span class="sreader"></span></a></li><li class="" data-index="150" areaindex="4" theater_cd="0228" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">청주(서문)<span class="sreader"></span></a></li><li class="" data-index="153" areaindex="4" theater_cd="0284" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">충북혁신<span class="sreader"></span></a></li><li class="" data-index="166" areaindex="4" theater_cd="0217" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">홍성<span class="sreader"></span></a></li></ul><div class="pane pane-y" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-y" style="height: 50px;"></div></div><div class="pane pane-x" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-x" style="width: 50px;"></div></div></div></li>
                                                    <li><a href="#" onclick="theaterAreaClickListener(event);return false;"><span class="name">대구</span><span class="count">(9)</span></a><div class="area_theater_list nano has-scrollbar"><ul class="content scroll-y" tabindex="-1" style="right: -21px;"><li class="" data-index="32" areaindex="5" theater_cd="0058" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="중앙로역 영플라자 5층">대구<span class="sreader"></span></a></li><li class="" data-index="33" areaindex="5" theater_cd="0157" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">대구수성<span class="sreader"></span></a></li><li class="" data-index="34" areaindex="5" theater_cd="0108" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">대구스타디움<span class="sreader"></span></a></li><li class="" data-index="35" areaindex="5" theater_cd="0185" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="중앙로역 2번 출구">대구아카데미<span class="sreader"></span></a></li><li class="" data-index="36" areaindex="5" theater_cd="0216" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">대구월성<span class="sreader"></span></a></li><li class="" data-index="37" areaindex="5" theater_cd="0117" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">대구이시아<span class="sreader"></span></a></li><li class="" data-index="38" areaindex="5" theater_cd="0071" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">대구칠곡<span class="sreader"></span></a></li><li class="" data-index="39" areaindex="5" theater_cd="0147" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="동성로광장 진입로">대구한일<span class="sreader"></span></a></li><li class="" data-index="40" areaindex="5" theater_cd="0109" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="현대백화점 지하 2층">대구현대<span class="sreader"></span></a></li></ul><div class="pane pane-y" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-y" style="height: 50px;"></div></div><div class="pane pane-x" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-x" style="width: 50px;"></div></div></div></li>
                                                    <li><a href="#" onclick="theaterAreaClickListener(event);return false;"><span class="name">부산/울산</span><span class="count">(16)</span></a><div class="area_theater_list nano has-scrollbar"><ul class="content scroll-y" tabindex="-1" style="right: -21px;"><li class="" data-index="30" areaindex="6" theater_cd="0065" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">남포<span class="sreader"></span></a></li><li class="" data-index="41" areaindex="6" theater_cd="0061" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">대연<span class="sreader"></span></a></li><li class="" data-index="48" areaindex="6" theater_cd="0151" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">대한<span class="sreader"></span></a></li><li class="" data-index="50" areaindex="6" theater_cd="0042" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">동래<span class="sreader"></span></a></li><li class="" data-index="74" areaindex="6" theater_cd="0005" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">서면<span class="sreader"></span></a></li><li class="" data-index="75" areaindex="6" theater_cd="0285" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">서면삼정타워<span class="sreader"></span></a></li><li class="" data-index="81" areaindex="6" theater_cd="0089" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">센텀시티<span class="sreader"></span></a></li><li class="" data-index="91" areaindex="6" theater_cd="P004" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">씨네드쉐프 센텀시티<span class="sreader"></span></a></li><li class="" data-index="94" areaindex="6" theater_cd="0160" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">아시아드<span class="sreader"></span></a></li><li class="" data-index="113" areaindex="6" theater_cd="0128" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="삼산동">울산삼산<span class="sreader"></span></a></li><li class="" data-index="114" areaindex="6" theater_cd="0264" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">울산신천<span class="sreader"></span></a></li><li class="" data-index="115" areaindex="6" theater_cd="0246" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">울산진장<span class="sreader"></span></a></li><li class="" data-index="131" areaindex="6" theater_cd="0306" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">정관<span class="sreader"></span></a></li><li class="" data-index="163" areaindex="6" theater_cd="0245" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">하단아트몰링<span class="sreader"></span></a></li><li class="" data-index="164" areaindex="6" theater_cd="0253" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">해운대<span class="sreader"></span></a></li><li class="" data-index="167" areaindex="6" theater_cd="0159" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">화명<span class="sreader"></span></a></li></ul><div class="pane pane-y" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-y" style="height: 50px;"></div></div><div class="pane pane-x" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-x" style="width: 50px;"></div></div></div></li>
                                                    <li><a href="#" onclick="theaterAreaClickListener(event);return false;"><span class="name">경상</span><span class="count">(14)</span></a><div class="area_theater_list nano has-scrollbar"><ul class="content scroll-y" tabindex="-1" style="right: -21px;"><li class="" data-index="3" areaindex="7" theater_cd="0263" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">거제<span class="sreader"></span></a></li><li class="" data-index="20" areaindex="7" theater_cd="0053" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">구미<span class="sreader"></span></a></li><li class="" data-index="22" areaindex="7" theater_cd="0240" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">김천율곡<span class="sreader"></span></a></li><li class="" data-index="26" areaindex="7" theater_cd="0028" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">김해<span class="sreader"></span></a></li><li class="" data-index="27" areaindex="7" theater_cd="0239" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">김해장유<span class="sreader"></span></a></li><li class="" data-index="56" areaindex="7" theater_cd="0033" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">마산<span class="sreader"></span></a></li><li class="" data-index="70" areaindex="7" theater_cd="0097" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="포항시 북구 덕산동">북포항<span class="sreader"></span></a></li><li class="" data-index="95" areaindex="7" theater_cd="0272" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">안동<span class="sreader"></span></a></li><li class="" data-index="100" areaindex="7" theater_cd="0222" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">양산물금<span class="sreader"></span></a></li><li class="" data-index="101" areaindex="7" theater_cd="0234" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">양산삼호<span class="sreader"></span></a></li><li class="" data-index="138" areaindex="7" theater_cd="0023" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">창원<span class="sreader"></span></a></li><li class="" data-index="139" areaindex="7" theater_cd="0079" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">창원더시티<span class="sreader"></span></a></li><li class="" data-index="154" areaindex="7" theater_cd="0156" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">통영<span class="sreader"></span></a></li><li class="" data-index="160" areaindex="7" theater_cd="0045" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="포항시 남구 상도동">포항<span class="sreader"></span></a></li></ul><div class="pane pane-y" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-y" style="height: 50px;"></div></div><div class="pane pane-x" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-x" style="width: 50px;"></div></div></div></li>
                                                    <li><a href="#" onclick="theaterAreaClickListener(event);return false;"><span class="name">광주/전라/제주</span><span class="count">(23)</span></a><div class="area_theater_list nano has-scrollbar"><ul class="content scroll-y" tabindex="-1" style="right: -21px;"><li class="" data-index="9" areaindex="8" theater_cd="0220" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">광양<span class="sreader"></span></a></li><li class="" data-index="10" areaindex="8" theater_cd="0221" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">광양 엘에프스퀘어<span class="sreader"></span></a></li><li class="" data-index="11" areaindex="8" theater_cd="0295" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">광주금남로<span class="sreader"></span></a></li><li class="" data-index="12" areaindex="8" theater_cd="0193" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">광주상무<span class="sreader"></span></a></li><li class="" data-index="13" areaindex="8" theater_cd="0210" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">광주용봉<span class="sreader"></span></a></li><li class="" data-index="14" areaindex="8" theater_cd="0218" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">광주첨단<span class="sreader"></span></a></li><li class="" data-index="15" areaindex="8" theater_cd="0244" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">광주충장로<span class="sreader"></span></a></li><li class="" data-index="16" areaindex="8" theater_cd="0090" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">광주터미널<span class="sreader"></span></a></li><li class="" data-index="17" areaindex="8" theater_cd="0215" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">광주하남<span class="sreader"></span></a></li><li class="" data-index="21" areaindex="8" theater_cd="0277" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">군산<span class="sreader"></span></a></li><li class="" data-index="28" areaindex="8" theater_cd="0237" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">나주<span class="sreader"></span></a></li><li class="" data-index="60" areaindex="8" theater_cd="0289" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">목포<span class="sreader"></span></a></li><li class="" data-index="61" areaindex="8" theater_cd="0280" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">목포평화광장<span class="sreader"></span></a></li><li class="" data-index="77" areaindex="8" theater_cd="0225" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">서전주<span class="sreader"></span></a></li><li class="" data-index="86" areaindex="8" theater_cd="0114" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">순천<span class="sreader"></span></a></li><li class="" data-index="87" areaindex="8" theater_cd="0268" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">순천신대<span class="sreader"></span></a></li><li class="" data-index="102" areaindex="8" theater_cd="0315" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">여수웅천<span class="sreader"></span></a></li><li class="" data-index="122" areaindex="8" theater_cd="0020" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">익산<span class="sreader"></span></a></li><li class="" data-index="129" areaindex="8" theater_cd="0213" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">전주고사<span class="sreader"></span></a></li><li class="" data-index="130" areaindex="8" theater_cd="0179" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">전주효자<span class="sreader"></span></a></li><li class="" data-index="132" areaindex="8" theater_cd="0186" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">정읍<span class="sreader"></span></a></li><li class="" data-index="133" areaindex="8" theater_cd="0302" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">제주<span class="sreader"></span></a></li><li class="" data-index="134" areaindex="8" theater_cd="0259" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">제주노형<span class="sreader"></span></a></li></ul><div class="pane pane-y" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-y" style="height: 50px;"></div></div><div class="pane pane-x" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-x" style="width: 50px;"></div></div></div></li>
                                                <li><a href="#" onclick="theaterAreaClickListener(event);return false;"><span class="name">&nbsp;</span><span class="count">&nbsp;</span></a><div class="area_theater_list nano has-scrollbar"><ul class="content scroll-y" tabindex="-1" style="right: -21px;"></ul><div class="pane pane-y" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-y" style="height: 50px;"></div></div><div class="pane pane-x" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-x" style="width: 50px;"></div></div></div></li><li><a href="#" onclick="theaterAreaClickListener(event);return false;"><span class="name">&nbsp;</span><span class="count">&nbsp;</span></a><div class="area_theater_list nano has-scrollbar"><ul class="content scroll-y" tabindex="-1" style="right: -21px;"></ul><div class="pane pane-y" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-y" style="height: 50px;"></div></div><div class="pane pane-x" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-x" style="width: 50px;"></div></div></div></li></ul>
                                            </div>
                                            <div class="theater-cgv-list nano has-scrollbar" id="theater_cgv_list">
                                                <ul class="content scroll-y" tabindex="-1" style="right: -21px;"></ul>
                                            <div class="pane pane-y" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-y" style="height: 50px;"></div></div><div class="pane pane-x" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-x" style="width: 50px;"></div></div></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- DATE 섹션 -->
                            <div class="section section-date">
                                <div class="col-head" id="skip_date_list">
                                    <h3 class="sreader">날짜</h3>
                                    <a href="#" onclick="return false;" class="skip_to_something">날짜 건너뛰기</a>
                                </div>
                                <div class="col-body" style="height: 560px;">
                                    <!-- 날짜선택 -->
                                    <div class="date-list nano has-scrollbar has-scrollbar-y" id="date_list">
                                        <ul class="content scroll-y" tabindex="-1" style="right: -21px;"><div><li class="month dimmed"><div><span class="year">2020</span><span class="month">1</span><div></div></div></li><li data-index="0" date="20200110" class="day"><a href="#" onclick="return false;"><span class="dayweek">금</span><span class="day">10</span><span class="sreader"></span></a></li><li data-index="1" date="20200111" class="day day-sat"><a href="#" onclick="return false;"><span class="dayweek">토</span><span class="day">11</span><span class="sreader"></span></a></li><li data-index="2" date="20200112" class="day day-sun"><a href="#" onclick="return false;"><span class="dayweek">일</span><span class="day">12</span><span class="sreader"></span></a></li><li data-index="3" date="20200113" class="day"><a href="#" onclick="return false;"><span class="dayweek">월</span><span class="day">13</span><span class="sreader"></span></a></li><li data-index="4" date="20200114" class="day"><a href="#" onclick="return false;"><span class="dayweek">화</span><span class="day">14</span><span class="sreader"></span></a></li><li data-index="5" date="20200115" class="day"><a href="#" onclick="return false;"><span class="dayweek">수</span><span class="day">15</span><span class="sreader"></span></a></li><li data-index="6" date="20200116" class="day"><a href="#" onclick="return false;"><span class="dayweek">목</span><span class="day">16</span><span class="sreader"></span></a></li><li data-index="7" date="20200117" class="day"><a href="#" onclick="return false;"><span class="dayweek">금</span><span class="day">17</span><span class="sreader"></span></a></li><li data-index="8" date="20200118" class="day day-sat"><a href="#" onclick="return false;"><span class="dayweek">토</span><span class="day">18</span><span class="sreader"></span></a></li><li data-index="9" date="20200119" class="day day-sun"><a href="#" onclick="return false;"><span class="dayweek">일</span><span class="day">19</span><span class="sreader"></span></a></li><li data-index="10" date="20200120" class="day"><a href="#" onclick="return false;"><span class="dayweek">월</span><span class="day">20</span><span class="sreader"></span></a></li><li data-index="11" date="20200121" class="day"><a href="#" onclick="return false;"><span class="dayweek">화</span><span class="day">21</span><span class="sreader"></span></a></li><li data-index="12" date="20200122" class="day"><a href="#" onclick="return false;"><span class="dayweek">수</span><span class="day">22</span><span class="sreader"></span></a></li><li data-index="13" date="20200123" class="day"><a href="#" onclick="return false;"><span class="dayweek">목</span><span class="day">23</span><span class="sreader"></span></a></li><li data-index="14" date="20200124" class="day"><a href="#" onclick="return false;"><span class="dayweek">금</span><span class="day">24</span><span class="sreader"></span></a></li><li data-index="15" date="20200125" class="day day-sat"><a href="#" onclick="return false;"><span class="dayweek">토</span><span class="day">25</span><span class="sreader"></span></a></li><li data-index="16" date="20200126" class="day day-sun"><a href="#" onclick="return false;"><span class="dayweek">일</span><span class="day">26</span><span class="sreader"></span></a></li><li data-index="17" date="20200127" class="day"><a href="#" onclick="return false;"><span class="dayweek">월</span><span class="day">27</span><span class="sreader"></span></a></li><li data-index="18" date="20200128" class="day"><a href="#" onclick="return false;"><span class="dayweek">화</span><span class="day">28</span><span class="sreader"></span></a></li><li class="month dimmed"><div><span class="year">2020</span><span class="month">2</span><div></div></div></li><li data-index="19" date="20200203" class="day"><a href="#" onclick="return false;"><span class="dayweek">월</span><span class="day">3</span><span class="sreader"></span></a></li></div></ul>
                                    <div class="pane pane-y" style="display: block; opacity: 1; visibility: visible;"><div class="slider slider-y" style="height: 50px; top: 0px;"></div></div><div class="pane pane-x" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-x" style="width: 50px;"></div></div></div>
                                </div>
                            </div>
                            <!-- TIME 섹션 -->
                            <div class="section section-time">
                                <div class="col-head" id="skip_time_list">
                                    <h3 class="sreader">시간</h3>
                                    <a href="#" class="skip_to_something" onclick="skipToSomething('tnb_step_btn_right');return false;">시간선택 건너뛰기</a>
                                </div>
                                <div class="col-body" style="height: 560px;">
                                    <!-- 시간선택 -->
                                    <div class="time-option">
                                        <span class="morning">조조</span><span class="night">심야</span>
                                    </div>
                                    <div class="placeholder">영화, 극장, 날짜를 선택해주세요.</div>
                                </div>
                            </div>
                        </div>
                        <!-- //step1 -->
                        <!-- step2 -->
                        <div class="step step2" style="display: none;">
                            <!-- SEAT 섹션 -->
                            <div class="section section-seat">
                                <div class="col-head" id="skip_seat_list">
                                    <h3 class="sreader">
                                        인원 / 좌석
                                        <span class="sreader">인원/좌석선택은 레이어로 서비스 되기 때문에 가상커서를 해지(Ctrl+Shift+F12)한 후 사용합니다.</span>
                                    </h3>
                                    <a href="#" class="skip_to_something" onclick="skipToSomething('tnb_step_btn_right');return false;">인원/좌석선택 건너뛰기</a>
                                </div>
                                <div class="col-body">
                                    <div class="person_screen">
                                        <!-- NUMBEROFPEOPLE 섹션 -->
                                        <div class="section section-numberofpeople">
                                            <div class="col-body">
        
                                                <!-- 인접좌석 -->
                                                <!-- <div class="adjacent_seat_wrap">
                                                    <div class="adjacent_seat" id="adjacent_seat">
                                                        <span class="title">좌석 붙임 설정</span>
                                                        <div class="block_wrap">
                                                            <span class="seat_block block1"><label><input type="radio" name="adjacent_seat" onclick="ftSetAdjacentSeatSelector(1, this);" disabled><span class="box"></span><span class="sreader">1석 좌석붙임</span></label></span>
                                                            <span class="seat_block block2"><label><input type="radio" name="adjacent_seat" onclick="ftSetAdjacentSeatSelector(2, this);" disabled><span class="box"></span><span class="box"></span><span class="sreader">2석 좌석붙임</span></label></span>
                                                            <span class="seat_block block3"><label><input type="radio" name="adjacent_seat" onclick="ftSetAdjacentSeatSelector(3, this);" disabled><span class="box"></span><span class="box"></span><span class="box"></span><span class="sreader">3석 좌석붙임</span></label></span>
                                                            <span class="seat_block block4"><label><input type="radio" name="adjacent_seat" onclick="ftSetAdjacentSeatSelector(4, this);" disabled><span class="box"></span><span class="box"></span><span class="box"></span><span class="box"></span><span class="sreader">4석 좌석붙임</span></label></span>
                                                        </div>
                                                    </div>
                                                </div> -->
        
                                                <div id="nopContainer" class="numberofpeople-select">
                                                    
                                                    <div class="group millitary" id="nop_group_millitary">
                                                        <span class="title">군인</span>
                                                        <ul>
                                                            <li data-count="0" class="selected"><a href="#" onclick="return false;"><span class="sreader mod">일반</span>0<span class="sreader">명</span></a></li>
                                                            <li data-count="1"><a href="#" onclick="return false;"><span class="sreader mod">일반</span>1<span class="sreader">명</span></a></li>
                                                            <li data-count="2"><a href="#" onclick="return false;"><span class="sreader mod">일반</span>2<span class="sreader">명</span></a></li>
                                                            <li data-count="3"><a href="#" onclick="return false;"><span class="sreader mod">일반</span>3<span class="sreader">명</span></a></li>
                                                            <li data-count="4"><a href="#" onclick="return false;"><span class="sreader mod">일반</span>4<span class="sreader">명</span></a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="group adult" id="nop_group_adult">
                                                        <span class="title">일반</span>
                                                        <ul>
                                                            <li data-count="0" class="selected"><a href="#" onclick="return false;"><span class="sreader mod">일반</span>0<span class="sreader">명</span></a></li>
                                                            <li data-count="1"><a href="#" onclick="return false;"><span class="sreader mod">일반</span>1<span class="sreader">명</span></a></li>
                                                            <li data-count="2"><a href="#" onclick="return false;"><span class="sreader mod">일반</span>2<span class="sreader">명</span></a></li>
                                                            <li data-count="3"><a href="#" onclick="return false;"><span class="sreader mod">일반</span>3<span class="sreader">명</span></a></li>
                                                            <li data-count="4"><a href="#" onclick="return false;"><span class="sreader mod">일반</span>4<span class="sreader">명</span></a></li>
                                                            <li data-count="5"><a href="#" onclick="return false;"><span class="sreader mod">일반</span>5<span class="sreader">명</span></a></li>
                                                            <li data-count="6"><a href="#" onclick="return false;"><span class="sreader mod">일반</span>6<span class="sreader">명</span></a></li>
                                                            <li data-count="7"><a href="#" onclick="return false;"><span class="sreader mod">일반</span>7<span class="sreader">명</span></a></li>
                                                            <li data-count="8"><a href="#" onclick="return false;"><span class="sreader mod">일반</span>8<span class="sreader">명</span></a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="group youth" id="nop_group_youth">
                                                        <span class="title">청소년</span>
                                                        <ul>
                                                            <li data-count="0" class="selected"><a href="#" onclick="return false;"><span class="sreader mod">청소년</span>0<span class="sreader">명</span></a></li>
                                                            <li data-count="1"><a href="#" onclick="return false;"><span class="sreader mod">청소년</span>1<span class="sreader">명</span></a></li>
                                                            <li data-count="2"><a href="#" onclick="return false;"><span class="sreader mod">청소년</span>2<span class="sreader">명</span></a></li>
                                                            <li data-count="3"><a href="#" onclick="return false;"><span class="sreader mod">청소년</span>3<span class="sreader">명</span></a></li>
                                                            <li data-count="4"><a href="#" onclick="return false;"><span class="sreader mod">청소년</span>4<span class="sreader">명</span></a></li>
                                                            <li data-count="5"><a href="#" onclick="return false;"><span class="sreader mod">청소년</span>5<span class="sreader">명</span></a></li>
                                                            <li data-count="6"><a href="#" onclick="return false;"><span class="sreader mod">청소년</span>6<span class="sreader">명</span></a></li>
                                                            <li data-count="7"><a href="#" onclick="return false;"><span class="sreader mod">청소년</span>7<span class="sreader">명</span></a></li>
                                                            <li data-count="8"><a href="#" onclick="return false;"><span class="sreader mod">청소년</span>8<span class="sreader">명</span></a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="group child" id="nop_group_child">
                                                        <span class="title">어린이</span>
                                                        <ul>
                                                            <li data-count="0" class="selected"><a href="#" onclick="return false;"><span class="sreader mod">어린이</span>0<span class="sreader">명</span></a></li>
                                                            <li data-count="1"><a href="#" onclick="return false;"><span class="sreader mod">어린이</span>1<span class="sreader">명</span></a></li>
                                                            <li data-count="2"><a href="#" onclick="return false;"><span class="sreader mod">어린이</span>2<span class="sreader">명</span></a></li>
                                                            <li data-count="3"><a href="#" onclick="return false;"><span class="sreader mod">어린이</span>3<span class="sreader">명</span></a></li>
                                                            <li data-count="4"><a href="#" onclick="return false;"><span class="sreader mod">어린이</span>4<span class="sreader">명</span></a></li>
                                                            <li data-count="5"><a href="#" onclick="return false;"><span class="sreader mod">어린이</span>5<span class="sreader">명</span></a></li>
                                                            <li data-count="6"><a href="#" onclick="return false;"><span class="sreader mod">어린이</span>6<span class="sreader">명</span></a></li>
                                                            <li data-count="7"><a href="#" onclick="return false;"><span class="sreader mod">어린이</span>7<span class="sreader">명</span></a></li>
                                                            <li data-count="8"><a href="#" onclick="return false;"><span class="sreader mod">어린이</span>8<span class="sreader">명</span></a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="group special hide" id="nop_group_sepcial">
                                                        <span class="title">우대</span>
                                                        <ul>
                                                            <li data-count="0" class="selected"><a href="#" onclick="return false;"><span class="sreader mod">우대</span>0<span class="sreader">명</span></a></li>
                                                            <li data-count="1"><a href="#" onclick="return false;"><span class="sreader mod">우대</span>1<span class="sreader">명</span></a></li>
                                                            <li data-count="2"><a href="#" onclick="return false;"><span class="sreader mod">우대</span>2<span class="sreader">명</span></a></li>
                                                            <li data-count="3"><a href="#" onclick="return false;"><span class="sreader mod">우대</span>3<span class="sreader">명</span></a></li>
                                                            <li data-count="4"><a href="#" onclick="return false;"><span class="sreader mod">우대</span>4<span class="sreader">명</span></a></li>
                                                            <li data-count="5"><a href="#" onclick="return false;"><span class="sreader mod">우대</span>5<span class="sreader">명</span></a></li>
                                                            <li data-count="6"><a href="#" onclick="return false;"><span class="sreader mod">우대</span>6<span class="sreader">명</span></a></li>
                                                            <li data-count="7"><a href="#" onclick="return false;"><span class="sreader mod">우대</span>7<span class="sreader">명</span></a></li>
                                                            <li data-count="8"><a href="#" onclick="return false;"><span class="sreader mod">우대</span>8<span class="sreader">명</span></a></li>
                                                        </ul>
                                                    </div> 
                                                    
                                                </div>
                                            </div>
                                        </div>
                                        <!-- NUMBEROFPEOPLE 섹션 -->
                                        <div class="section section-screen-select">
                                            <!-- UI 변경으로 삭제 
                                            <div class="title">선택하신 상영관<span>/</span>시간</div>
                                            -->
                                            <!-- UI 변경
                                            <div class="screen-time">
                                                <span class="screen"><b></b></span>
                                                <span class="seats seat_all"></span>
                                                <span class="time"></span>
                                                <span class="seats seat_remain"></span>
                                            </div>
                                            -->
                                            <div id="user-select-info">
                                                <p class="theater-info">
                                                    <span class="site">CGV 천왕성</span>
                                                    <span class="screen">11층 8관 [Business]</span>
                                                    <span class="seatNum">남은좌석  <b class="restNum">100</b>/<b class="totalNum">900</b></span>
                                                </p>
                                                <p class="playYMD-info"><b>2017.04.10</b><b class="exe">(월)</b><b>00:00 - 00:00</b></p>
                                            </div>
                                        </div>
                                        <a class="change_time_btn" href="#" onmousedown="if(event.stopPropagation){event.stopPropagation();}return false;" onclick="ticketStep2TimeSelectPopupShow();return false;"><span>상영시간 변경하기</span></a>
                                    </div>
                                    <!-- THEATER -->
                                    <div class="theater_minimap">
                                        <div class="theater nano has-scrollbar" id="seat_minimap_nano">
                                            <div class="content" tabindex="-1" style="right: -21px; bottom: -21px;">
                                                <div class="screen" title="SCREEN"><span class="text"></span></div>
                                                <div class="seats" id="seats_list"></div>
                                            </div>
                                        <div class="pane pane-y" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-y" style="height: 50px;"></div></div><div class="pane pane-x" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-x" style="width: 50px;"></div></div></div>
                                        <div class="minimap opened" id="minimap">
                                            <div class="mini_header" onclick="ftSeatMinimapToggle();event.preventDefault();">Minimap<span></span></div>
                                            <div class="mini_container">
                                                <div class="mini_screen">SCREEN</div>
                                                <div class="mini_seats"></div>
                                                <div class="mini_exits"></div>
                                            </div>
                                            <div class="mini_region"><span></span></div>
                                        </div>
                                        <div class="legend">
                                            <div class="buttons">
                                                <a class="btn-zoom" id="seat_zoom_btn" href="#" onclick="ts2SeatZoomClickListener();return false;">크게보기</a>
                                            </div>
                                            <div class="seat-icon-desc">
                                                <span class="icon selected"><span class="icon"></span>선택</span>
                                                <span class="icon reserved"><span class="icon"></span>예매완료</span>
                                                <span class="icon notavail"><span class="icon"></span>선택불가</span>
                                            </div>
                                            <div class="seat-type">
                                                <span class="radiobutton type-prime" title="최적의 영상과 사운드로 영화를 감상할 수 있는 CGV 추천좌석"><span class="icon"></span>Prime Zone</span>
                                                <span class="radiobutton type-normal"><span class="icon"></span>일반석</span>
                                                <span class="radiobutton type-couple" title="연인, 가족, 친구를 위한 둘만의 좌석"><span class="icon"></span>커플석</span>
                                                <span class="radiobutton type-handicap"><span class="icon"></span>장애인석</span>
                                                <span class="radiobutton type-sweetbox" title="국내 최대 넓이의 프리미엄 커플좌석"><span class="icon"></span>SWEETBOX</span>
                                                <span class="radiobutton type-veatbox" title="음향 진동 시스템이 적용된 특별좌석"><span class="icon"></span>VEATBOX</span>
                                                <span class="radiobutton type-4d" title="바람, 진동 등 오감으로 영화 관람, 4DX"><span class="icon"></span>4DX</span>
                                                <span class="radiobutton type-widebox" title="일반석보다 더 넓고 편안한 좌석"><span class="icon"></span>WIDEBOX</span>
                                                <span class="radiobutton type-cinekids last" title="365일 어린이 전용 상영관"><span class="icon"></span>CINEKIDS</span>
                                            </div>
                                        </div>
                                        <div class="mouse_block"></div>
                                    </div>
                                </div>
                            </div>
                            <a class="btn-refresh" href="#" onclick="ftResetAllSeats(true);return false;">
                                <span>다시하기</span>
                            </a>
                            <!-- 시간표 변경 -->
                            <div class="section_time_popup" id="section_time_popup">
                                <div class="canvas">
                                    <div class="sprite">
                                        <div class="time-option">
                                            <span class="morning">조조</span><span class="night">심야</span>
                                        </div>
                                        <div class="time-list nano has-scrollbar" id="time_popup_list">
                                            <div class="content scroll-y" tabindex="-1" style="right: -21px;"></div>
                                        <div class="pane pane-y" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-y" style="height: 50px;"></div></div><div class="pane pane-x" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-x" style="width: 50px;"></div></div></div>
                                    </div>
                                    <div class="buttons">
                                        <a href="#" onclick="return false;" class="btn_ok"><span>확인</span></a>
                                        <a href="#" onclick="return false;" class="btn_cancel"><span>취소</span></a>
                                        <a href="#" onclick="return false;" class="sreader" onfocus="ticketStep2TimeSelectPopupHide();">시간표 변경 팝업 닫기</a>
                                    </div>
                                </div>
                                <div class="corner"></div>
                            </div>
                            <!-- 시간표 변경 -->
                        </div>
                        <!-- //step2 -->
                        <!-- step3 -->
                        <div class="step step3" style="display: none;">
                        </div>
                        <!-- //step3 -->
                        <!-- step4 -->
                        <div class="step step4" style="display: none;">
                        </div>
                        <!-- //step4 -->
                        <noscript>
                            <div class="noscript"><span>현재 사용중인 환경에서는 스크립트 동작이 활성화되지 않아 예매 서비스를 이용하실 수 없습니다.<br/>예매 서비스를 이용하기 위해서는 <a href='http://www.enable-javascript.com/ko/' rel='nofollow'>스크립트 동작을 활성화</a> 해주세요.</span></div>
                        </noscript>
                    </div>
                    <!-- 팝업 -->
                    <div class="popups">                
                        <!-- Popup - 로그인 --> 
        <div class="ft_layer_popup popup_login ko" style="display:none;">
            <!--<div class="hd">
                <div class="title_area">
                    
                    <h4>CGV회원 로그인</h4>
                    
                    <span class="sreader">빠른예매는 레이어로 서비스 되기 때문에 가상커서를 해지(Ctrl+Shift+F12)한 후 사용합니다.</span>
                </div>
                <a href="#" onclick="return false;" class="layer_close">닫기</a>
            </div>
            <div class="bd">
                <div class="login_form">
                    <div class="input_wrap id">
                        <label for="txtUserId" class="blind">아이디</label>
                        <input name="txtUserId" id="txtUserId" maxlength="25" type="text">
                    </div>
                    <div class="input_wrap password">
                        <label for="txtPassword" class="blind">비밀번호</label>
                        <input name="txtPassword" id="txtPassword" maxlength="25" type="password">
                    </div>
                    <button type="button" title="로그인" class="btn_login"><span>로그인</span></button>       
                </div>
                <div class="linkbar">
                    
                    <a href="#" onclick="return false;" class="join_member">회원가입</a>
                    <a href="#" onclick="return false;" class="join_guest">비회원 예매</a>
                    <a href="#" onclick="return false;" class="id_find">아이디찾기</a>
                    <a href="#" onclick="return false;" class="pw_find">비밀번호찾기</a>    
                    
                </div>
            </div>-->
        </div>
        <!-- //Popup -->
        
        <!-- Popup - 얼럿 --> 
        <div class="ft_layer_popup popup_alert original ko" style="">
            <div class="hd">
                <div class="title_area">
                    <h4 class="alert_title">얼럿타이틀</h4>
                    <span class="sreader">빠른예매는 레이어로 서비스 되기 때문에 가상커서를 해지(Ctrl+Shift+F12)한 후 사용합니다.</span>
                </div>
                <a href="#" onclick="return false;" class="layer_close">닫기</a>
            </div><!-- //hd -->
            <div class="bd">
                <p class="alert_msg">얼럿메세지</p>
            </div><!-- //bd -->
            <div class="ft">
                <a title="확인" href="#" onclick="return false;" class="btn btn_ok"><span>확인</span></a>
                <a title="취소" href="#" onclick="return false;" class="btn btn_white btn_close"><span>취소</span></a>
            </div><!-- //ft -->     
        </div>
        <!-- //Popup -->
        
        <!-- Popup - guide --> 
        <div class="ft_layer_popup popup_guide ko" style="display:none;">
            <div class="guide_hd">
                <h4><span class="blind">CGV 예매가이드</span></h4>
                <p><span class="blind">새롭게 바뀐 CGV 예매 서비스를 직접 확인해보세요!</span></p>
            </div><!-- //hd -->
            <div class="guide_bd">
                <div class="tab_menu clfix">
                    <ul>
                        <li class="a first"><a href="#none" onclick="return false;" class="on" title="STEP 1 영화, 극장, 날짜, 시간 선택"><span><var><span class="blind_txt tab1">STEP 1 영화, 극장, 날짜, 시간 선택</span></var></span></a></li>
                        <li class="b"><a href="#none" onclick="return false;" title="STEP 2 인원, 좌석선택"><span><var><span class="blind_txt tab2">STEP 2 인원, 좌석선택</span></var></span></a></li>
                        <li class="c"><a href="#none" onclick="return false;" title="STEP 3 결제하기"><span><var><span class="blind_txt tab3">STEP 3 결제하기</span></var></span></a></li>
                    </ul>
                </div>
                <div class="content">
                    <div class="guide_step01">
                        <p class="notice"><span class="blind">원하시는 영화, 극장, 날짜, 시간 정보를 선택해주세요!</span></p>
                        <div class="guide_btn">
                            <p><span class="question blind_txt">물음표</span><span class="info">를 오버시 해당 설명을 볼 수 있습니다.</span></p>
                            <ul>
                                <li class="btn01">
                                    <a href="#" onclick="return false;" class="btnVisInfo blind_txt">물음표-새롭게 바뀐 CGV 예매서비스안내</a>
                                    <p class="infoBx">
                                        <span class="top"></span>
                                        <span class="middle">전체 화면구성이 세로형으로 변경되어 더 빠르고 쉽게 정보 선택이 가능해졌어요!</span>
                                        <span class="bottom"></span>
                                    </p>
                                </li>
                                <li class="btn02">
                                    <a href="#" onclick="return false;" class="btnVisInfo blind_txt">물음표-영화분류안내</a>
                                    <p class="infoBx">
                                    <span class="top"></span>
                                    <span class="middle">무비꼴라쥬, 특별관 영화를 빠르고 편리하게 분류하여 확인할 수 있어요!</span>
                                    <span class="bottom"></span>
                                    </p>
                                </li>
                                <!--
                                <li class="btn03">
                                    <a href="#" onclick="return false;" class="btnVisInfo blind_txt">물음표-선택할 수 없는 영화안내</a>
                                    <p class="infoBx">
                                    <span class="top"></span>
                                    <span class="middle">선택 불가능한 정보는 장애인 차별금지법에 따라 패턴 디자인을 적용하여 모든 사용자가 쉽게 구분할 수 있어요!</span>
                                    <span class="bottom"></span>
                                    </p>
                                </li>
                                -->
                                <li class="btn04">
                                    <a href="#" onclick="return false;" class="btnVisInfo blind_txt">물음표-자주가는 CGV안내</a>
                                    <p class="infoBx">
                                    <span class="top"></span>
                                    <span class="middle">자주 가는 극장 설정 기능을 통해 보다 빠른 극장 선택이 가능해졌어요!</span>
                                    <span class="bottom"></span>
                                    </p>
                                </li>
                                <li class="btn05">
                                    <a href="#" onclick="return false;" class="btnVisInfo blind_txt">물음표-영문 빠른예매</a>
                                    <p class="infoBx">
                                    <span class="top"></span>
                                    <span class="middle">영문 버전 빠른예매를 통해 다국적 사용자들도 쉽게 예매 서비스를 이용할 수 있어요!</span>
                                    <span class="bottom"></span>
                                    </p>
                                </li>
                                <li class="btn06">
                                    <a href="#" onclick="return false;" class="btnVisInfo blind_txt">물음표-조조/심야구분안내</a>
                                    <p class="infoBx">
                                    <span class="top"></span>
                                    <span class="middle">조조/심야 영화 시간에 대해 쉽게 확인할 수 있어요!</span>
                                    <span class="bottom"></span>
                                    </p>
                                </li>
                                <li class="btn07">
                                    <a href="#" onclick="return false;" class="btnVisInfo blind_txt">물음표-새롭게 바뀐 CGV 예매서비스안내</a>
                                    <p class="infoBx">
                                    <span class="top"></span>
                                    <span class="middle">선택한 예매 정보 및 나의 예매 진행 단계를 한 눈에 파악할 수 있어요!</span>
                                    <span class="bottom"></span>
                                    </p>
                                </li>
                            </ul>
                        </div>
                    </div><!--//guide_step01-->
                    <div class="guide_step02">
                        <p class="notice"><span class="blind">예매 인원수에 맞게 원하시는 자리 를 선택해주세요!</span></p>
                        <div class="guide_btn">
                            <p><span class="question blind_txt">물음표</span><span class="info">를 오버시 해당 설명을 볼 수 있습니다.</span></p>
                            <ul>
                                <li class="btn01">
                                    <a href="#" onclick="return false;" title="" class="btnVisInfo blind_txt">물음표-상영관/시간 확인 및 변경안내</a>
                                    <p class="infoBx">
                                        <span class="top"></span>
                                        <span class="middle">선택한 상영관/시간 확인 및 변경 기능이 보다 쉽고 눈에 띄게 변경되었어요!</span>
                                        <span class="bottom"></span>
                                    </p>
                                </li>
                                <li class="btn02">
                                    <a href="#" onclick="return false;" title="" class="btnVisInfo blind_txt">물음표-다양한 좌석도 보기안내</a>
                                    <p class="infoBx">
                                        <span class="top"></span>
                                        <span class="middle">좌석도 크게 보기 기능으로 시력이 좋지 않으신 분들도 쉽게 예매가 가능해졌어요!</span>
                                        <span class="bottom"></span>
                                    </p>
                                </li>
                            </ul>
                        </div>
                    </div><!--//guide_step02-->
                    <div class="guide_step03">
                        <p class="notice"><span class="blind">원하시는 할인 및 결제수단을 이용하여 예매를 완료해주세요!</span></p>
                        <div class="guide_btn">
                            <p><span class="question blind_txt">물음표</span><span class="info">를 오버시 해당 설명을 볼 수 있습니다.</span></p>
                            <ul>
                                <li class="btn01">
                                    <a href="#" onclick="return false;" title="" class="btnVisInfo blind_txt">물음표-할인 및 결제수단안내</a>
                                    <p class="infoBx">
                                        <span class="top"></span>
                                        <span class="middle">전체 화면구성이 할인수단과 결제수단 영역으로 나뉘어 한 눈에 보기 편리해졌어요!</span>
                                        <span class="bottom"></span>
                                    </p>
                                </li>
                                <li class="btn02">
                                    <a href="#" onclick="return false;" title="" class="btnVisInfo blind_txt">물음표-CGV영화관람권,할인쿠폰, CJ ONE포인트 안내</a>
                                    <p class="infoBx">
                                        <span class="top"></span>
                                        <span class="middle">주요 할인수단인 CGV영화관람권, CGV할인쿠폰, CJ ONE 포인트의 바로 조회 기능을 통해 보다 빠른 예매가 가능해졌어요!</span>
                                        <span class="bottom"></span>
                                    </p>
                                </li>
                                <li class="btn03">
                                    <a href="#" onclick="return false;" title="" class="btnVisInfo blind_txt">물음표-할인수단별 선택안내</a>
                                    <p class="infoBx">
                                        <span class="top"></span>
                                        <span class="middle">다양한 CGV의 할인수단을 보기 쉽게 그룹화하여 원하는 할인수단만 선택해 이용하실 수 있어요!</span>
                                        <span class="bottom"></span>
                                    </p>
                                </li>
                                <li class="btn04">
                                    <a href="#" onclick="return false;" title="" class="btnVisInfo blind_txt">물음표-결제정보안내</a>
                                    <p class="infoBx">
                                        <span class="top"></span>
                                        <span class="middle">내가 적용한 할인 및 결제수단 내역을 한 눈에 쉽게 확인 가능해요!</span>
                                        <span class="bottom"></span>
                                    </p>
                                </li>
                                <li class="btn05">
                                    <a href="#" onclick="return false;" title="" class="btnVisInfo blind_txt">물음표-최신할인정보안내</a>
                                    <p class="infoBx">
                                        <span class="top"></span>
                                        <span class="middle">다양한 CGV결제수단의 최신 할인 정보를 쉽게 모아 볼 수 있어요!</span>
                                        <span class="bottom"></span>
                                    </p>
                                </li>
                            </ul>
                        </div>
                    </div><!--//guide_step03-->
                </div>
            </div><!-- //bd -->  
            <div class="ft">
                <a title="닫기" href="#" onclick="return false;" class="btn btn_white btn_close"><span>닫기</span></a>
                <a title="닫기" href="#" onclick="return false;" class="layer_close">닫기</a>
            </div><!-- //ft -->  
        </div>
        <!-- //Popup -->
        
                    </div>
                    <!-- //팝업 -->
                </div>
                <!-- //빠른예매 -->
            </div>
            <!-- //컨텐츠 -->
            
            <div id="ticket_tnb" class="tnb_container">
                <div class="tnb step1">
                    <!-- btn-left -->
                    <a class="btn-left" href="#" onclick="OnTnbLeftClick(); return false;" title="영화선택">이전단계로 이동</a>
                    <div class="info movie">
                        <span class="movie_poster"><img src="" alt="영화 포스터" style="display: none;"></span>
                        <div class="row movie_title colspan2" style="display: none;">
                            <span class="data letter-spacing-min ellipsis-line2"><a href="#" target="_blank" onmousedown="javascript:logClick('SUMMARY/영화상세보기');">영화정보 상세보기</a></span>
                        </div>
                        <div class="row movie_type" style="display: none;">
                            <span class="data ellipsis-line1"></span>
                        </div>
                        <div class="row movie_rating" style="display: none;">
                            <span class="data" title=""></span>
                        </div>
                        <div class="placeholder" title="영화선택"></div>
                    </div>
                    <div class="info theater">
                        <div class="row name" style="display: none;">
                            <span class="header">극장</span>
                            <span class="data letter-spacing-min ellipsis-line1"><a href="#" target="_blank" onmousedown="javascript:logClick('SUMMARY/극장상세보기');"><span class="sreader">극장정보 상세보기</span></a></span>
                        </div>
                        <div class="row date" style="display: none;">
                            <span class="header">일시</span>
                            <span class="data"></span>
                        </div>
                        <div class="row screen" style="display: none;">
                            <span class="header">상영관</span>
                            <span class="data"></span>
                        </div>
                        <div class="row number" style="display: none;">
                            <span class="header">인원</span>
                            <span class="data"></span>
                        </div>
                        <div class="placeholder" title="극장선택"></div>
                    </div>
                    <div class="info seat">
                        <div class="row seat_name">
                            <span class="header">좌석명</span>
                            <span class="data">일반석</span>
                        </div>
                        <div class="row seat_no colspan3">
                            <span class="header">좌석번호</span>
                            <span class="data ellipsis-line3"></span>
                        </div>
                        <div class="placeholder" title="좌석선택"></div>
                    </div>
                    <div class="info payment-ticket">
                        <div class="row payment-millitary">
                            <span class="header">군인</span>
                            <span class="data"><span class="price"></span>원 x <span class="quantity"></span></span>
                        </div>
                        <div class="row payment-adult">
                            <span class="header">일반</span>
                            <span class="data"><span class="price"></span>원 x <span class="quantity"></span></span>
                        </div>
                        <div class="row payment-youth">
                            <span class="header">청소년</span>
                            <span class="data"><span class="price"></span>원 x <span class="quantity"></span></span>
                        </div>
                        <div class="row payment-child">
                            <span class="header">어린이</span>
                            <span class="data"><span class="price"></span>원 x <span class="quantity"></span></span>
                        </div>						
                        <div class="row payment-special">
                            <span class="header">우대</span>
                            <span class="data"><span class="price"></span>원 x <span class="quantity"></span></span>
                        </div>
                        <div class="row payment-final">
                            <span class="header">총금액</span>
                            <span class="data"><span class="price">0</span><span class="won">원</span></span>
                        </div>
                    </div>
                    <div class="info path">
                        <div class="row colspan4">
                            <span class="path-step2" title="좌석선택">&nbsp;</span>
                            <span class="path-step3" title="결제">&nbsp;</span>
                        </div>
                    </div>
                    <!-- btn-right -->
                    <div class="tnb_step_btn_right_before" id="tnb_step_btn_right_before"></div>
                    <a class="btn-right" id="tnb_step_btn_right" href="#" onclick="OnTnbRightClick(); return false;" title="좌석선택">다음단계로 이동 - 레이어로 서비스 되기 때문에 가상커서를 해지(Ctrl+Shift+F12)한 후 사용합니다.</a>
                </div>
            </div>
        
            <!-- bottom banner -->
            <div class="banner" id="ticket_bottom_banner" style="padding-top: 0px;">
                <a target="_blank" title="새창" href="http://ad.cgv.co.kr/click/CGV/CGV_201401/RIA@B_ticketing?ads_id=42165&amp;creative_id=58258&amp;click_id=76951&amp;event=" style="background-color: rgb(255, 255, 255);"><span style="sreader">?댁?吏??</span><img src="http://adimg.cgv.co.kr/images/201912/SecretZoo/0110_996x140.jpg" alt="?댁?吏??" onload="ticketNeedResize();" style="width:996px;height:140px"></a>
            </div>
            
            <!-- wing banner -->
            <div id="ticket_banner" class="ticket_banner">
                <div><div class="AdvertiseCon" id="RIA_Skin_Ticketing_L" style="width: 160px; height: 300px; background: none; position: absolute; top: 75px; left: -164px; overflow: hidden;"><a href="http://ad.cgv.co.kr/click/CGV/CGV_201608/RIA@RIA_Skin_Ticketing?ads_id=28597&amp;creative_id=35792&amp;click_id=47107&amp;event=" target="_blank" style="top: 0px;"><img src="http://adimg.cgv.co.kr/images/201709/house/0929_160X300.jpg" width="160" height="300" alt="광고-CGV 기프트 카드" style="width: 160px; height: 300px;"></a></div><div class="AdvertiseCon" id="RIA_Skin_Ticketing_R" style="width: 160px; height: 300px; background: none; position: absolute; top: 75px; left: 1000px; overflow: hidden;"><a href="http://ad.cgv.co.kr/click/CGV/CGV_201608/RIA@RIA_Skin_Ticketing?ads_id=28597&amp;creative_id=35792&amp;click_id=47107&amp;event=" target="_blank" style="top: 0px;"><img src="http://adimg.cgv.co.kr/images/201709/house/0929_160X300.jpg" width="160" height="300" border="1" alt="광고-CGV 기프트 카드" style="width: 160px; height: 300px;"></a></div></div>
            </div>
            
        </div>
        
        
        
        <div class="blackscreen" style="display:none;" id="blackscreen"></div>
        <!-- loading -->
        <div class="loading" id="ticket_loading" style="display: none;">
            <div class="dimm"></div>
            <p class="loadWrap"><img src="http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/common/ajax-loader-w.gif" alt="로딩 애니메이션"></p>
        </div>
        <!-- iframe -->
        <iframe id="proxy_iframe" src="http://www.cgv.co.kr/Ticket/Proxy.html" scrolling="no" frameborder="0" width="0" height="0" style="display:none;" title="데이터 연동 숨김 프레임"></iframe>
        <iframe src="/CGV2011/RIA/RR999.aspx" name="rsvDataframe" id="rsvDataframe" scrolling="no" frameborder="0" width="0" height="0" style="display:none;" title="데이터 연동 프레임"></iframe>
        <!-- javascript 상위프레임에 있는 스크립트를 사용-->
        <!--<script type="text/javascript" src="http://img.cgv.co.kr/common/js/insightIS.js"></script>-->
        
        </body></html>
    </iframe>

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
