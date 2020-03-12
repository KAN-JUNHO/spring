<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko"><head>
    
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta http-equiv="Expires" content="-1">
        <meta http-equiv="Pragma" content="no-cache">
        <meta http-equiv="Cache-Control" content="No-Cache">
        <meta http-equiv="imagetoolbar" content="no">
        <meta name="viewport" content="width=1024">
        <meta name="keywords" content="CGV, 시지브이, 영화관, 극장, 영화, 티켓, 박스오피스, 극장, Movie, Theater, Cinema, Cgv, cgv, 예매, 상영작">
        <meta name="description" content="CGV는 선진화된 관람문화와 최고의 서비스로 고객에게 잊을 수 없는 감동을 선사합니다. CGV홈페이지를 통해 영화 예매뿐만 아니라 그 이상의 서비스와 감동을 전달하고, 다양한 즐거움과 특별한 경험을 제공하고자 합니다.">
        <meta property="og:site_name" content="영화 그 이상의 감동. CGV">
        <meta id="ctl00_og_title" property="og:title" content="영화 그 이상의 감동. CGV">
        
        <meta id="ctl00_og_image" property="og:image" content="http://img.cgv.co.kr/WebApp/images/common/logo_new_kakao_prevw.png">
        <link rel="alternate" href="http://m.cgv.co.kr">
        <link rel="shortcut icon" href="http://img.cgv.co.kr/theater_img/favicon.ico" type="image/x-icon">
        <title id="ctl00_headerTitle">영화 그 이상의 감동. KAN</title>
        <link rel="shortcut icon" type="image/x-icon" href="http://img.cgv.co.kr/R2014/images/favicon.ico">
        <link rel="stylesheet" media="all" type="text/css" href="css/reset.css">
        <link rel="stylesheet" media="all" type="text/css" href="css/layout.css">
        <link rel="stylesheet" media="all" type="text/css" href="css/common.css">
        <link rel="stylesheet" media="all" type="text/css" href="css/content.css">
        <link rel="stylesheet" media="all" type="text/css" href="css/module.css">
        <link rel="stylesheet" media="all" type="text/css" href="css/eggupdate.css">
        <link rel="stylesheet" media="print" type="text/css" href="css/print.css">      
       
        
      
    
        <link rel="stylesheet" type="text/css" href="http://img.cgv.co.kr/R2014/js/jquery.ui/smoothness/jquery-ui-1.10.4.custom.min.css">
        <script async="" src="//www.googletagmanager.com/gtm.js?id=GTM-NNNFR3"></script><script type="text/javascript" async="" src="http://www.google-analytics.com/analytics.js"></script><script async="" src="//www.google-analytics.com/analytics.js"></script><script type="text/javascript" async="" src="http://www.google-analytics.com/analytics.js"></script><script async="" src="//www.googletagmanager.com/gtm.js?id=GTM-NNNFR3"></script><script async="" src="//www.google-analytics.com/analytics.js"></script><script type="text/javascript" src="/common/js/extraTheaters.js"></script>
        <script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/app.config.js"></script>
        <script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/jquery-1.10.2.min.js"></script>
        <script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.tmpl.min.js"></script>
        <script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.validate.js"></script>
        <script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.paging.min.js"></script>
        <script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/jquery.ui/jquery-ui-1.10.4.custom.min.js"></script>
        <script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/jquery.utils.js"></script>
        <script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/app.utils.js"></script>
        <script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/jquery.utils.pageing.js"></script>
        <script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/app.init.js"></script>
    
        <!--[if lte IE 9]><script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.placeholder.js"></script><![endif]-->
        <script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.dotdotdot.min.js"></script>
        <script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/silverlight_link.js"></script>
        <script src="http://img.cgv.co.kr/R2014/js/slick/slick.js" type="text/javascript" charset="utf-8"></script>
    
        
        <link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/phototicket/phototicket.css">
        <link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/slick.css">
        <link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/slick-theme-custom.css">
    
        <script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/icheck/login.timer.js"></script>
        <script src="http://img.cgv.co.kr/R2014/js/icheck/icheck.min.js" type="text/javascript" charset="utf-8"></script>
        <link rel="stylesheet" type="text/css" href="http://img.cgv.co.kr/R2014/js/icheck/iCheck.css">
    
        <!-- 각페이지 Header Start--> 
        
        <!--/각페이지 Header End--> 
        <script type="text/javascript">
            //<![CDATA[
    
            _TRK_CP = "/홈";
    
            app.config('staticDomain', 'http://img.cgv.co.kr/R2014/')
                .config('imageDomain', 'http://img.cgv.co.kr')
                .config('isLogin', 'False');
    
            // AD FLOAT
            // 암호화 할 문자열과 키값(상수값)을 매개변수로 받는다.
            function EncryptAD(str, key) {
                output = new String;
                Temp = new Array();
                TextSize = str.length;
                for (i = 0; i < TextSize; i++) {
                    // key 값을 원하는 대로 연산을 한다
                    output += String.fromCharCode(str.charCodeAt(i) + parseInt(key) + 123 + i);
                }
                return output;
            }
            // 복호화
            // 암호화 된 문자열과 키값(상수값)을 매개변수로 받는다.
            function DecryptAD(str, key) {
                output = new String;
                Temp = new Array();
                TextSize = str.length;
                for (i = 0; i < TextSize; i++) {
                    // 암호화시 사용한 연산과 같아야 한다.
                    output += String.fromCharCode(str.charCodeAt(i) - (parseInt(key) + 123 + i));
                }
    
                return output;
            }
    
            function getCookieVal(offset) {
                var endstr = document.cookie.indexOf(";", offset);
                if (endstr == -1) endstr = document.cookie.length;
                return unescape(document.cookie.substring(offset, endstr));
            }
            function GetCookieAd(name) {
                var arg = name + "=";
                var alen = arg.length;
                var clen = document.cookie.length;
                var i = 0;
                while (i < clen) { //while open
                    var j = i + alen;
                    if (document.cookie.substring(i, j) == arg)
                        return getCookieVal(j);
                    i = document.cookie.indexOf(" ", i) + 1;
                    if (i == 0) break;
                } //while close
                return null;
            }
            function setCookieAD(name, value, expiredays) {
                var todayDate = new Date();
                todayDate.setTime(todayDate.getTime() + (expiredays * 24 * 60 * 60 * 1000));
                document.cookie = name + "=" + escape(value) + "; expires=" + todayDate.toGMTString() + "; path=/; domain=cgv.co.kr";
            }
            function CloseAD() {
                var AdUrl = window.location.href;
                var ArrAdUrl = AdUrl.split("/");
    
                var CurCookieName = 'CgvPopAd-' + ArrAdUrl[3];
                var CurCookieUrl = GetCookieAd(CurCookieName);
                var CookieUrl = ArrAdUrl[3];
    
                CookieUrl = EncryptAD(CookieUrl, "15442280");
                setCookieAD(CurCookieName, CookieUrl, '1');
                $(document).find('#ad_float1').hide();
            }
            function OpenAD() {
                var AdUrl = window.location.href;
                var ArrAdUrl = AdUrl.split("/");
                var CookieUrl = ArrAdUrl[3];
                var CurCookieName = 'CgvPopAd-' + ArrAdUrl[3];
                var CurCookieUrl = GetCookieAd(CurCookieName);
    
                if (CurCookieUrl == null) {
                    CurCookieUrl = "";
                }
                else {
                    CurCookieUrl = DecryptAD(CurCookieUrl, "15442280");
                }
    
                if (CurCookieUrl.indexOf(CookieUrl) != -1) {
                    $(document).find('#ad_float1').hide();
                }
    
                //section.cgv.co.kr 매거진 체크
                var magazineckurl = GetCookieAd("CgvPopAd-magazine");
                if (magazineckurl != null) {
                    var magazineck = DecryptAD(magazineckurl, "15442280");
                    if (magazineck != null && magazineck == "magazine") {
                        //값이있는경우 표시하지않음
                        $(document).find('#ad_float1').hide();
                    }
                }
            }
    
            //]]>
        </script>
        <script type="text/javascript" src="https://nsso.cjone.com/findCookieSecured.jsp?cjssoq=TBYgFKhxDvNLqETb2gBUaxKCSP6e1NbdSkx8lJQkScVIK4%2bChw%2fZEkvg0hgPG%2fNhUoAgSu3SnKlOEMJQf%2fRYP0syRktBLzZVSVdjQml2cG1mSkdlRXRTWm80K3VrRTVJcGpjVGpKd0IxaGFObHpvTU5RT0YvNzRJSzQrY0pMOEs%3d"></script>
    <script type="text/javascript" src="http://img.cgv.co.kr/R2014//js/system/system.packed.js"></script></head>


    <body class="" style="">

        <form name="ssologinfrm" action="https://www.cgv.co.kr/user/login/login-sso.aspx" method="post" novalidate="novalidate">
            <input type="hidden" id="cjssoq" name="cjssoq">
            <input type="hidden" name="returnURL" value="/default.aspx">
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
                        <iframe src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/main@TopBar_EX" width="100%" height="80" title="영화광고-인비저블맨" frameborder="0" scrolling="no" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" name="TopBanner" id="TopBanner"></iframe>
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
                    	<c:if test="${member==null}">
                    		
							<li><a href="/kan/user/login/" class="login"><span>로그인</span></a></li>
						</c:if>
						<c:if test="${member!=null}">
							<li><a href="logout" class="logout"><span>${member.id}님</span></a></li>
						</c:if>
                        <li><a href="/kan/user/register/" class="join"><span>회원가입</span></a></li>
                        <li><a href="/kan/user/register/" class="mycgv required-login" data-url="/user/register/"><span>MY CGV</span></a></li>
                        <li><a href="/kan/user/vip-lounge/" class="vip"><span>VIP LOUNGE</span></a></li>
                        <li><a href="/kan/user/memberShip/ClubService.aspx" title="새창" class="club specialclub"><span>CLUB 서비스</span></a></li>
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
                            <li class="movie"><a href="/kan/movies/">영화</a>
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
        <!-- /Header -->
        <!-- Contaniner -->
        <div id="contaniner" class="bg-bricks main bg-bricks"><!-- 벽돌 배경이미지 사용 시 class="bg-bricks" 적용 / 배경이미지가 없을 경우 class 삭제  -->
    
            <!-- LineMap -->
    
            
            <!-- //LineMap -->
    
            <!-- Contents Area -->
            <div id="contents" class="">
                
                <!-- Contents Start -->
                
    <input type="hidden" id="isOpenUserEmailYNPopup" name="isOpenUserEmailYNPopup" value="False">
    <input type="hidden" id="isTown" name="isTown" value="N">
    <input type="hidden" id="isVip" name="isVip" value="N">
    <input type="hidden" id="isVipNot" name="isVipNot" value="N">
    <input type="hidden" id="isKangdong" name="isKangdong" value="0">
    <input type="hidden" id="isGoonja" name="isGoonja" value="0">
    
    <div class="sect-common">
        <div class="slider" id="slider">
            <button type="button" class="btn-pause" style="left: 510px; display: block;">일시멈춤</button>
                
                <!-- 비 로그인 시-->
                   
                <div class="item-wrap">
                    <button type="button" class="on" style="left: 456px; display: block;" title="선택">LET'S PLAY AT CGV!</button>
                    <a class="item" style="width: 980px; height: 450px; display: none;">
                        <img src="http://img.cgv.co.kr/banner/main/mainbig_new_1.jpg" alt="LET'S PLAY AT CGV!" style="width: 100%; height: 100%;">
                        <p class="main_banner_text2 type1"><br>즐겁고 재밌는 무언가를 찾고 있나요?<br>CGV에서 같이 놀아요!</p>
                    </a>
                </div>
                
            
                    <div class="item-wrap on">
                        <button type="button" class="on" style="left: 474px; display: block;" title="선택됨.">무비헌터</button>
                        <a class="item" style="width: 980px; height: 450px; display: none;">
                            <img src="http://img.cgv.co.kr/Front/Main/2020/0210/15813168968540.jpg" alt="무비헌터" style="width: 100%; height: 100%;">
                        </a>
                    </div>
                
                    <div class="item-wrap">
                        <button type="button" style="left: 492px; display: block;" class="">IMAX 포스터북_버즈 오브 프레이</button>
                        <a class="item" style="width: 980px; height: 450px; display: none;">
                            <img src="http://img.cgv.co.kr/Front/Main/2020/0128/15801803287500.jpg" alt="IMAX 포스터북_버즈 오브 프레이" style="width: 100%; height: 100%;">
                        </a>
                    </div>
                
    
    
            <button type="button" class="btn-prev">이전 페이지 이동</button>
            <button type="button" class="btn-next">다음 페이지 이동</button>
        </div>
    </div>
    <h3><img src="http://img.cgv.co.kr/R2014/images/title/h3_movie_selection.gif" alt="MOVIE SELECTION"></h3>
    <div class="cols-movie">
        <div id="Selection_L" class="col-slider">
            <iframe src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/main@Selection_L" width="733" height="388" title="영화광고-수퍼소닉" frameborder="0" scrolling="no" marginwidth="0" marginheight="0" name="Movie_Selection_L" id="Movie_Selection_L"></iframe>
        </div>
        <div id="Selection_R" class="col-ad">
            <iframe src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/main@Selection_R_01" width="240" height="388" title="영화광고-1917" frameborder="0" scrolling="no" marginwidth="0" marginheight="0" name="Movie_Selection_R" id="Movie_Selection_R"></iframe>
        </div>
    </div>
    <h3><img src="http://img.cgv.co.kr/R2014/images/title/h3_event.gif" alt="EVENT"></h3>
    <ul class="tab-menu">
    
        <li class="on">
            <a href="#" data-filter-type="08" title="현재 선택됨">CGV스페셜</a>
        </li>
        <li>
            <a href="#" data-filter-type="02">영화/예매</a>
        </li>
        <li>
            <a href="#" data-filter-type="07">CGV아트하우스</a>
        </li>
        <li>
            <a href="#" data-filter-type="03">제휴/할인</a>
        </li>
        <li class="last">
            <a href="#" data-filter-type="04">멤버십</a>
        </li>
    </ul>
    <div class="sect-event">
        <ul>
        
                <li>
                    <a href="http://www.cgv.co.kr/culture-event/event/detail-view.aspx?idx=20558&amp;menu=0">
                        <img src="http://img.cgv.co.kr/Front/Main/2019/1219/15767428182500.jpg" alt="IMAX 컬렉션 북">
                    </a>
                </li>
            
                <li>
                    <a href="http://www.cgv.co.kr/culture-event/event/detail-view.aspx?idx=20685&amp;menu=0">
                        <img src="http://img.cgv.co.kr/Front/Main/2019/1224/15771764068110.jpg" alt="SPHERE X">
                    </a>
                </li>
            
                <li>
                    <a href="http://section.cgv.co.kr/event/running/EventZone.aspx?idx=1494">
                        <img src="http://img.cgv.co.kr/Front/Main/2020/0131/15804580028860.jpg" alt="VIP 컬쳐위크">
                    </a>
                </li>
            
                <li>
                    <a href="http://m.cgv.co.kr/WebApp/EventNotiV4/Event/EventZone.aspx?idx=3051&amp;seq=/WebApp/EventNotiV4/Event/EventZone.aspx?idx=3051&amp;iPage=1">
                        <img src="http://img.cgv.co.kr/Front/Main/2020/0210/15813171098170.jpg" alt="무비헌터">
                    </a>
                </li>
            
        </ul>
    </div>
    <div class="cols-banner">
        <div class="col-ad">
            <div class="box-com">
                <div class="box-inner">
                    <a href="http://section.cgv.co.kr/discount/Special/discount/EventDetail.aspx?Idx=11972&amp;pb=Y "><img src="http://img.cgv.co.kr/Front/Main/2019/1104/15728438029070.jpg" alt="현대오일뱅크"></a>
                </div>
            </div>
        </div>
        <div class="col-hd">
            <a href="/arthouse"><img src="http://img.cgv.co.kr/R2014/images/main/main_moviecollage.jpg" alt="CGV ARTHOUSE, A Good Movie, A Better Life"></a>
        </div>
        <div class="col-collage">
            <div class="box-com">
                <div id="Branding_R" class="box-inner">
                    <iframe src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/main@Branding" width="226" height="259" title="기업광고-CGV 기프트 카드" frameborder="0" scrolling="no" marginwidth="0" marginheight="0" name="Branding" id="Branding"></iframe>    
                </div>
            </div>
        </div>
    </div>
    
    
    
    
    <div id="cgvwrap_b" style="display:none">
        
        <!-- dimmed_bg는 기존에 쓰는 방식에 있으면 삭제 바랍니다. : 160624-->
        <div class="dimmed_bg"></div>
    
        <!-- 팝업사이즈에 맞게 중앙에 띄워주세요. : 160624 -->
        <div class="pop_iexp_wrap" style="position:fixed; left:50%; top:50%; width:600px; margin:-165px 0 0 -300px; z-index:1000;">
            <div class="pi_headline">
                <img src="http://img.cgv.co.kr/images/popup/1606_iexp/pop_iexp_headline2.jpg" alt="CGV 홈페이지는 고객님께서 사용중인 MS Windows XP에서 정상적인 서비스 이용이 어려울 수 있으며, OS업데이트를 권장합니다.">
            </div>
            <div class="down_app">
                <p><img src="http://img.cgv.co.kr/images/popup/1606_iexp/pop_iexp_downtxt.jpg" alt="OS 업데이트가 어려운 경우 모바일앱을 이용하세요!!!"></p>
                <a class="btn" href="https://itunes.apple.com/kr/app/id370441190?mt=8" target="_blank"><img src="http://img.cgv.co.kr/images/popup/1606_iexp/btn_down_ios.jpg" alt="Ios down"></a>
                <a class="btn" href="https://play.google.com/store/apps/details?id=com.cgv.android.movieapp" target="_blank"><img src="http://img.cgv.co.kr/images/popup/1606_iexp/btn_down_android.jpg" alt="Android down"></a>
            </div>
            <a class="btn_close">닫기</a>
    
    
    
     </div>
    
     </div>
     
     <div id="cgvwrap_a" style="display:none">
        
        <!-- dimmed_bg는 기존에 쓰는 방식에 있으면 삭제 바랍니다. : 160624-->
        <div class="dimmed_bg"></div>
    
        <!-- 팝업사이즈에 맞게 중앙에 띄워주세요. : 160624 -->
        <div class="pop_iexp_wrap" style="position:fixed; left:50%; top:50%; width:600px; margin:-265px 0 0 -300px; z-index:1000;">
            <div class="pi_headline">
                <img src="http://img.cgv.co.kr/images/popup/1606_iexp/pop_iexp_headline1.jpg" alt="CGV 홈페이지는 Internet Explorer 9이상에서 최적의 서비스 이용이 가능합니다. IE9 이하 브라우저에서 이용 시 정상적인 서비스 이용이 어려울 수 있으며, 브라우저 업그레이드 하시기를 권장합니다.">
            </div>
            <ul class="down_browser">
                <li><a href="http://windows.microsoft.com/ko-kr/windows/downloads" target="_blank"><img src="http://img.cgv.co.kr/images/popup/1606_iexp/btn_down_ie.jpg" alt="Internet Explorer 다운받기"></a></li>
                <li><a href="https://www.google.com/chrome/browser/desktop/index.html" target="_blank"><img src="http://img.cgv.co.kr/images/popup/1606_iexp/btn_down_chrome.jpg" alt="Chrome 다운받기"></a></li>
            </ul>
            <div class="down_app">
                <p><img src="http://img.cgv.co.kr/images/popup/1606_iexp/pop_iexp_downtxt.jpg" alt="OS 업데이트가 어려운 경우 모바일앱을 이용하세요!"></p>
                <a class="btn" href="https://itunes.apple.com/kr/app/id370441190?mt=8" target="_blank"><img src="http://img.cgv.co.kr/images/popup/1606_iexp/btn_down_ios.jpg" alt="Ios down"></a>
                <a class="btn" href="https://play.google.com/store/apps/details?id=com.cgv.android.movieapp " target="_blank"><img src="http://img.cgv.co.kr/images/popup/1606_iexp/btn_down_android.jpg" alt="Android down"></a>
            </div>
            <a class="btn_close">닫기</a>
    </div>
    </div>
    
    <script id="temp_event" type="text/x-jquery-tmpl">
    <li><a href=""  {{if (Blank) }}target="_blank"{{/if}}><img src="" alt="" /></a></li>
    </script>
    
    <script id="temp_popup" type="text/x-jquery-tmpl">
    <div class="layer-contents" id="wrap_main_notice" style="top:360px;">
    <!-- 메인팝업 -->
        <div class="wrap-noti-main" id="mainNotice">
            <div class="noti-main">
                <strong class="hidden">공지사항</strong>
                <div class="slider" id="mainNoticeSlider">
                    <button type="button" class="btn-play">자동 넘기기 시작</button>
                    
                        {{each List}}
                            {{html Contents}}
                        {{/each}}
                          
                    <button type="button" class="btn-prev">이전 페이지 이동</button>
                    <!-- strong 에 현재 보이는 index, span 에 총 length -->
                    <div class="noti-num">
                        <strong>1</strong><span>/</span>
                    </div>
                    <button type="button" class="btn-next">다음 페이지 이동</button>
                </div>
            </div>
            <div class="noti-footer">
                <span class="check"><input id="open_today" type="checkbox" /><label for="open_today">오늘 하루 그만 보기</label></span>
                <button class="btn-close" type="button"><span class="hidden">공지사항</span>닫기</button>
            </div>
        </div><!-- .wrap-noti-main -->
    <!-- 메인팝업끝 -->
    </div>
    </script>
    
    <script type="text/javascript">
        //<![CDATA[
         //CGV 공지 팝업 주석처리
        //function getCookie(name) {
        //    var nameOfCookie = name + "=";
        //    var x = 0;
        //    while (x <= document.cookie.length) {
        //        var y = (x + nameOfCookie.length);
        //        if (document.cookie.substring(x, y) == nameOfCookie) {
        //            if ((endOfCookie = document.cookie.indexOf(";", y)) == -1)
        //                endOfCookie = document.cookie.length;
        //            return unescape(document.cookie.substring(y, endOfCookie));
        //        }
        //        x = document.cookie.indexOf(" ", x) + 1;
        //        if (x == 0)
        //            break;
        //    }
        //    return "";
        //}    
        //if (getCookie("cgv_notice") != "done") {
        //    var spcwin = window.open('/popup/1411_personal_popup_1107_v2.html', 'cgv_notice', "height=414,width=280,menubar=no,scrollbars=no,resizeable=no,toolbar=no,left=355,top=100")
        //    spcwin.focus();        
        //}       
        (function ($) {
            $(function () {
    
            
                var eventData = [{"EventGroup":"05","EventTitle":"CGV 여의도 4DX 오픈 이벤트","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2013/1216/cgv-4dxopen banner.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/event/running/view.aspx?Idx=10975&flag=image&sTap=&pb=Y&gubun=&etype=ing","Blank":false},{"EventGroup":"05","EventTitle":"[CGV 부천]RENEWAL OPENING","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2013/1212/membership.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/event/running/view.aspx?Idx=10999&flag=image&sTap=&pb=Y&gubun=&etype=ing","Blank":false},{"EventGroup":"07","EventTitle":"이동진의 라이브톡","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2020/0210/15813038546580.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/culture-event/event/detail-view.aspx?idx=20817&menu=8","Blank":false},{"EventGroup":"04","EventTitle":"CGV VIP 더블적립","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2018/0104/15150348579280.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/culture-event/event/detail-view.aspx?idx=15366&menu=9","Blank":false},{"EventGroup":"04","EventTitle":"CGV VIP 스페셜데이","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2018/0104/15150348579590.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/user/vip-lounge/event/2017/vip-special-day.aspx","Blank":false},{"EventGroup":"07","EventTitle":"조조 래빗 포스터","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2020/0203/15806978029100.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/culture-event/event/detail-view.aspx?idx=20790&menu=0","Blank":false},{"EventGroup":"07","EventTitle":"아티스트 뱃지","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2020/0210/15813038546890.jpg","ThumnailLinkUrl":"http://section.cgv.co.kr/event/running/EventZone.aspx?idx=1498","Blank":false},{"EventGroup":"07","EventTitle":"타여초 뱃지 패키지","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2020/0205/15808940711120.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/culture-event/event/detail-view.aspx?idx=20804&menu=0","Blank":false},{"EventGroup":"04","EventTitle":"CGV VIP 온라인 쿠폰북","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2018/0104/15150348577720.jpg","ThumnailLinkUrl":"http://section.cgv.co.kr/event/Vip_CouponBook/default.aspx","Blank":false},{"EventGroup":"08","EventTitle":"IMAX 컬렉션 북","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2019/1219/15767428182500.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/culture-event/event/detail-view.aspx?idx=20558&menu=0","Blank":false},{"EventGroup":"08","EventTitle":"SPHERE X","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2019/1224/15771764068110.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/culture-event/event/detail-view.aspx?idx=20685&menu=0","Blank":false},{"EventGroup":"06","EventTitle":"씨네키즈 특별관 페이지","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2013/1113/cinekids_banner.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/theater/special/Default.aspx?theaterCode=&onlyOne=CK","Blank":false},{"EventGroup":"08","EventTitle":"VIP 컬쳐위크","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2020/0131/15804580028860.jpg","ThumnailLinkUrl":"http://section.cgv.co.kr/event/running/EventZone.aspx?idx=1494","Blank":false},{"EventGroup":"08","EventTitle":"무비헌터","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2020/0210/15813171098170.jpg","ThumnailLinkUrl":"http://m.cgv.co.kr/WebApp/EventNotiV4/Event/EventZone.aspx?idx=3051&seq=/WebApp/EventNotiV4/Event/EventZone.aspx?idx=3051&iPage=1","Blank":false},{"EventGroup":"05","EventTitle":"private dining CINE de CHEF","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2013/1202/cinedechef private dining.jpg","ThumnailLinkUrl":" http://www.cgv.co.kr/event/running/view.aspx?Idx=10866&flag=image&sTap=&pb=Y&gubun=&etype=ing","Blank":false},{"EventGroup":"06","EventTitle":"4DX","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2013/0731/4dx.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/theater/special/Default.aspx?theaterCode=&onlyOne=4D14","Blank":false},{"EventGroup":"05","EventTitle":"[인천] 청소년 5천원 이벤트","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2013/1128/sale.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/event/running/view.aspx?Idx=10825&flag=image&sTap=&pb=Y&gubun=&etype=ing","Blank":false},{"EventGroup":"06","EventTitle":"imax","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2013/0731/imax.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/theater/special/Default.aspx?theaterCode=&onlyOne=07","Blank":false},{"EventGroup":"04","EventTitle":"CGV VIP 반값할인","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2018/0104/15150348579910.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/culture-event/event/detail-view.aspx?idx=15363&menu=9","Blank":false}];
                var popupData = {'List' : [{"Title":"스마일페이","Contents":"<div class=\"item-wrap\"><div class=\"item\"><div style=\"text-align:center;\"><a href=\"http://section.cgv.co.kr/event/running/EventZone.aspx?idx=1400\"><img alt=\"\" height=\"380\" src=\"http://img.cgv.co.kr/Event/cultureplexPhoto/15693148655180.jpg\" width=\"280\" /></a></div></div></div>"}]};
                var userPopupData = [];
    
                var sliderOptions = { 'effect': 'fade', 'auto': true };
                mainMotion = $('#slider').visualMotion(sliderOptions);
    
                var mSliderOptions = { 'effect': 'fade', callback: moveCallback };
                function moveCallback(_index) {
                    $('#movie_slider > .now-showing').eq(_index).show().siblings('.now-showing').hide();
                }
                $('#movie_slider').visualMotion(mSliderOptions);
    
                function getCookie(cName) {
                    cName = cName + '=';
                    var cookieData = document.cookie;
                    var start = cookieData.indexOf(cName);
                    var cValue = '';
                    if (start != -1) {
                        start += cName.length;
                        var end = cookieData.indexOf(';', start);
                        if (end == -1) end = cookieData.length;
                        cValue = cookieData.substring(start, end);
                    }
                    return unescape(cValue);
                }
    
                function setCookie(name, value, expiredays) {
                    var todayDate = new Date();
                    todayDate.setDate(todayDate.getDate() + expiredays);
                    document.cookie = name + "=" + escape(value) + "; path=/; expires=" + todayDate.toGMTString() + ";"
                }
    
                function setCookie_Main(name, value) {
                    var todayDate = new Date();
    
                    todayDate.setSeconds(59);
                    todayDate.setMinutes(59);
                    todayDate.setHours(23);
    
                    document.cookie = name + "=" + escape(value) + "; path=/; expires=" + todayDate.toGMTString() + ";"
                }
    
                function openPopup() {
                    var cookie = getCookie("mainpopup");
    
                    if (!popupData || !popupData.List || popupData.List.length < 1 || cookie == "true")
                        return;
    
                    /* 전체 template */
                    var $std = $('.skipnaiv'),
                    options = {
                        '$target': $std,
                        'html': $("#temp_popup").tmpl(popupData)
                    };
                    app.instWin.add(options);
                    /* 위치잡는 스크립트 */
                    var offsetLeft = $('#contents').offset().left;
                    $std.next('.layer-wrap').css('left', offsetLeft + 30);
                    /* 슬라이더 */
                    var popsliderOptions = {
                        //2014.09.15 디마팀 방재현님 요청으로 2초로 (수정 default : 4초), 이지용님 요청으로 3초로 재수정
                        'term'      : 3000,
                        'effect': 'none',
                        'auto': true,
                        callback: function (_index) {
                            $('.noti-num strong').text(_index + 1);
                        }
                    };
                    $('#mainNoticeSlider').visualMotion(popsliderOptions);
                }
    
                openPopup();
    
                $('#open_today').on('click', function () {
                    var isChecked = $("#open_today").is(":checked");
    
                    if (isChecked) {
                        setCookie_Main("mainpopup", "true");
    
                        $('.layer-wrap').remove();
                    }
    
                });
    
                $('.tab-menu > li > a').on('click', function () {
                    var filterType = $(this).attr('data-filter-type');
                    var liObj = $('.tab-menu > li');
                    var selectObj = $(this).parent('li');
    
                    liObj.removeClass("on");
                    liObj.attr("title", "");
                    selectObj.addClass("on");
                    selectObj.attr("title", "현재 선택");
    
                    searchEventList(filterType);
                    return false;
    
                });
    
                function searchEventList(filterType) {
                    var count = 0;
    
                    var $temp = $('<ul></ul>');
    
                    for (var idx in eventData) {
                        var item = eventData[idx];
    
                        if (item['EventGroup'] == filterType) {
                            count++;
                            if (count > 4) break;
                            $("#temp_event").tmpl(item).appendTo($temp);
                        }
                    }
                    
                    $('.sect-event').html($temp);
                }
    
    
    
                function OpenVip(){  
    
                 var cookie = getCookie("vip2016");
    
                 if (cookie == 'true')
                    return;
    
                 if($('#isVip').val() == 'Y') 
                 {  
                      window.open('/user/popup/vip-2016.aspx', 'vip2016', 'width=280,height=414,toolbar=no,scrollbars=no, status=0,top=0,left=0');
                 }
               }
    
                function OpenSystemPopup() {
                    
                    if (userPopupData && userPopupData.length > 0) {
                        for (var i=0;i<userPopupData.length;i++) {
                            var item = userPopupData[i];
                            var popupName = item['CookieName'];
    
                            if (getCookie(popupName) == 'done') { return; }
    
                            var option = 'width=' + item['Width'] + ',height=' + item['Height'] + ',toolbar=no,scrollbars=no,status=0,top=' + item['Y'] + ',left=' + item['X'];
                            var url = item['IsUrl'] == 'n' ? '/user/popup/personal-system.aspx?idx=' + item['IDX'] : item['Contents'];
    
                            var userPopup = window.open(url, popupName, option);
                            userPopup.focus();
                        }
                    }
                }
    
                function OpenVipNot() {
    
                    var cookie = getCookie("vip2015not");
                 
                    if (cookie == 'ture')
                        return;
    
                    if ($('#isVipNot').val() == "Y") {               
                        window.open('/user/popup/vip_2015_unissued.aspx', 'vip2015not', 'width=280,height=400,toolbar=no,scrollbars=no, status=0,top=0,left=0');
    
                    }
                }
    
    
                function OpenfamilyPoint(){  
    
                 var cookie = getCookie("familyPointInfo");
    
                 if (cookie == 'true')
                    return;
    
                if($('#isKangdong').val() == "1"&& $('#isGoonja').val() == "1") 
                 {  
                      window.open('/user/popup/family_total.aspx', 'familyPointInfo', 'width=280,height=414,toolbar=no,scrollbars=no, status=0,top=0,left=0');
                 }
    
                 else if($('#isKangdong').val() == "1") 
                 {  
                      window.open('/user/popup/family_total.aspx', 'familyPointInfo', 'width=280,height=414,toolbar=no,scrollbars=no, status=0,top=0,left=0');
                 }
    
                 else if($('#isGoonja').val() == "1") 
                 {  
                      window.open('/user/popup/family_total.aspx', 'familyPointInfo', 'width=280,height=414,toolbar=no,scrollbars=no, status=0,top=0,left=0');
                 }else{
                    return;
                 }
               }
    
    
    
              $('.btn_close').on('click', function () {
                 $("#cgvwrap_b").hide();
                 $("#cgvwrap_a").hide();
               
              });
    
    
              var uAgent = navigator.userAgent;  
             
              if( uAgent.indexOf("NT 5.1") != -1 ) 
              {           
                  $("#cgvwrap_b").show();            
              }
              else if (uAgent.indexOf("MSIE 6") > 0 || uAgent.indexOf("MSIE 7") > 0 || uAgent.indexOf("MSIE 8") > 0 ) 
              {       
                  $("#cgvwrap_a").show();  // IE버전     
              }
    
               
                  
    
    
                //OpenVipNot();
                
    
                //OpenVip();
    
             
                OpenSystemPopup();
                OpenfamilyPoint();
    
                /* CGV 공지사항 */
                (function(a){a.fn.noticeTicker=function(b){var c={speed:700,pause:4000,showItems:3,animation:"",mousePause:true,isPaused:false,direction:"up",height:0};var b=a.extend(c,b);moveUp=function(g,d,e){if(e.isPaused){return}var f=g.children("ul");var h=f.children("li:first").clone(true);if(e.height>0){d=f.children("li:first").height()}f.animate({top:"-="+d+"px"},e.speed,function(){a(this).children("li:first").remove();a(this).css("top","0px")});if(e.animation=="fade"){f.children("li:first").fadeOut(e.speed);if(e.height==0){f.children("li:eq("+e.showItems+")").hide().fadeIn(e.speed)}}h.appendTo(f)};moveDown=function(g,d,e){if(e.isPaused){return}var f=g.children("ul");var h=f.children("li:last").clone(true);if(e.height>0){d=f.children("li:first").height()}f.css("top","-"+d+"px").prepend(h);f.animate({top:0},e.speed,function(){a(this).children("li:last").remove()});if(e.animation=="fade"){if(e.height==0){f.children("li:eq("+e.showItems+")").fadeOut(e.speed)}f.children("li:first").hide().fadeIn(e.speed)}};return this.each(function(){var f=a(this);var e=0;f.css({overflow:"hidden",position:"relative"}).children("ul").css({position:"absolute",margin:0,padding:0}).children("li").css({margin:0,padding:0});if(b.height==0){f.children("ul").children("li").each(function(){if(a(this).height()>e){e=a(this).height()}});f.children("ul").children("li").each(function(){a(this).height(e)});f.height(e*b.showItems)}else{f.height(b.height)}var d=setInterval(function(){if(b.direction=="up"){moveUp(f,e,b)}else{moveDown(f,e,b)}},b.pause);if(b.mousePause){f.bind("mouseenter",function(){b.isPaused=true}).bind("mouseleave",function(){b.isPaused=false})}})}})(jQuery);
                $('.sect-notice-list .inner').noticeTicker({ 
                    speed: 500,
                    pause: 5000,
                    animation: 'slide',
                    mousePause: true,
                    showItems: 1
                });
           
             
    
             
               
    
           
            
           
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
            <iframe src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/main@Bottom" width="100%" height="240" title="광고-CGV 기프트 카드" frameborder="0" scrolling="no" marginwidth="0" marginheight="0" name="Bottom" id="Bottom"></iframe>
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
                    <li><a href="http://www.cgv.co.kr/theaters/special/?regioncode=CF" class="cinenforet">CINE&amp;FORET</a></li>
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
                        <a href="javascript:void(0);" onclick="goFtc()" class="btn_goFtc"><img src="http://img.cgv.co.kr/r2014/images/common/btn_reg.png" alt="사업자정보확인"></a><a>					
                    </a></p><a>
                    <p class="vl">
                        <span>호스팅사업자 : CJ올리브네트웍스</span><span>개인정보보호 책임자 : 정종민</span><span>대표이메일 : cjcgvmaster@cj.net</span><span>CGV고객센터 : 1544-1122</span>
                    </p>
                    <p class="copyright">© CJ CGV. All Rights Reserved</p>
                </a></div><a>
                <div class="familysite">
                    <label for="familysite" class="hidden">CJ그룹 계열사 바로가기</label>
                    <select id="familysite">
                        <option value="">계열사 바로가기</option>
                          <optgroup label="CJ그룹">
    <option value="http://www.cj.net/">CJ주식회사</option>
    </optgroup><optgroup label="엔터테인먼트 &amp; 미디어">
    <option value="http://www.cjenm.com/">CJ ENM (E&amp;M)</option>
    <option value="http://www.cgv.co.kr/">CJ CGV</option>
    <option value="http://www.cjpowercast.com/">CJ파워캐스트</option>
    </optgroup><optgroup label="식품 &amp; 식품서비스">
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
            </a></div><a>
        </a></div><a>
    
        <!-- Float Ad -->
    
            <!-- footer_area (e) -->
    
            <div class="adFloat2" style="display:none">
    
                <iframe src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@Popicon" width="154" height="182" frameborder="0" scrolling="no" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" allowtransparency="true" id="ad_float1" title="광고-수퍼소닉" style="display: none;"></iframe>
            </div>
            <script type="text/javascript">            OpenAD();</script>
            <!-- //Float Ad -->
        </a></div><a>
        <!-- /Footer -->
    
        <!-- Aside Banner :  -->
        </a>
            <div class="btn-top">
                <a href="#" onclick="window.scrollTo(0,0);return false;"><span>최상단으로 이동</span></a>
            </div>
        </div>
        <!-- //Aside Banner -->
        
    
    
    
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
        <a href="/movies/detail-view/?midx=" title=" 상세보기 새창">
            <span class="thumb-image">
                <img src="" alt=" 포스터" />
                <span class="ico-grade "></span>
            </span>
        </a>   
    </div>
    <div class="box-contents">
        <a href="/movies/detail-view/?midx=" title=" 상세보기 새창">
            <strong class="title"></strong>
        </a>
        <span class="txt-info" style="margin-bottom:2px;">
            <em class="genre"></em>
            <span>
                <i></i>
                <strong></strong>
                {{if D_Day > 0}}
                    <em class="dday">D-</em>
                {{/if}}
            </span>
        </span>
    {{if IsTicketing }}
        <a class="link-reservation" href="/kan/ticket/?MOVIE_CD=&MOVIE_CD_GROUP=">예매</a> 
    {{/if}}
    </div>
    </script>
    
    <script id="temp_popup_movie_player_relation_movie_item" type="text/x-jquery-tmpl">
    <li>
        <div class="box-image">
            <a href="#" title=" 영상보기" class="movie_player_inner_popup" data-gallery-idx="">
                <span class="thumb-image">
                    <img src="" 
                    alt="_트레일러" />
                    <span class="ico-play">영상보기</span>
                </span>
            </a>http://localhost:8080/ticket/?MOVIE_CD=20022936&MOVIE_CD_GROUP=20022889
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
                var isBricks = true;
                $('.sect-aside-banner').asideMenu({ isMain:true,'isBricks': isBricks });            
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
    
    
    

</body></html>