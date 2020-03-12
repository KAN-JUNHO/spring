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
<body class="">

    <form name="ssologinfrm" action="https://www.cgv.co.kr/user/login/login-sso.aspx" method="post">
        <input type="hidden" id="cjssoq" name="cjssoq" />
        <input type="hidden" name="returnURL" value="/movies/default.aspx" />
    </form>
    <script type="text/javascript">
        function cjsso() {
            if ((typeof _cjssoEncData) != "undefined" && _cjssoEncData != "") {
                document.getElementById("cjssoq").value = _cjssoEncData;
                document.ssologinfrm.submit();
            }
        }

        cjsso();
    </script>

<div class="skipnaiv">
	<a href="#contents" id="skipHeader">메인 컨텐츠 바로가기</a>
</div>
<div id="cgvwrap">
    <div class="cgv-ad-wrap" id="cgv_main_ad">
        <div id="TopBarWrapper" class="sect-head-ad">
            <div class="top_extend_ad_wrap">
                <div class="adreduce" id="adReduce">                    
                    <iframe src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@TopBar_EX" width="100%" height="80" title="" frameborder="0" scrolling="no" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" name="TopBanner" id="TopBanner"></iframe>
                </div> 
                <div class="adextend" id="adExtend"></div>
            </div><!-- //.top_extend_ad_wrap -->
        </div>    
    </div>    
	<!-- Header -->
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



            <h1><a href="/"><img src="http://img.cgv.co.kr/R2014/images/title/h1_cgv.png" alt="CGV" /></a></h1>

            <div class="sect-service">
				<h2>서비스 메뉴</h2>
                <ul class="util">
					<li>
                        <!-- 2019.09 수정 -->
                        <a href="#" class="app" style="cursor:pointer" title="CGV앱 4.0 설치 새창" ><span>CGV앱 4.0 설치</span></a>
						<!-- 앱 다운로드 레이어 팝업 2019.09 SMS 전송,하단 영역 제거 -->
						<div class="app-downinfo v2">
							<div class="inner">
								<div class="tit-box">
									<strong><em>CGV</em>앱에서<br />더 편리하게 이용하세요.</strong>
								</div>
								<div class="choice-way">
									<div class="qr">
										<div class="qr-codeimg">
											<img src="http://img.cgv.co.kr/R2014//images/common/img_qrcode.gif" alt="QR CODE" />
										</div>
                                        <div class="qr-desc">
                                            <p>QR코드를 스캔하고<br />앱 설치 페이지로 바로 이동하세요 </p>
                                        </div>
									</div>
								</div>
								<a class="btn_close" href="#">팝업 닫기</a>
							</div>
						</div>
                        <!-- 2019.09 수정 -->
                    </li>
					<li><a href="https://www.facebook.com/CJCGV" class="like" target="_blank" title="Facebook 좋아요! 새창" ><span>Facebook 좋아요!</span></a></li>
				    <li><a href="https://www.instagram.com/cgv_korea/" class="insta" target="_blank" title="Instagram Follow" ><span>Instagram Follow</span></a></li>
                	<li><a href="/discount/" class="frugal" ><span>알뜰한 영화관람법!</span></a></li> <!-- 할인카드 -->
				</ul>
                <ul class="gnb">
                
                    <li><a href="/user/login/?returnURL=http%3a%2f%2fwww.cgv.co.kr%2fmovies%2fdefault.aspx" class="login" ><span>로그인</span></a></li>
					<li><a href="/user/join/" class="join" ><span>회원가입</span></a></li>
                    
                

					<li><a href="/user/mycgv/" class="mycgv required-login" data-url="/user/mycgv/" ><span>MY CGV</span></a></li>
					<li><a href="/user/vip-lounge/" class="vip" ><span>VIP LOUNGE</span></a></li>
					<li><a href="/user/memberShip/ClubService.aspx" title="새창" class="club specialclub"  ><span>CLUB 서비스</span></a></li>
					<!-- 2014.12.8 리뉴얼-->
					<li><a href="/support/default.aspx" class="customer" ><span>고객센터</span></a></li>
				    <!-- 2014.12.8 리뉴얼-->
					<li><a href="/ticket/eng/newdefault.aspx" class="showtimes"   ><span>ENGLISH TICKETING</span></a></li>
				</ul>
           </div>
            <!-- 서비스 메뉴 -->
            
            <div class="im-wrap"> <!-- Important wrap -->
				<h2><img src="http://img.cgv.co.kr/R2014/images/title/h2_movie.png" alt="MOVIE" /></h2>

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
										<li><a href="/magazine/" >매거진</a></li>									
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
						<input type="text" title="통합검색" id="header_keyword" name="header_keyword" minlength="2" maxlength="20" />
                        <input type="hidden" id="header_ad_keyword" name="header_ad_keyword" />
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
                    <a href="http://section.cgv.co.kr/discount/Special/discount/EventDetail.aspx?Idx=11972&pb=Y"  >
                        <img src="http://img.cgv.co.kr/WingBanner/2019/1104/15728438201650.png" alt="현대오일뱅크" />
                    </a>					
				</div>
                
				<!-- /Advertisement -->
                <!-- 서브 메뉴 -->
				
			</div>
		</div>
        <!-- txt banner -->
        
        <!-- /text banner -->
	</div>
	<!-- /Header -->
	<!-- Contaniner -->
	<div id="contaniner" class=""><!-- 벽돌 배경이미지 사용 시 class="bg-bricks" 적용 / 배경이미지가 없을 경우 class 삭제  -->

        <!-- LineMap -->

        <div id="ctl00_navigation_line" class="linemap-wrap">
            <div class="sect-linemap">
                <div class="sect-bcrumb">
                    <ul>
                        <li><a href="/"><img alt="home" src="http://img.cgv.co.kr/R2014/images/common/btn/btn_home.png" /></a></li>
                        
                            <li >
                                <a href="/movies/">영화</a>
                            </li>
                        
                            <li >
                                <a href="/movies/">무비차트</a>
                            </li>
                        
                            <li  class="last">
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
        <!-- //LineMap -->

		<!-- Contents Area -->
		<div id="contents" class="">
            
            <!-- Contents Start -->
			


