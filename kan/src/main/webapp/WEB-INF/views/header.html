<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="shortcut icon" href="./images/favicon.ico">
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <link rel="shortcut icon" type="image/x-icon" href="http://img.cgv.co.kr/R2014/images/favicon.ico">
    <meta id="ctl00_og_image" property="og:image" content="http://img.cgv.co.kr/WebApp/images/common/logo_new_kakao_prevw.png">
    <link rel="alternate" href="http://m.cgv.co.kr">
    <link rel="shortcut icon" href="http://img.cgv.co.kr/theater_img/favicon.ico" type="image/x-icon">
    <title id="ctl00_headerTitle">영화 그 이상의 감동. CGV</title>
    
    <link rel="shortcut icon" type="image/x-icon" href="http://img.cgv.co.kr/R2014/images/favicon.ico">
    <link rel="stylesheet" media="all" type="text/css" href="css/reset.css">
    <link rel="stylesheet" media="all" type="text/css" href="css/layout.css">
    <link rel="stylesheet" media="all" type="text/css" href="css/module.css">
    <link rel="stylesheet" media="all" type="text/css" href="css/common.css">
    <link rel="stylesheet" media="all" type="text/css" href="css/content.css">
    <link rel="stylesheet" media="all" type="text/css" href="css/eggupdate.css">
    <link rel="stylesheet" media="print" type="text/css" href="css/print.css">    
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