<!-- 실컨텐츠 시작 -->
    <div class="wrap-movie-chart">
        <!-- Heading Map Multi -->
        <div class="tit-heading-wrap">
            <h3>무비차트</h3>
           
            <div class="submenu">
                <ul>
                    <li class="on"><a href="/movies/" title="선택">무비차트</a></li>
                    <li><a href="/movies/pre-movies.aspx">상영예정작</a></li>
                    <li><a href="/movies/?lt=3">CGV아트하우스</a></li>
                </ul>
            </div>
        </div>
        <!-- //Heading Map Multi -->
        <!-- Sorting -->
        <div class="sect-sorting">
             <div class="nowshow">
                        <input type="checkbox" id="chk_nowshow"  title="현재 선택됨" checked/>
            
                <label for="chk_nowshow">현재 상영작만 보기</label>                
            </div>
            <label for="order_type" class="hidden">정렬</label>
            <select id="order_type" name="order-type">
				<option title="현재 선택됨" selected value="1">예매율순</option>
                <option value="2">평점순</option>
                <option value="3">관람객순</option>
            </select>
            <button type="button" class="round gray"><span>GO</span></button>
        </div>
        <!-- //Sorting -->
        
        <div class="sect-movie-chart">
            <h4 class="hidden">
                무비차트 - 예매율순
            </h4>
            <ol>
            
                <li>
                    <div class="box-image" >
                        <strong class="rank">No.1</strong>	
                        <a href="/movies/detail-view/?midx=83161">
                            <span class="thumb-image">
                                <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000083/83161/83161_320.jpg" alt="걸즈 앤 판처 최종장 포스터" onerror="errorImage(this)"/>
                                <span class="ico-grade grade-12">12세 이상</span>
                            </span>
                            <strong class="no1">1위</strong>
                        </a>
                        <span class="screentype">
                            
                                <a class="forDX" href="#" title="4DX 상세정보 바로가기" data-regioncode="4D14">4DX</a>
                            
                        </span>
                    </div>
                    
                    <div class="box-contents">
                        <a href="/movies/detail-view/?midx=83161">
                            <strong class="title">걸즈 앤 판처 최종장</strong>
                        </a>

                        <div class="score">
                            <strong class="percent">예매율<span>10.8%</span></strong>
                            <!--[2015-12-10] 에그포인트 적용 범위1~ 3위. start : add_mwpark-->
                            <div class="egg-gage small">
                                <span class="egg good"></span>
								<span class="percent">?</span>
							</div>
                            <!--[2015-12-10] 에그포인트 적용 범위 1~ 3위. end : add_mwpark-->
                            <!-- [2015-12-11] 무비 차트 평점 개편 별점 UI 삭제 start : del_mwpark
                                <div class="point">
                                    <em>0.0</em>
                                </div>
                            [2015-12-11] 무비 차트 평점 개편 별점 UI 삭제 start : del_mwpark-->
                        </div>

                        <span class="txt-info">
                            <strong>
                                2020.03.12 
                                <span>개봉</span>
                                
                            </strong>
                        </span>
                        <span class="like"> 
                            <button class="btn-like" value="83161">영화 찜하기</button>
                            <span class="count"> 
                                <strong><i>223</i><span>명이 선택</span></strong> 
                                <i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i>
                            </span>
                            <a class="link-reservation" href="/kan/ticket/?MOVIE_CD=20022936&MOVIE_CD_GROUP=20022889">예매</a>
                        </span>
                    </div>    
                </li>
            
                <li>
                    <div class="box-image" >
                        <strong class="rank">No.2</strong>	
                        <a href="/movies/detail-view/?midx=83112">
                            <span class="thumb-image">
                                <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000083/83112/83112_320.jpg" alt="다크 워터스 포스터" onerror="errorImage(this)"/>
                                <span class="ico-grade grade-12">12세 이상</span>
                            </span>
                            
                        </a>
                        <span class="screentype">
                            
                        </span>
                    </div>
                    
                    <div class="box-contents">
                        <a href="/movies/detail-view/?midx=83112">
                            <strong class="title">다크 워터스</strong>
                        </a>

                        <div class="score">
                            <strong class="percent">예매율<span>8.9%</span></strong>
                            <!--[2015-12-10] 에그포인트 적용 범위1~ 3위. start : add_mwpark-->
                            <div class="egg-gage small">
                                <span class="egg great"></span>
								<span class="percent">97%</span>
							</div>
                            <!--[2015-12-10] 에그포인트 적용 범위 1~ 3위. end : add_mwpark-->
                            <!-- [2015-12-11] 무비 차트 평점 개편 별점 UI 삭제 start : del_mwpark
                                <div class="point">
                                    <em>97.0</em>
                                </div>
                            [2015-12-11] 무비 차트 평점 개편 별점 UI 삭제 start : del_mwpark-->
                        </div>

                        <span class="txt-info">
                            <strong>
                                2020.03.11 
                                <span>개봉</span>
                                
                            </strong>
                        </span>
                        <span class="like"> 
                            <button class="btn-like" value="83112">영화 찜하기</button>
                            <span class="count"> 
                                <strong><i>1,983</i><span>명이 선택</span></strong> 
                                <i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i>
                            </span>
                            <a class="link-reservation" href="/kan/ticket/?MOVIE_CD=20022674&MOVIE_CD_GROUP=20022674">예매</a>
                        </span>
                    </div>    
                </li>
            
                <li>
                    <div class="box-image" >
                        <strong class="rank">No.3</strong>	
                        <a href="/movies/detail-view/?midx=5003">
                            <span class="thumb-image">
                                <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000005/5003/5003_320.jpg" alt="메멘토 포스터" onerror="errorImage(this)"/>
                                <span class="ico-grade grade-15">15세 이상</span>
                            </span>
                            
                        </a>
                        <span class="screentype">
                            
                        </span>
                    </div>
                    
                    <div class="box-contents">
                        <a href="/movies/detail-view/?midx=5003">
                            <strong class="title">메멘토</strong>
                        </a>

                        <div class="score">
                            <strong class="percent">예매율<span>8.7%</span></strong>
                            <!--[2015-12-10] 에그포인트 적용 범위1~ 3위. start : add_mwpark-->
                            <div class="egg-gage small">
                                <span class="egg great"></span>
								<span class="percent">98%</span>
							</div>
                            <!--[2015-12-10] 에그포인트 적용 범위 1~ 3위. end : add_mwpark-->
                            <!-- [2015-12-11] 무비 차트 평점 개편 별점 UI 삭제 start : del_mwpark
                                <div class="point">
                                    <em>98.0</em>
                                </div>
                            [2015-12-11] 무비 차트 평점 개편 별점 UI 삭제 start : del_mwpark-->
                        </div>

                        <span class="txt-info">
                            <strong>
                                2014.11.20 
                                <span>재개봉</span>
                                
                            </strong>
                        </span>
                        <span class="like"> 
                            <button class="btn-like" value="5003">영화 찜하기</button>
                            <span class="count"> 
                                <strong><i>1,891</i><span>명이 선택</span></strong> 
                                <i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i>
                            </span>
                            <a class="link-reservation" href="/kan/ticket/?MOVIE_CD=20022901&MOVIE_CD_GROUP=00010809">예매</a>
                        </span>
                    </div>    
                </li>
            
            </ol>

            <ol>
            
                <li>
                    <div class="box-image" >
                        <strong class="rank">No.4</strong>	
                        <a href="/movies/detail-view/?midx=83117">
                            <span class="thumb-image">
                                <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000083/83117/83117_320.jpg" alt="찬실이는 복도 많지 포스터" onerror="errorImage(this)"/>
                                <span class="ico-grade grade-all">전체</span>
                            </span>
                        </a>
                        <span class="screentype">
                            
                                <a class="arthouse" href="#" data-regioncode="MovieCollage">아트하우스</a>
                            
                        </span>
                    </div>
                    
                    <div class="box-contents">
                        <a href="/movies/detail-view/?midx=83117">
                            <strong class="title">찬실이는 복도 많지</strong>
                        </a>

                        <div class="score">
                            <strong class="percent">예매율<span>6.5%</span></strong>
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
                                2020.03.05 
                                <span>개봉</span>
                                
                            </strong>
                        </span>
                        <span class="like"> 
                            <button class="btn-like" value="83117">영화 찜하기</button>
                            <span class="count"> 
                                <strong><i>1,031</i><span>명이 선택</span></strong> 
                                <i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i>
                            </span> 

                            <a class="link-reservation" href="/ticket/?MOVIE_CD=20022867&MOVIE_CD_GROUP=20022710">예매</a>
                            
                        </span>
                    </div>    
                </li>
            
                <li>
                    <div class="box-image" >
                        <strong class="rank">No.5</strong>	
                        <a href="/movies/detail-view/?midx=81090">
                            <span class="thumb-image">
                                <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000081/81090/81090_320.jpg" alt="스타이즈본 포스터" onerror="errorImage(this)"/>
                                <span class="ico-grade grade-15">15세 이상</span>
                            </span>
                        </a>
                        <span class="screentype">
                            
                        </span>
                    </div>
                    
                    <div class="box-contents">
                        <a href="/movies/detail-view/?midx=81090">
                            <strong class="title">스타이즈본</strong>
                        </a>

                        <div class="score">
                            <strong class="percent">예매율<span>6.3%</span></strong>
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
                                2018.10.09 
                                <span>개봉</span>
                                
                            </strong>
                        </span>
                        <span class="like"> 
                            <button class="btn-like" value="81090">영화 찜하기</button>
                            <span class="count"> 
                                <strong><i>6,830</i><span>명이 선택</span></strong> 
                                <i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i>
                            </span> 

                            <a class="link-reservation" href="/ticket/?MOVIE_CD=20022887&MOVIE_CD_GROUP=20017254">예매</a>
                            
                        </span>
                    </div>    
                </li>
            
                <li>
                    <div class="box-image" >
                        <strong class="rank">No.6</strong>	
                        <a href="/movies/detail-view/?midx=82377">
                            <span class="thumb-image">
                                <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000082/82377/82377_320.jpg" alt="조커 포스터" onerror="errorImage(this)"/>
                                <span class="ico-grade grade-15">15세 이상</span>
                            </span>
                        </a>
                        <span class="screentype">
                            
                                <a class="imax" href="#" data-regioncode="07">IMAX</a>
                            
                        </span>
                    </div>
                    
                    <div class="box-contents">
                        <a href="/movies/detail-view/?midx=82377">
                            <strong class="title">조커</strong>
                        </a>

                        <div class="score">
                            <strong class="percent">예매율<span>5.0%</span></strong>
                             <!--[2015-12-10] 에그포인트 적용 범위4~ 7위. start : add_mwpark-->
                            <div class="egg-gage small">
                                <span class="egg great"></span>
								<span class="percent">88%</span>
							</div>
                            <!--[2015-12-10] 에그포인트 적용 범위 4~ 7위. end : add_mwpark-->
                            <!-- [2015-12-11] 무비 차트 평점 개편 별점 UI 삭제 start : del_mwpark
                                <div class="point">
                                    <em>88.0</em>
                                </div>
                            [2015-12-11] 무비 차트 평점 개편 별점 UI 삭제 start : del_mwpark-->
                        </div>

                        <span class="txt-info">
                            <strong>
                                2019.10.02 
                                <span>개봉</span>
                                
                            </strong>
                        </span>
                        <span class="like"> 
                            <button class="btn-like" value="82377">영화 찜하기</button>
                            <span class="count"> 
                                <strong><i>14,470</i><span>명이 선택</span></strong> 
                                <i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i>
                            </span> 

                            <a class="link-reservation" href="/ticket/?MOVIE_CD=20022893&MOVIE_CD_GROUP=20020856">예매</a>
                            
                        </span>
                    </div>    
                </li>
            
                <li>
                    <div class="box-image" >
                        <strong class="rank">No.7</strong>	
                        <a href="/movies/detail-view/?midx=83065">
                            <span class="thumb-image">
                                <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000083/83065/83065_320.jpg" alt="1917 포스터" onerror="errorImage(this)"/>
                                <span class="ico-grade grade-15">15세 이상</span>
                            </span>
                        </a>
                        <span class="screentype">
                            
                                <a class="imax" href="#" data-regioncode="07">IMAX</a>
                            
                        </span>
                    </div>
                    
                    <div class="box-contents">
                        <a href="/movies/detail-view/?midx=83065">
                            <strong class="title">1917</strong>
                        </a>

                        <div class="score">
                            <strong class="percent">예매율<span>4.7%</span></strong>
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
                                2020.02.19 
                                <span>개봉</span>
                                
                            </strong>
                        </span>
                        <span class="like"> 
                            <button class="btn-like" value="83065">영화 찜하기</button>
                            <span class="count"> 
                                <strong><i>7,410</i><span>명이 선택</span></strong> 
                                <i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i>
                            </span> 

                            <a class="link-reservation" href="/ticket/?MOVIE_CD=20022569&MOVIE_CD_GROUP=20022444">예매</a>
                            
                        </span>
                    </div>    
                </li>
            
            </ol>
            
            <button class="btn-more-fontbold">더보기 <i class="link-more">더보기</i></button>
            

            <ol id="movie_more_container" style="display:none" class="list-more">
                <li></li>
            </ol>

            <div class="chart-ad">
                <div class="box-com">                    
                    <iframe src='http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@Movie_Chart' width='160' height='300' frameborder='0' scrolling='no' topmargin='0' leftmargin='0' marginwidth='0' marginheight='0' ID='Movie_Chart' NAME='Movie_Chart'></iframe>
                </div>                
                <div class="chart_ad_desc">
                    <dl>
                        <dt>
                            <img src="http://img.cgv.co.kr/R2014/images/ad/ico_ad1.png" alt="ad"/>
                            <span id="ad_txt1"></span>
                        </dt>
                        <dd>
                            <span id="ad_txt2"></span>
                        </dd>
                    </dl>
                </div>
            </div>
            
        </div>
    </div><!-- .sect-moviechart -->
<script type="text/javascript">
//<![CDATA[
    window.userFavoriteMovie = $.parseJSON('[]');

    (function ($) {
        $(function () {

            $('.sect-sorting button').click(function () {
                var val = $('#order_type').val();
                if (val) {
                    location.href = "/movies/?lt=1&ot=" + val;
                }
            });
            //[2015-12-15] 무비 파인더 페이지 인 경우 정렬 버튼 처리. : add_mwpark
            $("#sect-finder button").click(function(){
                var val = $('#order_type').val();
                if (val) {
                    location.href = "/movies/finder.aspx?lt=1&ot=" + val;
                }
            });


            $('#chk_nowshow').click(function () {
                if ($("input:checkbox[id='chk_nowshow']").is(":checked")) {
                    location.href = "/movies/?lt=1&ft=1";
                }
                else{
                    location.href = "/movies/?lt=1&ft=0";
                }
            });

            //[2015-12-15] 무비 파인더 페이지 인 경우 현재 상영작만 보기 체크 박스 처리. : add_mwpark
            $("#chk_finder_nowshow").on("click" , function(){
                if ($("input:checkbox[id='chk_nowshow']").is(":checked")) {
                    location.href = "/movies/finder.aspx?lt=1&ft=1";
                }else{
                    location.href = "/movies/finder.aspx?lt=1&ft=0";
                }
            });

        });

    })(jQuery);
//]]>
</script>

<div class="chart-ad-bottom">
    <iframe src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@SponsorBar_980" width="980" height="90" title="" frameborder="0" scrolling="no" marginwidth="0" marginheight="0" name="SponsorBar_980" id="SponsorBar_980"></iframe>
</div>
<div class="sect-ad-benner"> 
        <a href="http://section.cgv.co.kr/event/running/SimpleEventZone.aspx?sidx=11"><img src="http://img.cgv.co.kr/R2014/images/main/phototicket_978_223.jpg" alt="영화를 영원히 추억하는 방법. CGV 포토티켓" /></a>
</div><!-- .sect-ad-benner  -->
<div class="cols-rank">
    <div class="col-rank-trailer">
        <h3>인기 트레일러</h3>
        <div class="sect-popular-trailer">
            <div id="ctl00_PlaceHolderContent_ucListFooter_wrap_info_trailer" class="wrap-info-trailer">
                <!-- 트레일러 이미지 -->
                <div class="box-image trailer">
                    <a href="#" title="새창" class="movie_player_popup" data-gallery-idx="174953">
                        <span class="thumb-image">
                            <img src="http://img.cgv.co.kr/Movie/Thumbnail/Trailer/82175/82175174953_1024.jpg" alt="[캣츠]No.1 퍼포먼스 영상" />
                            <span class="ico-play">영상보기</span>
                        </span>
                    </a>
                </div>
                <div class="box-image">
                    <a href="/movies/detail-view/?midx=82175">
                        <span class="thumb-image">
                            <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000082/82175/82175_185.jpg" alt="[캣츠]No.1 퍼포먼스 영상" />
                            <span class="ico-grade grade-12">12세 이상</span>
                        </span>
                    </a>
                </div>
                <div class="box-contents">
                    <a href="/movies/detail-view/?midx=82175">
                        <strong class="title">캣츠</strong>
                    </a>
                    <span class="txt-info">
                        <em class="genre">뮤지컬,&nbsp;드라마</em>
                        <span>
                            <i>2019.12.24</i>
                            <strong>개봉</strong>
                            
                        </span>
                    </span>
                    <span class="screentype">
                        
                    </span>
                </div>
            </div>
            <ul>
            
                <li>
                    <div class="box-image">
                        <a href="#" title="새창" class="movie_player_popup" data-gallery-idx="175009">
                            <span class="thumb-image">
                                <img src="http://img.cgv.co.kr/Movie/Thumbnail/Trailer/82866/82866175009_1024.jpg" 
                                alt="[카운트다운]장르파괴 영상" style="width:126px;height:71px;" />
                                <span class="ico-play">영상보기</span>
                            </span>
                        </a>
                    </div>
                    <div class="box-contents">
                        <a href="#" title="새창" class="movie_player_popup" data-gallery-idx="175009">
                            <strong class="title">카운트다운</strong>
                        </a>
                        <span class="txt-info">
                        <em class="genre">호러,&nbsp;스릴러</em>
                        <span>
                            <i>2019.12.12</i>
                            <strong>개봉</strong>
                            
                        </span>
                    </span>
                    </div>
                </li>
            
                <li>
                    <div class="box-image">
                        <a href="#" title="새창" class="movie_player_popup" data-gallery-idx="175008">
                            <span class="thumb-image">
                                <img src="http://img.cgv.co.kr/Movie/Thumbnail/Trailer/82962/82962175008_1024.jpg" 
                                alt="[영화로운 나날]30초 예고편" style="width:126px;height:71px;" />
                                <span class="ico-play">영상보기</span>
                            </span>
                        </a>
                    </div>
                    <div class="box-contents">
                        <a href="#" title="새창" class="movie_player_popup" data-gallery-idx="175008">
                            <strong class="title">영화로운 나날</strong>
                        </a>
                        <span class="txt-info">
                        <em class="genre">로맨스,&nbsp;환타지,&nbsp;드라마,&nbsp;멜로</em>
                        <span>
                            <i>2019.12.12</i>
                            <strong>개봉</strong>
                            
                        </span>
                    </span>
                    </div>
                </li>
            
                <li>
                    <div class="box-image">
                        <a href="#" title="새창" class="movie_player_popup" data-gallery-idx="174984">
                            <span class="thumb-image">
                                <img src="http://img.cgv.co.kr/Movie/Thumbnail/Trailer/82640/82640174984_1024.jpg" 
                                alt="[러브 앳]홍쓴 부부 GV 현장 메이킹 영상" style="width:126px;height:71px;" />
                                <span class="ico-play">영상보기</span>
                            </span>
                        </a>
                    </div>
                    <div class="box-contents">
                        <a href="#" title="새창" class="movie_player_popup" data-gallery-idx="174984">
                            <strong class="title">러브 앳</strong>
                        </a>
                        <span class="txt-info">
                        <em class="genre">로맨스,&nbsp;코미디,&nbsp;멜로</em>
                        <span>
                            <i>2019.11.27</i>
                            <strong>개봉</strong>
                            
                        </span>
                    </span>
                    </div>
                </li>
            
                <li>
                    <div class="box-image">
                        <a href="#" title="새창" class="movie_player_popup" data-gallery-idx="174983">
                            <span class="thumb-image">
                                <img src="http://img.cgv.co.kr/Movie/Thumbnail/Trailer/82961/82961174983_1024.jpg" 
                                alt="[월성]메인 예고편" style="width:126px;height:71px;" />
                                <span class="ico-play">영상보기</span>
                            </span>
                        </a>
                    </div>
                    <div class="box-contents">
                        <a href="#" title="새창" class="movie_player_popup" data-gallery-idx="174983">
                            <strong class="title">월성</strong>
                        </a>
                        <span class="txt-info">
                        <em class="genre">다큐멘터리</em>
                        <span>
                            <i>2019.12.12</i>
                            <strong>개봉</strong>
                            
                        </span>
                    </span>
                    </div>
                </li>
            
            </ul>
        </div><!-- .sect-popular-trailer -->
    </div><!-- .col-rank-trailer -->
    <div class="col-rank-search">
        <div class="searchrank">
            <h3>실시간 인기 검색어</h3>
            <ol>
            
                <li>
                    <a href="/search/?query=%ed%95%b4%eb%a6%ac%ed%8f%ac%ed%84%b0">1. <strong>해리포터</strong></a>
                    <em>
                        5
                        <span class="up">상승</span>
                    </em>
                </li>
            
                <li>
                    <a href="/search/?query=%eb%b0%94">2. <strong>바</strong></a>
                    <em>
                        122
                        <span class="up">상승</span>
                    </em>
                </li>
            
                <li>
                    <a href="/search/?query=%eb%8f%84%eb%9d%bc%ec%97%90%eb%aa%bd">3. <strong>도라에몽</strong></a>
                    <em>
                        7
                        <span class="up">상승</span>
                    </em>
                </li>
            
                <li>
                    <a href="/search/?query=%ec%8b%a0%eb%ac%b8%ea%b8%b0%ec%9e%90">4. <strong>신문기자</strong></a>
                    <em>
                        2
                        <span class="down">하락</span>
                    </em>
                </li>
            
                <li>
                    <a href="/search/?query=%ea%b8%b0%ec%83%9d%ec%b6%a9">5. <strong>기생충</strong></a>
                    <em>
                        4
                        <span class="down">하락</span>
                    </em>
                </li>
            
                <li>
                    <a href="/search/?query=%ea%b4%91%ea%b5%90">6. <strong>광교</strong></a>
                    <em>
                        2
                        <span class="down">하락</span>
                    </em>
                </li>
            
                <li>
                    <a href="/search/?query=1917">7. <strong>1917</strong></a>
                    <em>
                        16
                        <span class="up">상승</span>
                    </em>
                </li>
            
                <li>
                    <a href="/search/?query=%ea%b1%b8%ec%a6%88">8. <strong>걸즈</strong></a>
                    <em>
                        5
                        <span class="down">하락</span>
                    </em>
                </li>
            
                <li>
                    <a href="/search/?query=%eb%a7%a8">9. <strong>맨</strong></a>
                    <em>
                        2
                        <span class="down">하락</span>
                    </em>
                </li>
            
                <li>
                    <a href="/search/?query=%ec%bd%94%eb%82%9c">10. <strong>코난</strong></a>
                    <em>
                        1
                        <span class="down">하락</span>
                    </em>
                </li>
            
            </ol>
            <p class="date">2020.03.12기준</p>
        </div>
    </div>
</div>
<!--
  2016-
- Fried : 0 ~69
- Good :  70 ~ 84
- Great : 85 ~ 100  
//-->
<script id="temp_movie" type="text/x-jquery-tmpl">
    <li>
        <div class="box-image" >
            <a href="/movies/detail-view/?midx=${MovieIdx}">
                <span class="thumb-image">
                    <img src="${PosterImage.MiddleImage}" alt="${Title}" onerror="errorImage(this)"/>
                    <span class="ico-grade ${MovieGrade.StyleClassName}">${MovieGrade.GradeText}</span>
                </span>
            </a>
            <span class="screentype">
                {{each MovieKindList}}
                <a class="${StyleClassName}" href="#" data-regioncode="${RegionCode}">${KindName}</a>
                {{/each}}
            </span>
        </div>
                    
        <div class="box-contents">
            <a href="/movies/detail-view/?midx=${MovieIdx}">
                <strong class="title">${Title}</strong>
            </a>

            <div class="score">
                <strong class="percent">예매율<span>${TicketRate}%</span></strong>
                <!--[2015-12-14] 평점 개편 에그 포인트 및 에그 이미지 노출 추가. start : add_mwpark-->
                <div class="egg-gage small">
                    <span class="egg ${StarPoint}"></span>
                    <span class="percent">${EggPoint}</span>
                </div>
                <!--[2015-12-14] 평점 개편 에그 포인트 및 에그 이미지 노출 추가. end : add_mwpark-->
            </div>

            <span class="txt-info">
                <strong>
                    ${OpenDate}
                    <span>${OpenText}</span>
                    {{if D_Day > 0}}
                        <em class="dday">D-${D_Day}</em>
                    {{/if}}
                </strong>
            </span>
            <span class="like"> 
                <button class="btn-like" value="${MovieIdx}">영화 찜하기</button>
                <span class="count"> 
                    <strong><i>${FavCount}</i><span>명이 선택</span></strong> 
                    <i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i>
                </span>
                {{if (IsTicketing)}}<a class="link-reservation" href="http://www.cgv.co.kr/ticket/?MOVIE_CD=${CGVCode}&MOVIE_CD_GROUP=${MovieGroupCode}">예매</a>{{/if}}
            </span>
        </div>    
    </li>
</script>

<script type="text/javascript">
//<![CDATA[


    (function ($) {
        $(function () {

            $(".btn-more-fontbold").click(function () {
                $(this).remove();
                app.movie().getList({ listType: '1', orderType: '1', filterType: '1' }, setMovieListBuild);
            });

            function setMovieListBuild(result) {

                $("#movie_more_container").empty();
                $("#movie_more_container").show();

                for (var i = 0; i < result.List.length; i++) {
                    var str = result.List[i].JointCount;
                    result.List[i].JointCount = str.split(",").join("");
                }

                $("#temp_movie").tmpl(result.List).appendTo("#movie_more_container");
                window.userFavoriteMovie = $.parseJSON(result.FavMovieIdx);

                //$('.point').point();        //평점 별 표시
                $('.btn-like').like();      //wish list동작 처리
                $('span.screentype a').specialTheater();    //특별관 링크
            }
        });
    })(jQuery);
//]]>
</script>


            <!--/ Contents End -->

		</div>
		<!-- /Contents Area -->
	</div>
	<!-- /Contaniner --> 
    <div class="com_pop_wrap">
		<div class="com_pop_fog"></div>
	</div>
	<!-- Footer -->
	<div id="footer">
		<!-- footer_area (s) -->
		

    <div id="BottomWrapper" class="sect-ad">
        <iframe src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@Bottom" width="100%" height="240" title="" frameborder="0" scrolling="no" marginwidth="0" marginheight="0" name="Bottom" id="Bottom"></iframe>
	</div>
	<div class="foot">
		<div class="sect-smuse">
			<h2>특별관 리스트</h2>
			<ul>
				<li><a href="http://www.cgv.co.kr/theaters/special/?regioncode=4D14" class="dx">4DX</a></li>
				<li><a href="http://www.cgv.co.kr/theaters/special/?regioncode=07" class="imax">IMAX</a></li>
				<li><a href="http://www.cgv.co.kr/theaters/special/?regioncode=SCX" class="screenx">SCREENX</a></li>
				<li><a href="http://www.cgv.co.kr/theaters/special/?regioncode=SPX" class="spherex">SphereX</a></li>
				<li><a href="http://www.cgv.co.kr/theaters/special/?regioncode=TEM" class="tempur">Tempur</a></li>
				<li><a href="http://www.cgv.co.kr/theaters/special/?regioncode=99" class="gold">GOLDCLASS</a></li>
				<li><a href="http://www.cgv.co.kr/theaters/special/?regioncode=103" class="cine">CINE de CHEF</a></li>
				<li><a href="http://www.cgv.co.kr/theaters/special/?regioncode=pc" class="cinema">THE PRIVATE CINEMA</a></li>
				<li><a href="http://www.cgv.co.kr/theaters/special/?regioncode=CK" class="kids">Cine kids</a></li>
				<li><a href="http://www.cgv.co.kr/theaters/special/?regioncode=CF" class="cinenforet">CINE&FORET</a></li>
			</ul>
		</div>
		<div class="sect-cinfo">
			<p class="logo">CJ CGV 로고</p>
			<h2>CJ CGV 회사소개 및 정책</h2>
			<div class="policy">
				<ul>
					<li><a href="http://corp.cgv.co.kr/company/" target="_blank">회사소개</a></li>
					<li><a href="http://corp.cgv.co.kr/company/ir/financial/financial_list.aspx" target="_blank">IR</a></li>
					<li><a href="http://corp.cgv.co.kr/company/recruit/step/default.aspx" target="_blank">채용정보</a></li>
					<li><a href="http://corp.cgv.co.kr/company/advertize/ad_Default.aspx" target="_blank">광고/프로모션문의</a></li>
                    <li><a href="http://corp.cgv.co.kr/company/advertize/af_default.aspx" target="_blank">제휴문의</a></li>
                    <li><a href="http://corp.cgv.co.kr/company/advertize/bp_insert.aspx" target="_blank">출점문의</a></li>						
					<li><a href="http://www.cgv.co.kr/rules/service.aspx">이용약관</a></li>
                    <li><a href="http://www.cgv.co.kr/rules/organized.aspx">편성기준</a></li>
					<li><a href="http://www.cgv.co.kr/rules/privacy.aspx" class="empha-red">개인정보처리방침</a></li>
					<li><a href="http://www.cgv.co.kr/rules/disclaimer.aspx">법적고지</a></li>
					<li><a href="http://www.cgv.co.kr/rules/emreject.aspx">이메일주소무단수집거부</a></li>
					<li><a href="http://www.cgv.co.kr/company/coexist.aspx">상생경영</a></li>
					<li><a href="http://www.cgv.co.kr/guide/sitemap.aspx">사이트맵</a></li>
				</ul>
			</div>
			<div class="share">
				<a href="https://www.facebook.com/CJCGV" target="_blank" class="facebook" title="새창">페이스북</a><a href="https://twitter.com/cj_cgv" target="_blank" class="twitter" title="새창">트위터</a><a href="https://www.instagram.com/cgv_korea/" target="_blank" class="instagram" title="새창">인스타그램</a>
			</div>
			<div class="address">
				<address>(04377)서울특별시 용산구 한강대로 23길 55, 아이파크몰 6층(한강로동)</address>
				<p class="vl">
					<span>대표이사 : 최병환</span><span>사업자등록번호 : 104-81-45690</span><span>통신판매업신고번호 : 2017-서울용산-0662</span>
					<a href="javascript:void(0);" onclick="goFtc()" class="btn_goFtc"><img src="http://img.cgv.co.kr/r2014/images/common/btn_reg.png" alt="사업자정보확인"/><a>					
				</p>
				<p class="vl">
					<span>호스팅사업자 : CJ올리브네트웍스</span><span>개인정보보호 책임자 : 정종민</span><span>대표이메일 : cjcgvmaster@cj.net</span><span>CGV고객센터 : 1544-1122</span>
				</p>
				<p class="copyright">&copy; CJ CGV. All Rights Reserved</p>
			</div>
			<div class="familysite">
				<label for="familysite" class="hidden">CJ그룹 계열사 바로가기</label>
				<select id="familysite">
					<option value="">계열사 바로가기</option>
                      <optgroup label="CJ그룹">
<option value="http://www.cj.net/">CJ주식회사</option>
</optgroup><optgroup label="엔터테인먼트 & 미디어">
<option value="http://www.cjenm.com/">CJ ENM (E&M)</option>
<option value="http://www.cgv.co.kr/">CJ CGV</option>
<option value="http://www.cjpowercast.com/">CJ파워캐스트</option>
</optgroup><optgroup label="식품 & 식품서비스">
<option value="https://www.cj.co.kr">CJ제일제당 (식품)</option>
<option value="http://www.cjfreshway.com/">CJ프레시웨이</option>
<option value="http://www.cjfoodville.co.kr/">CJ푸드빌</option>
<option value="http://www.md1.co.kr/">CJ엠디원</option>
</optgroup><optgroup label="생명공학">
<option value="https://www.cj.co.kr/kr/about/business/bio">CJ제일제당 (바이오)</option>
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
		</div>
	</div>

    <!-- Float Ad -->

        <!-- footer_area (e) -->

        <div class="adFloat" style="display:block">

            <iframe src='http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@Popicon' width='154' height='182' frameborder='0' scrolling='no' topmargin='0' leftmargin='0' marginwidth='0' marginheight='0' allowTransparency="true" id="ad_float1"></iframe>
        </div>
        <script type="text/javascript">            OpenAD();</script>
        <!-- //Float Ad -->
	</div>
	<!-- /Footer -->

    <!-- Aside Banner :  -->
	<div id="ctl00_sect_person_right" class="sect-aside-banner" style="padding:0; margin:0; position:fixed; z-index:1;">
		<div class="aside-content-top">
			<div class="aside-content-btm">
				<a href="/theaters/"><img src="http://img.cgv.co.kr/R2014/images/common/btn/btn_person_theater.gif" alt="CGV THEATER" /></a>
				<a href="/arthouse/"><img src="http://img.cgv.co.kr/R2014/images/common/btn/btn_person_arthouse.gif" alt="CGV arthouse" /></a>
				<a href="/theaters/special/"><img src="http://img.cgv.co.kr/R2014/images/common/btn/btn_person_special.gif" alt="CGV SPECIAL" /></a>
				<a href="http://phototicket.cgv.co.kr/" target="_blank"><img src="http://img.cgv.co.kr/R2014/images/common/btn/btn_person_phototicket.gif" alt="CGV 포토티켓" /></a>
				<a href="/user/mycgv/reserve/" class="required-login" data-url="/user/mycgv/reserve/"><img src="http://img.cgv.co.kr/R2014/images/common/btn/btn_person_ticket.gif" alt="CGV TICKET INFO" /></a>
				<a href="http://section.cgv.co.kr/discount/Special/discount/Default.aspx"><img src="http://img.cgv.co.kr/R2014/images/common/btn/btn_person_discount.gif" alt="CGV DISCOUNT INFO" /></a>
			</div>
		</div>
		<div class="btn-top">
            <a href="#" onclick="window.scrollTo(0,0);return false;"><span>최상단으로 이동</span></a>
		</div>
	</div>
	<!-- //Aside Banner -->
    
</div>


<script type="text/template" id="temp_popup_movie_player">
<div class="popwrap">
    <div class="sect-layerplayer">
        <div class="cols-pop-player">
            <h1 class="title" id="movie_player_popup_title"></h1>
            <div class="col-pop-player">
                <div class="warp-pop-player" style="position: relative;">
                    <iframe id="ifrm_movie_player_popup" name="ifrm_movie_player_popup" src="about:blank" style="width:800px;height:450px;" frameborder="0" marginheight="0" marginwidth="0" scrolling="no"></iframe>
					
					<div class="sect-replay" style="display:none" id="pop_player_relation_wrap">
						<button class="btn-replay movie_player_inner_popup" type="button" data-gallery-idx="0" id="btn_movie_replay">다시보기</button>
						<!-- 없어지는 영역 -->
						<div class="wrap-relationmovie" id="pop_player_relation_item_wrap">
							<strong class="title">관련영상</strong>
							<ul id="pop_player_relation_movie">
                                <li></li>
                            </ul>
						</div><!-- .wrap-relationmovie -->
					</div><!-- .sect-replay -->
					
                </div><!-- .warp-pop-player -->
                <div class="descri-trailer">
                    <strong class="title">영상설명</strong>
                    <textarea readonly="readonly" id="movie_player_popup_caption"></textarea>
                </div>
            </div><!-- .col-player -->
            <div class="col-pop-playerinfo">
                <div id="movie_player_popup_movie_info"></div>
                <div class="sect-trailer">
                    <strong class="title">신규영상</strong>
                    <ul>
                        
                    </ul>
                </div>
            </div><!-- .col-playerinfo -->
        </div><!-- .cols-player -->
        <button type="button" class="btn-close">닫기</button>
    </div>
</div>
</script>

<script id="temp_popup_movie_player_movie_info" type="text/x-jquery-tmpl">
<div class="box-image">
    <a href="/movies/detail-view/?midx=${MovieIdx}" title="${Title} 상세보기 새창">
        <span class="thumb-image">
            <img src="${PosterImage.MiddleImage}" alt="${Title} 포스터" />
            <span class="ico-grade ${MovieGrade.StyleClassName}">${MovieGrade.GradeText}</span>
        </span>
    </a>   
</div>
<div class="box-contents">
    <a href="/movies/detail-view/?midx=${MovieIdx}" title="${Title} 상세보기 새창">
        <strong class="title">${Title}</strong>
    </a>
    <span class="txt-info" style="margin-bottom:2px;">
        <em class="genre">${GenreText}</em>
        <span>
            <i>${OpenDate}</i>
            <strong>${OpenText}</strong>
            {{if D_Day > 0}}
                <em class="dday">D-${D_Day}</em>
            {{/if}}
        </span>
    </span>
{{if IsTicketing }}
    <a class="link-reservation" href="/ticket/?MOVIE_CD=${CGVCode}&MOVIE_CD_GROUP=${CGVCode}">예매</a> 
{{/if}}
</div>
</script>

<script id="temp_popup_movie_player_relation_movie_item" type="text/x-jquery-tmpl">
<li>
    <div class="box-image">
        <a href="#" title="${Title} 영상보기" class="movie_player_inner_popup" data-gallery-idx="${GalleryIdx}">
            <span class="thumb-image">
                <img src="${ImageUrl}" 
                alt="${Title}_트레일러" />
                <span class="ico-play">영상보기</span>
            </span>
        </a>
    </div>
</li>
</script>

<script type="text/javascript" src="http://img.cgv.co.kr/R2014//js/system/crypto.js"></script>
<script type="text/javascript">
    //<![CDATA[
    function closeBanner(){        
        $('#cgv_main_ad').remove();     
        for(var i = 0; i < 2; i++) {
            window.setTimeout(function(){
                $(window).resize()                
            }, 30)
        }
    }
    function showPlayEndEvent() {
        $('#pop_player_relation_wrap').show();
        $('#btn_movie_replay').focus();
    }

    (function ($) {
        $(function () {

            /* side menu move script */
            var isBricks = false;
            $('.sect-aside-banner').asideMenu({'isBricks': isBricks });            
            $('.movie_player_popup').moviePlayer();     //동영상플레이어

            //노원타운
            $('.special5_pop').on('click', function () {
                openNowonTown();
                return false;
            });           
            // 검색 auto validate version.
            $('.btn-go-search').on('click', function () {
                var $frmSearch = $(this).parent().parent('form');
                $frmSearch.submit();
                return false;
            });

            //메인스킵네비
            $('#skipHeader').on('click', function(){
                var $ctn = $('#contents');
                $ctn.attr({
                    tabIndex : -1
                }).focus();				
                return false;
            });

            //현재 URL 해당파라미터 교체
            function updateQueryStringParameter(uri, key, value) {
                var re = new RegExp("([?|&])" + key + "=.*?(&|#|$)", "i");
                if (uri.match(re)) {
                    return uri.replace(re, '$1' + key + "=" + value + '$2');
                } else {
                    var hash =  '';
                    var separator = uri.indexOf('?') !== -1 ? "&" : "?";    
                    if( uri.indexOf('#') !== -1 ){
                        hash = uri.replace(/.*#/, '#');
                        uri = uri.replace(/#.*/, '');
                    }
                    return uri + separator + key + "=" + value + hash;
                }
            }
            //모바일버전 가기
            $('.go-mobile').on('click', function() {
                location.replace(updateQueryStringParameter(location.href, "IsMobile", "N"));
                return false;
            });
        });
    })(jQuery);
	
    function goFamilySite() {
        var famulySiteURL = $(familysite).val();
        if (famulySiteURL != "") {
            var win = window.open(famulySiteURL, 'winFamilySite')
            win.focus();
        }
    }
    function goFtc() {
        var ftcUrl = "http://www.ftc.go.kr/bizCommPop.do?wrkr_no=1048145690";
        window.open(ftcUrl, "bizCommPop", "width=750, height=700, scrollbars=1;");        
    }    
    //]]>
</script>

<!-- 앱다운로드 레이어 팝업 -->
<script type="text/javascript">
    appDownInfoPop();
</script>

<script language="javascript" type="text/javascript">
    //201402 SYH GA추가
    (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
            (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date(); a = s.createElement(o), m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
    })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

    ga('create', 'UA-47126437-1', 'cgv.co.kr'); //지주사
    ga('create', 'UA-47951671-5', 'cgv.co.kr', { 'name': 'cgvTracker' }); //디마팀
    ga('create', 'UA-47951671-7', 'cgv.co.kr', { 'name': 'rollup' }); //추가

</script>


<!-- Google Tag Manager -->
<noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-NNNFR3"height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<script>    (function (w, d, s, l, i) {
        w[l] = w[l] || []; w[l].push({ 'gtm.start':
            new Date().getTime(), event: 'gtm.js'
        }); var f = d.getElementsByTagName(s)[0],
            j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : ''; j.async = true; j.src =
            '//www.googletagmanager.com/gtm.js?id=' + i + dl; f.parentNode.insertBefore(j, f);
    })(window, document, 'script', 'dataLayer', 'GTM-NNNFR3');
</script>
<!-- End Google Tag Manager -->

</body>
</html>