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
                        <iframe src="/images/AD.jpg" width="100%" height="80" title="ìíê´ê³ -í´ì¹ì§ìì" frameborder="0" scrolling="no" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" name="TopBanner" id="TopBanner">
                        </iframe>
                    </div>
                    <div class="adextend" id="adExtend"></div>
                </div>

            </div>
        </div>

	<div id="header">
		<div class="head">
			
            <!-- ìë¹ì¤ ë©ë´ --> 
            

<!-- ì±ë¤ì´ë¡ë ë ì´ì´ íì -->
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

                alert('ì±ì ì íí´ì£¼ì¸ì.');
                return;
            }

            if ($('#phoneNum1').val() == '') {

                alert('ì²«ë²ì§¸ í´ëí°ë²í¸ë¥¼ ìë ¥í´ì£¼ì¸ì.');
                return $('#phoneNum1').focus();
            }

            if ($('#phoneNum2').val() == '') {
                alert('ëë²ì§¸ í´ëí°ë²í¸ë¥¼ ìë ¥í´ì£¼ì¸ì.');
                return $('#phoneNum2').focus();
            }

            if ($('#phoneNum3').val() == '') {
                alert('ì¸ë²ì§¸ í´ëí°ë²í¸ë¥¼ ìë ¥í´ì£¼ì¸ì.');
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
                            // ë±ë¡ëì§ ìì
                            alert('ì ì¡ì ì¤í¨íììµëë¤. ì ìí ë¤ì ìëí´ì£¼ìê¸¸ ë°ëëë¤.');
                            break;
                        case "1":

                            //alert('ì±ê³µ');
                            alert('ê³ ê°ëì í¸ëí° ë²í¸ ' + phoneNum_1 + '-' + phoneNum_2 + '-' + phoneNum_3 + 'ë¡ ì ì¡ìë£ íììµëë¤.');
                            $('#phoneNum1').val('')
                            $('#phoneNum2').val('')
                            $('#phoneNum3').val('')
                            $layer.removeClass('on');
                            $(this).blur();

                            // ë±ë¡ìë£
                            break;
                        case "2":
                            // ë±ë¡ëì§ ìì
                            alert('1ì¼ 3íê¹ì§ë§ ë°ì¡ ê°ë¥í©ëë¤.');
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
            GA Tag ìë¨ appdownload ë§ì°ì¤ ì¤ë²ì ì ì¡
            *******************************************/
            ga('send', { hitType: 'pageview', location: 'http://www.cgv.co.kr/appdownload', title: 'ì±ë¤ì´ë¡ë ë ì´ì´íì' });
            ga('cgvTracker.send', { hitType: 'pageview', location: 'http://www.cgv.co.kr/appdownload', title: 'ì±ë¤ì´ë¡ë ë ì´ì´íì' });
            ga('rollup.send', { hitType: 'pageview', location: 'http://www.cgv.co.kr/appdownload', title: 'ì±ë¤ì´ë¡ë ë ì´ì´íì' });

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
				<h2>ìë¹ì¤ ë©ë´</h2>
                <ul class="util">
					<li>
                        <!-- 2019.09 ìì  -->
                        <a href="#" class="app" style="cursor:pointer" title="CGVì± 4.0 ì¤ì¹ ìì°½"><span>CGVì± 4.0 ì¤ì¹</span></a>
						<!-- ì± ë¤ì´ë¡ë ë ì´ì´ íì 2019.09 SMS ì ì¡,íë¨ ìì­ ì ê±° -->
						<div class="app-downinfo v2">
							<div class="inner">
								<div class="tit-box">
									<strong><em>CGV</em>ì±ìì<br>ë í¸ë¦¬íê² ì´ì©íì¸ì.</strong>
								</div>
								<div class="choice-way">
									<div class="qr">
										<div class="qr-codeimg">
											<img src="http://img.cgv.co.kr/R2014//images/common/img_qrcode.gif" alt="QR CODE">
										</div>
                                        <div class="qr-desc">
                                            <p>QRì½ëë¥¼ ì¤ìºíê³ <br>ì± ì¤ì¹ íì´ì§ë¡ ë°ë¡ ì´ëíì¸ì </p>
                                        </div>
									</div>
								</div>
								<a class="btn_close" href="#">íì ë«ê¸°</a>
							</div>
						</div>
                        <!-- 2019.09 ìì  -->
                    </li>
					<li><a href="https://www.facebook.com/CJCGV" class="like" target="_blank" title="Facebook ì¢ìì! ìì°½"><span>Facebook ì¢ìì!</span></a></li>
				    <li><a href="https://www.instagram.com/cgv_korea/" class="insta" target="_blank" title="Instagram Follow"><span>Instagram Follow</span></a></li>
                	<li><a href="/discount/" class="frugal"><span>ìë°í ìíê´ëë²!</span></a></li> <!-- í ì¸ì¹´ë -->
				</ul>
                <ul class="gnb">
                
                    <li><a href="/user/login/?returnURL=http%3a%2f%2fwww.cgv.co.kr%2fdefault.aspx" class="login"><span>ë¡ê·¸ì¸</span></a></li>
					<li><a href="/user/join/" class="join"><span>íìê°ì</span></a></li>
                    
                

					<li><a href="/user/mycgv/" class="mycgv required-login" data-url="/user/mycgv/"><span>MY CGV</span></a></li>
					<li><a href="/user/vip-lounge/" class="vip"><span>VIP LOUNGE</span></a></li>
					<li><a href="/user/memberShip/ClubService.aspx" title="ìì°½" class="club specialclub"><span>CLUB ìë¹ì¤</span></a></li>
					<!-- 2014.12.8 ë¦¬ë´ì¼-->
					<li><a href="/support/default.aspx" class="customer"><span>ê³ ê°ì¼í°</span></a></li>
				    <!-- 2014.12.8 ë¦¬ë´ì¼-->
					<li><a href="/ticket/eng/newdefault.aspx" class="showtimes"><span>ENGLISH TICKETING</span></a></li>
				</ul>
           </div>
            <!-- ìë¹ì¤ ë©ë´ -->
            
            <div class="im-wrap"> <!-- Important wrap -->
				<h2><img src="http://img.cgv.co.kr/R2014/images/title/h2_cultureplex.png" alt="CULTUREPLEX"></h2>

				<!-- ìë¸ ë©ë´ -->
				

<script type="text/javascript">
    //ìë¨ í¤ìë ê´ê³  (S)
    function AdSearchExt(txt, SearchText) {
        $('#header_keyword').attr('placeholder', txt);
        $('#header_ad_keyword').val(SearchText);
    }

    function hdIcoSet(left, sh) { }
    //ìë¨ í¤ìë ê´ê³  (E)


    //í¹ë³ê´ í´ë½ íì
    function openSpecialClub() {
        
        var win = window.open('http://www.cgv.co.kr/event/develop/1503_CLUB_Info.aspx', 'winSpecialClub', 'left=0,top=0,width=580,height=700,toolbar=no,scrollbars=yes');
        win.focus();
    }

    //ëì±ë¡íì´
//    function openDownTown() {
//        var win = window.open('http://section.cgv.co.kr/event/dongsungroTown/serviceInfo.aspx', 'winDownTown', 'left=0,top=0,width=670,height=800,toolbar=no,scrollbars=yes');
//        win.focus();
//    }

    //ë¸ìíì´
    function openNowonTown() {
        var win = window.open('http://section.cgv.co.kr/event/NowonTown/serviceInfo.aspx', 'winNowonTown', 'left=0,top=0,width=700,height=800,toolbar=no,scrollbars=yes');
        win.focus();
    }


    //ìë¨ê´ê³ ë«ê¸°
    function hideCgvTopAd() {
        $(".cgv-ad-wrap").hide();
        $('#wrap_main_notice').parent('div').css('top', 280);
    }

    //ë¹ì¦ì¤íë§ í´ë¦­ë¡ê·¸
    function setClickLog(title) {
        // eval("try{trk_clickTrace('EVT', '" + title + "')}catch(_e){}");
    }
   
    //]]>
</script>

<!-- íµí©ê²ì -->
<script type="text/javascript">
    (function ($) {
        $(function () {

            //ê²ì ìë ¥ì°½ í´ë¦­ ì ê´ê³ ê° reset
            $('#header_keyword').on('click', function () {
                $(this).attr('placeholder', '');
                $('#header_ad_keyword').val('');
            });

            //íµí©ê²ì ìë¨ ê²ì ë²í¼
            $('#btn_header_search').on('click', function () {
                if ($('#header_ad_keyword').val() != "")
                    goSearch($('#header_ad_keyword'));      //ê´ê³ 
                else
                    goSearch($('#header_keyword'));

                return false;
            });

            //íµí©ê²ì ê²ìì´ ìë ¥ì°½
            $('#header_keyword').keyup(function (e) {
                if (e.keyCode == 13) goSearch($('#header_keyword'));
            });

            //íµí©ê²ì
            function goSearch($objKeyword) {

                if ($objKeyword.val() == "") {
                    alert("ê²ìì´ë¥¼ ìë ¥í´ ì£¼ì¸ì");
                    $objKeyword.focus();
                    return false;
                }

                location = "/search/?query=" + escape($objKeyword.val());
            }
        });
    })(jQuery);
</script>
				<div class="lnb">
					<h2>CGV ì£¼ë©ë´</h2>
					<ul id="gnb_list">
						<li class="movie"><a href="/movies/">ìí</a>
							<div class="sub-wrap">
								<i></i>
								<div class="smenu">
									<ul>
										<li><a href="/movies/">ë¬´ë¹ì°¨í¸</a></li>
										<li><a href="/movies/hd-trailer.aspx">HD í¸ë ì¼ë¬</a></li>
										<li><a href="/movies/finder.aspx">ë¬´ë¹íì¸ë</a></li>
                                        <!--
                                        2019-12-03 íì  ìë¹ì¤ ì­ì  by ìì§ì
										<li><a href="/movies/point/">íì </a></li>
                                        -->
										<li class="last"><a href="/arthouse/">CGVìí¸íì°ì¤</a></li>
									</ul>
								</div>
							</div>
						</li>
						<li class="booking"><a href="/ticket/">ìë§¤</a>
							<div class="sub-wrap">
								<i></i>
								<div class="smenu">
									<ul>
										<li><a href="/ticket/">ë¹ ë¥¸ìë§¤</a></li>
										<li><a href="/reserve/show-times/">ìììê°í</a></li>
									</ul>
								</div>
							</div>
						</li>
						<li class="theaters"><a href="/theaters/">ê·¹ì¥</a>
							<div class="sub-wrap">
								<i></i>
								<div class="smenu">
									<ul>
										<li><a href="/theaters/">CGV ê·¹ì¥</a></li>
										<li><a href="/theaters/special/">í¹ë³ê´</a></li>
										<li class="last"><a href="/user/memberShip/ClubService.aspx" class="specialclub">CLUB ìë¹ì¤</a></li>
									</ul>
								</div>
							</div>
						</li>
						<li class="culture"><a href="/culture-event/event/">ì´ë²¤í¸&amp;ì»¬ì³</a>
							<div class="sub-wrap">
								<i></i>
								<div class="smenu">
									<ul>
										<li><a href="/culture-event/event/">ì´ë²¤í¸</a></li>
										<li><a href="/culture-event/popcorn-store/">ê¸°íí¸ìµ</a></li>
										<li><a href="/magazine/">ë§¤ê±°ì§</a></li>									
									</ul>
								</div>
							</div>
						</li>
					</ul>
				</div>
				<!-- /Local Navigation Bar -->

                <!-- Integrated search(íµí©ê²ì) -->
				<div class="sect-srh">
					<h2>íµí©ê²ììë¹ì¤</h2>
					<fieldset>
						<legend>íµí©ê²ì</legend>
						<input type="text" title="íµí©ê²ì" id="header_keyword" name="header_keyword" minlength="2" maxlength="20">
                        <input type="hidden" id="header_ad_keyword" name="header_ad_keyword">
						<button type="button" class="btn-go-search" id="btn_header_search">ê²ì</button>
                        <iframe src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/main@Search_txt" width="0" height="0" title="" frameborder="0" scrolling="no" marginwidth="0" marginheight="0"></iframe>
					</fieldset>
				</div>
				<!-- /Integrated search(íµí©ê²ì) -->

                <!-- Quick Phototicket -->
				<div class="sect-phototicket">
					<h2>CGV í¬í í°ì¼</h2>
					<a href="http://phototicket.cgv.co.kr/" target="_blank">CGV í¬í í°ì¼</a>
				</div>
				<!-- /Quick Phototicket -->

                <!-- Advertisement -->
                
				<div class="ad-partner">
                    <a href="http://section.cgv.co.kr/discount/Special/discount/EventDetail.aspx?Idx=11972&amp;pb=Y">
                        <img src="http://img.cgv.co.kr/WingBanner/2019/1104/15728438201650.png" alt="íëì¤ì¼ë±í¬">
                    </a>					
				</div>
                
				<!-- /Advertisement -->
                <!-- ìë¸ ë©ë´ -->
				
			</div>
		</div>
        <!-- txt banner -->
        
        <!-- /text banner -->
	</div>
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
                        <iframe src="images/AD.jpg" width="100%" height="80" title="ìíê´ê³ -í´ì¹ì§ìì" 
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
			
            <!--ìë¹ì¤ë©ë´-->
            <!--ì±ë¤ì´ë¡ë ë ì´ì´ íì-->
                <h1 >
                    <a href="/">
                        <img src="/KAN/images/title/h1_cgv.png" alt="KAN">
                    </a>
                </h1>
                <div class="sect-service">
                    <h2>ìë¹ì¤ ë©ë´</h2>
                    <ul class="util">
                        <li>
                            <a class="app" style="cursor: pointer;" title="CGVì± 4.0ì¤ì¹"></a>
                        </li>
                        <li>
                            <a href="https://www.facebook.com/CJCGV" class="like" target="_blank"
                            title="Facebook ì¢ìì! ìì°½">
                                <span>Facebook ì¢ìì!</span>
                            </a>
                        </li>
                        <li>
                            <a href="https://www.instagram.com/cgv_korea/" class="insta" target="_blank" title="Instagram Fllow">
                                <span>Instagram Follow</span>
                            </a>
                        </li>
                        <li>
                            <a href="/discount/" class="frugal">
                                <span>ìë°í ìí ê´ëë²!</span>
                            </a>
                        </li>
                    </ul>
                    
                    <ul class="gnb">
                        <li>
                            <a href="#" class="login">
                                <span>ë¡ê·¸ì¸</span>
                            </a>
                        </li>
                        <li>
                            <a href="/user/join" class="join">
                                <span>íìê°ì</span>
                            </a>
                        </li>
                        <li>
                            <a href="/user/mycgv/" class="mycgv required-login" data-url="/user/mycgv/">
                                <span>MY CGV</span>
                            </a>
                        </li>
                        <li>
                            <a href="#" title="ìì°½" class="club specialclub">
                                <span>CLUB ìë¹ì¤</span>
                            </a>
                        </li>
                        <li>
                            <a href="/support/default.aspx" class="customer">
            
                                <span>ê³ ê°ì¼í°</span>
                            </a>
                        </li>

                    </ul>

                </div>
                <div class="im-wrap">
                    <h2>
                        <img src="/KAN/images/title/h2_cultureplex.png" alt="CULTURPLEX">
                    </h2>
                    <!--ìë¸ ë©ë´-->

                    <!--íµí©ê²ì-->
                    <div class="lnb">
                        <h2>CGV ì£¼ë©ë´</h2>
                        <ul id="gnb_list">
                            <li class="movie"><a href="/movies/">ìí</a>
                                <div class="sub-wrap">
                                    <i></i>
                                    <div class="smenu">
                                        <ul>
                                            <li><a href="/movies/">ë¬´ë¹ì°¨í¸</a></li>
                                            <li><a href="/movies/hd-trailer.aspx">HD í¸ë ì¼ë¬</a></li>
                                            <li><a href="/movies/finder.aspx">ë¬´ë¹íì¸ë</a></li>
                                            <!--
                                            2019-12-03 íì  ìë¹ì¤ ì­ì  by ìì§ì
                                            <li><a href="/movies/point/">íì </a></li>
                                            -->
                                            <li class="last"><a href="/arthouse/">CGVìí¸íì°ì¤</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li class="booking"><a href="/ticket/">ìë§¤</a>
                                <div class="sub-wrap">
                                    <i></i>
                                    <div class="smenu">
                                        <ul>
                                            <li><a href="/ticket/">ë¹ ë¥¸ìë§¤</a></li>
                                            <li><a href="/reserve/show-times/">ìììê°í</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li class="theaters"><a href="/theaters/">ê·¹ì¥</a>
                                <div class="sub-wrap">
                                    <i></i>
                                    <div class="smenu">
                                        <ul>
                                            <li><a href="/theaters/">CGV ê·¹ì¥</a></li>
                                            <li><a href="/theaters/special/">í¹ë³ê´</a></li>
                                            <li class="last"><a href="/user/memberShip/ClubService.aspx" class="specialclub">CLUB ìë¹ì¤</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li class="culture"><a href="/culture-event/event/">ì´ë²¤í¸&amp;ì»¬ì³</a>
                                <div class="sub-wrap">
                                    <i></i>
                                    <div class="smenu">
                                        <ul>
                                            <li><a href="/culture-event/event/">ì´ë²¤í¸</a></li>
                                            <li><a href="/culture-event/popcorn-store/">ê¸°íí¸ìµ</a></li>
                                            <li><a href="/magazine/">ë§¤ê±°ì§</a></li>									
                                        </ul>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    
                
                    <!-- Integrated search(íµí©ê²ì) -->
                    <div class="sect-srh">
                        <h2>íµí©ê²ììë¹ì¤</h2>
                        <fieldset>
                            <legend>íµí©ê²ì</legend>
                            <input type="text" title="íµí©ê²ì" id="header_keyword" name="header_keyword" minlength="2" maxlength="20">
                            <input type="hidden" id="header_ad_keyword" name="header_ad_keyword">
                            <button type="button" class="btn-go-search" id="btn_header_search">ê²ì</button>
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
                            <a href="/movies/">ìí</a>
                        </li>
                    
                        <li>
                            <a href="/movies/">ë¬´ë¹ì°¨í¸</a>
                        </li>
                    
                        <li class="last">
                            ë¬´ë¹ì°¨í¸
                        </li>
                    </ul>
                </div>
                <div class="sect-special">
                    <ul>
                        <li><a href="/user/vip-lounge/">VIP LOUNGE</a></li>
                        <li><a href="/user/memberShip/ClubService.aspx" title="ìì°½" class="specialclub">Clubìë¹ì¤</a></li>
                        <li><a href="http://phototicket.cgv.co.kr/" title="ìì°½" class="photi" target="_blank">í¬í í°ì¼</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!--Line Map-->
        <div id="contents" class>
            <div class="wrap-movie-chart">
                <!-- Heading Map Multi -->
                <div class="tit-heading-wrap">
                    <h3>ë¬´ë¹ì°¨í¸</h3>
                    <div class="submenu">
                        <ul>
                            <li class="on">
                                <a href="/movies/" title="ì í">ë¬´ë¹ì°¨í¸</a>
                            </li>
                            <li>
                                <a href="/movies/pre-movies.aspx">ìììì ì</a>
                            </li>
                            <li>
                                <a href="/movies/?lt=3">CGVìí¸íì°ì¤</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- //Heading Map Multi -->
                <!-- Sorting -->
                <div class="sect-sorting">
                    <div class="nowshow">
                        <input type="checkbox" id="chk_nowshow" title="íì¬ ì íë¨" checked="">
                        <label for="chk_nowshow">íì¬ ìììë§ ë³´ê¸°</label>                
                    </div>
                    <label for="order_type" class="hidden">ì ë ¬</label>
                    <select id="order_type" name="order-type">
                        <option title="íì¬ ì íë¨" selected="" value="1">ìë§¤ì¨ì</option>
                        <option value="2">íì ì</option>
                        <option value="3">ê´ëê°ì</option>
                    </select>
                    <button type="button" class="round gray">
                        <span>GO</span>
                    </button>
                </div>
                <!--/Sorting-->
                <div class="sect-movie-chart">
                    <h4 class="hidden">ë¬´ë¹ì°¨í¸ - ìë§¤ì¨ì</h4>
                    <ol>
                        <li>
                            <div class="box-image">
                                <strong class="rank">No.1</strong>	
                                <a href="/movies/detail-view/?midx=82747">
                                    <span class="thumb-image">
                                        <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000082/82747/82747_320.jpg" alt="ë°±ëì° í¬ì¤í°" onerror="errorImage(this)">
                                        <span class="ico-grade grade-12">12ì¸ ì´ì</span>
                                    </span>
                                    <strong class="no1">1ì</strong>
                                </a>
                                <span class="screentype">
                                    
                                        <a class="forDX" href="#" title="4DX ìì¸ì ë³´ ë°ë¡ê°ê¸°" data-regioncode="4D14">4DX</a>
                                    
                                </span>
                            </div>
                            <div class="box-contents">
                                <a href="/movies/detail-view/?midx=82747">
                                    <strong class="title">ë°±ëì°</strong>
                                </a>
        
                                <div class="score">
                                    <strong class="percent">ìë§¤ì¨<span>18.1%</span></strong>
                                    <!--[2015-12-10] ìê·¸í¬ì¸í¸ ì ì© ë²ì1~ 3ì. start : add_mwpark-->
                                    <div class="egg-gage small">
                                        <span class="egg great"></span>
                                        <span class="percent">89%</span>
                                    </div>
                                    <!--[2015-12-10] ìê·¸í¬ì¸í¸ ì ì© ë²ì 1~ 3ì. end : add_mwpark-->
                                    <!-- [2015-12-11] ë¬´ë¹ ì°¨í¸ íì  ê°í¸ ë³ì  UI ì­ì  start : del_mwpark
                                        <div class="point">
                                            <em>89.0</em>
                                        </div>
                                    [2015-12-11] ë¬´ë¹ ì°¨í¸ íì  ê°í¸ ë³ì  UI ì­ì  start : del_mwpark-->
                                </div>
        
                                <span class="txt-info">
                                    <strong>
                                        2019.12.19 
                                        <span>ê°ë´</span>
                                        
                                    </strong>
                                </span>
                                <span class="like"> 
                                    <button class="btn-like" value="82747">ìí ì°íê¸°</button>
                                    <span class="count"> 
                                        <strong><i>11,150</i><span>ëªì´ ì í</span></strong> 
                                        <i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i>
                                    </span>
                                    <a class="link-reservation" href="/ticket/?MOVIE_CD=20021747&amp;MOVIE_CD_GROUP=20021747">ìë§¤</a>
                                </span>
                            </div>
                        </li>
                        <li>
                            <div class="box-image">
                                <strong class="rank">No.2</strong>	
                                <a href="/movies/detail-view/?midx=82738">
                                    <span class="thumb-image">
                                        <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000082/82738/82738_320.jpg" alt="ì²ë¬¸- íëì ë¬»ëë¤ í¬ì¤í°" onerror="errorImage(this)">
                                        <span class="ico-grade grade-12">12ì¸ ì´ì</span>
                                    </span>
                                    
                                </a>
                                <span class="screentype">
                                    
                                </span>
                            </div>
                            <div class="box-contents">
                                <a href="/movies/detail-view/?midx=82738">
                                    <strong class="title">ì²ë¬¸- íëì ë¬»ëë¤</strong>
                                </a>
        
                                <div class="score">
                                    <strong class="percent">ìë§¤ì¨<span>11.6%</span></strong>
                                    <!--[2015-12-10] ìê·¸í¬ì¸í¸ ì ì© ë²ì1~ 3ì. start : add_mwpark-->
                                    <div class="egg-gage small">
                                        <span class="egg great"></span>
                                        <span class="percent">94%</span>
                                    </div>
                                    <!--[2015-12-10] ìê·¸í¬ì¸í¸ ì ì© ë²ì 1~ 3ì. end : add_mwpark-->
                                    <!-- [2015-12-11] ë¬´ë¹ ì°¨í¸ íì  ê°í¸ ë³ì  UI ì­ì  start : del_mwpark
                                        <div class="point">
                                            <em>94.0</em>
                                        </div>
                                    [2015-12-11] ë¬´ë¹ ì°¨í¸ íì  ê°í¸ ë³ì  UI ì­ì  start : del_mwpark-->
                                </div>
        
                                <span class="txt-info">
                                    <strong>
                                        2019.12.26 
                                        <span>ê°ë´</span>
                                        
                                    </strong>
                                </span>
                                <span class="like"> 
                                    <button class="btn-like" value="82738">ìí ì°íê¸°</button>
                                    <span class="count"> 
                                        <strong><i>6,225</i><span>ëªì´ ì í</span></strong> 
                                        <i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i>
                                    </span>
                                    <a class="link-reservation" href="/ticket/?MOVIE_CD=20022170&amp;MOVIE_CD_GROUP=20021709">ìë§¤</a>
                                </span>
                            </div>    
                        </li>
                        <li>
                            <div class="box-image">
                                <strong class="rank">No.3</strong>	
                                <a href="/movies/detail-view/?midx=82737">
                                    <span class="thumb-image">
                                        <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000082/82737/82737_320.jpg" alt="ìë í¬ì¤í°" onerror="errorImage(this)">
                                        <span class="ico-grade grade-15">15ì¸ ì´ì</span>
                                    </span>
                                    
                                </a>
                                <span class="screentype">
                                    
                                </span>
                            </div>
                            <div class="box-contents">
                                <a href="/movies/detail-view/?midx=82737">
                                    <strong class="title">ìë</strong>
                                </a>
        
                                <div class="score">
                                    <strong class="percent">ìë§¤ì¨<span>7.5%</span></strong>
                                    <!--[2015-12-10] ìê·¸í¬ì¸í¸ ì ì© ë²ì1~ 3ì. start : add_mwpark-->
                                    <div class="egg-gage small">
                                        <span class="egg great"></span>
                                        <span class="percent">92%</span>
                                    </div>
                                    <!--[2015-12-10] ìê·¸í¬ì¸í¸ ì ì© ë²ì 1~ 3ì. end : add_mwpark-->
                                    <!-- [2015-12-11] ë¬´ë¹ ì°¨í¸ íì  ê°í¸ ë³ì  UI ì­ì  start : del_mwpark
                                        <div class="point">
                                            <em>92.0</em>
                                        </div>
                                    [2015-12-11] ë¬´ë¹ ì°¨í¸ íì  ê°í¸ ë³ì  UI ì­ì  start : del_mwpark-->
                                </div>
        
                                <span class="txt-info">
                                    <strong>
                                        2019.12.18 
                                        <span>ê°ë´</span>
                                        
                                    </strong>
                                </span>
                                <span class="like"> 
                                    <button class="btn-like" value="82737">ìí ì°íê¸°</button>
                                    <span class="count"> 
                                        <strong><i>9,138</i><span>ëªì´ ì í</span></strong> 
                                        <i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i>
                                    </span>
                                    <a class="link-reservation" href="/ticket/?MOVIE_CD=20021708&amp;MOVIE_CD_GROUP=20021708">ìë§¤</a>
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
                                        <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000082/82014/82014_320.jpg" alt="ê²¨ì¸ìêµ­ 2 í¬ì¤í°" onerror="errorImage(this)">
                                        <span class="ico-grade grade-all">ì ì²´</span>
                                    </span>
                                </a>
                                <span class="screentype">
                                    
                                        <a class="forDX" href="#" data-regioncode="4D14">4DX</a>
                                    
                                        <a class="threeD" href="#" data-regioncode="3D" style="cursor: default;">3D</a>
                                    
                                </span>
                            </div>
                            
                            <div class="box-contents">
                                <a href="/movies/detail-view/?midx=82014">
                                    <strong class="title">ê²¨ì¸ìêµ­ 2</strong>
                                </a>
        
                                <div class="score">
                                    <strong class="percent">ìë§¤ì¨<span>7.0%</span></strong>
                                     <!--[2015-12-10] ìê·¸í¬ì¸í¸ ì ì© ë²ì4~ 7ì. start : add_mwpark-->
                                    <div class="egg-gage small">
                                        <span class="egg great"></span>
                                        <span class="percent">95%</span>
                                    </div>
                                    <!--[2015-12-10] ìê·¸í¬ì¸í¸ ì ì© ë²ì 4~ 7ì. end : add_mwpark-->
                                    <!-- [2015-12-11] ë¬´ë¹ ì°¨í¸ íì  ê°í¸ ë³ì  UI ì­ì  start : del_mwpark
                                        <div class="point">
                                            <em>95.0</em>
                                        </div>
                                    [2015-12-11] ë¬´ë¹ ì°¨í¸ íì  ê°í¸ ë³ì  UI ì­ì  start : del_mwpark-->
                                </div>
        
                                <span class="txt-info">
                                    <strong>
                                        2019.11.21 
                                        <span>ê°ë´</span>
                                        
                                    </strong>
                                </span>
                                <span class="like"> 
                                    <button class="btn-like" value="82014">ìí ì°íê¸°</button>
                                    <span class="count"> 
                                        <strong><i>32,661</i><span>ëªì´ ì í</span></strong> 
                                        <i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i>
                                    </span> 
        
                                    <a class="link-reservation" href="/ticket/?MOVIE_CD=20020041&amp;MOVIE_CD_GROUP=20020041">ìë§¤</a>
                                    
                                </span>
                            </div>    
                        </li>
                    
                        <li>
                            <div class="box-image">
                                <strong class="rank">No.5</strong>	
                                <a href="/movies/detail-view/?midx=81914">
                                    <span class="thumb-image">
                                        <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000081/81914/81914_320.jpg" alt="í¬ë V íë¼ë¦¬ í¬ì¤í°" onerror="errorImage(this)">
                                        <span class="ico-grade grade-12">12ì¸ ì´ì</span>
                                    </span>
                                </a>
                                <span class="screentype">
                                    
                                        <a class="forDX" href="#" data-regioncode="4D14">4DX</a>
                                    
                                        <a class="screenx" href="#" data-regioncode="SCX">SCREENX</a>
                                    
                                </span>
                            </div>
                            
                            <div class="box-contents">
                                <a href="/movies/detail-view/?midx=81914">
                                    <strong class="title">í¬ë V íë¼ë¦¬</strong>
                                </a>
        
                                <div class="score">
                                    <strong class="percent">ìë§¤ì¨<span>5.2%</span></strong>
                                     <!--[2015-12-10] ìê·¸í¬ì¸í¸ ì ì© ë²ì4~ 7ì. start : add_mwpark-->
                                    <div class="egg-gage small">
                                        <span class="egg great"></span>
                                        <span class="percent">99%</span>
                                    </div>
                                    <!--[2015-12-10] ìê·¸í¬ì¸í¸ ì ì© ë²ì 4~ 7ì. end : add_mwpark-->
                                    <!-- [2015-12-11] ë¬´ë¹ ì°¨í¸ íì  ê°í¸ ë³ì  UI ì­ì  start : del_mwpark
                                        <div class="point">
                                            <em>99.0</em>
                                        </div>
                                    [2015-12-11] ë¬´ë¹ ì°¨í¸ íì  ê°í¸ ë³ì  UI ì­ì  start : del_mwpark-->
                                </div>
        
                                <span class="txt-info">
                                    <strong>
                                        2019.12.04 
                                        <span>ê°ë´</span>
                                        
                                    </strong>
                                </span>
                                <span class="like"> 
                                    <button class="btn-like" value="81914">ìí ì°íê¸°</button>
                                    <span class="count"> 
                                        <strong><i>9,195</i><span>ëªì´ ì í</span></strong> 
                                        <i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i>
                                    </span> 
        
                                    <a class="link-reservation" href="/ticket/?MOVIE_CD=20022086&amp;MOVIE_CD_GROUP=20019814">ìë§¤</a>
                                    
                                </span>
                            </div>    
                        </li>
                    
                        <li>
                            <div class="box-image">
                                <strong class="rank">No.6</strong>	
                                <a href="/movies/detail-view/?midx=82495">
                                    <span class="thumb-image">
                                        <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000082/82495/82495_320.jpg" alt="ì ë¹ìíí¸ ê·¹ì¥í íëëê¹¨ë¹ ë ìë¥´ë¬¸ê°ë í¬ì¤í°" onerror="errorImage(this)">
                                        <span class="ico-grade grade-all">ì ì²´</span>
                                    </span>
                                </a>
                                <span class="screentype">
                                    
                                        <a class="forDX" href="#" data-regioncode="4D14">4DX</a>
                                    
                                </span>
                            </div>
                            
                            <div class="box-contents">
                                <a href="/movies/detail-view/?midx=82495">
                                    <strong class="title">ì ë¹ìíí¸ ê·¹ì¥í íëëê¹¨ë¹ ë ìë¥´ë¬¸ê°ë</strong>
                                </a>
        
                                <div class="score">
                                    <strong class="percent">ìë§¤ì¨<span>4.0%</span></strong>
                                     <!--[2015-12-10] ìê·¸í¬ì¸í¸ ì ì© ë²ì4~ 7ì. start : add_mwpark-->
                                    <div class="egg-gage small">
                                        <span class="egg great"></span>
                                        <span class="percent">96%</span>
                                    </div>
                                    <!--[2015-12-10] ìê·¸í¬ì¸í¸ ì ì© ë²ì 4~ 7ì. end : add_mwpark-->
                                    <!-- [2015-12-11] ë¬´ë¹ ì°¨í¸ íì  ê°í¸ ë³ì  UI ì­ì  start : del_mwpark
                                        <div class="point">
                                            <em>96.0</em>
                                        </div>
                                    [2015-12-11] ë¬´ë¹ ì°¨í¸ íì  ê°í¸ ë³ì  UI ì­ì  start : del_mwpark-->
                                </div>
        
                                <span class="txt-info">
                                    <strong>
                                        2019.12.19 
                                        <span>ê°ë´</span>
                                        
                                    </strong>
                                </span>
                                <span class="like"> 
                                    <button class="btn-like" value="82495">ìí ì°íê¸°</button>
                                    <span class="count"> 
                                        <strong><i>1,976</i><span>ëªì´ ì í</span></strong> 
                                        <i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i>
                                    </span> 
        
                                    <a class="link-reservation" href="/ticket/?MOVIE_CD=20021195&amp;MOVIE_CD_GROUP=20021195">ìë§¤</a>
                                    
                                </span>
                            </div>    
                        </li>
                    
                        <li>
                            <div class="box-image">
                                <strong class="rank">No.7</strong>	
                                <a href="/movies/detail-view/?midx=82493">
                                    <span class="thumb-image">
                                        <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000082/82493/82493_320.jpg" alt="ëì´ë¸ì¤ ìì í¬ì¤í°" onerror="errorImage(this)">
                                        <span class="ico-grade grade-12">12ì¸ ì´ì</span>
                                    </span>
                                </a>
                                <span class="screentype">
                                    
                                </span>
                            </div>
                            
                            <div class="box-contents">
                                <a href="/movies/detail-view/?midx=82493">
                                    <strong class="title">ëì´ë¸ì¤ ìì</strong>
                                </a>
        
                                <div class="score">
                                    <strong class="percent">ìë§¤ì¨<span>3.0%</span></strong>
                                     <!--[2015-12-10] ìê·¸í¬ì¸í¸ ì ì© ë²ì4~ 7ì. start : add_mwpark-->
                                    <div class="egg-gage small">
                                        <span class="egg great"></span>
                                        <span class="percent">98%</span>
                                    </div>
                                    <!--[2015-12-10] ìê·¸í¬ì¸í¸ ì ì© ë²ì 4~ 7ì. end : add_mwpark-->
                                    <!-- [2015-12-11] ë¬´ë¹ ì°¨í¸ íì  ê°í¸ ë³ì  UI ì­ì  start : del_mwpark
                                        <div class="point">
                                            <em>98.0</em>
                                        </div>
                                    [2015-12-11] ë¬´ë¹ ì°¨í¸ íì  ê°í¸ ë³ì  UI ì­ì  start : del_mwpark-->
                                </div>
        
                                <span class="txt-info">
                                    <strong>
                                        2019.12.04 
                                        <span>ê°ë´</span>
                                        
                                    </strong>
                                </span>
                                <span class="like"> 
                                    <button class="btn-like" value="82493">ìí ì°íê¸°</button>
                                    <span class="count"> 
                                        <strong><i>9,697</i><span>ëªì´ ì í</span></strong> 
                                        <i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i>
                                    </span> 
        
                                    <a class="link-reservation" href="/ticket/?MOVIE_CD=20021188&amp;MOVIE_CD_GROUP=20021188">ìë§¤</a>
                                    
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
            <iframe src="http://adimg.cgv.co.kr/images/201709/house/0929_980X240.png" width="100%" height="240" title="ê´ê³ -CGV ê¸°íí¸ ì¹´ë" frameborder="0" scrolling="no" marginwidth="0" marginheight="0" name="Bottom" id="Bottom">
        </div>
        <div class="foot">
            <div class="sect-smuse">
                <h2>í¹ë³ê´ ë¦¬ì¤í¸</h2>
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
                <p class="logo">CJ CGV ë¡ê³ </p>
                <h2>CJ CGV íì¬ìê° ë° ì ì±</h2>
                <div class="policy">
                    <ul>
                        <li><a href="" target="_blank">íì¬ìê°</a></li>
                        <li><a href="" target="_blank">IR</a></li>
                        <li><a href="" target="_blank">ì±ì©ì ë³´</a></li>
                        <li><a href="" target="_blank">ê´ê³ /íë¡ëª¨ìë¬¸ì</a></li>
                        <li><a href="" target="_blank">ì í´ë¬¸ì</a></li>
                        <li><a href="" target="_blank">ì¶ì ë¬¸ì</a></li>
                        <li><a href="">í¸ì±ê¸°ì¤</a></li>
                        <li><a href="" class="empha-red">ê°ì¸ì ë³´ì²ë¦¬ë°©ì¹¨</a></li>
                        <li><a href="">ë²ì ê³ ì§</a></li>
                        <li><a href="">ì´ë©ì¼ì£¼ìë¬´ë¨ìì§ê±°ë¶</a></li>
                        <li><a href="">ììê²½ì</a></li>
                        <li><a href="">ì¬ì´í¸ë§µ</a></li>
                    </ul>
                </div>
                <div class="share">
                    <a href="https://www.facebook.com/CJCGV" target="_blank" class="facebook" title="ìì°½">íì´ì¤ë¶</a>
                    <a href="https://twitter.com/cj_cgv" target="_blank" class="twitter" title="ìì°½">í¸ìí°</a>
                    <a href="https://www.instagram.com/cgv_korea/" target="_blank" class="instagram" title="ìì°½">ì¸ì¤íê·¸ë¨</a>
                </div>
                <div class="address">
                    <address>(04377)ìì¸í¹ë³ì ì©ì°êµ¬ íê°ëë¡ 23ê¸¸ 55, ìì´íí¬ëª° 6ì¸µ(íê°ë¡ë)</address>
                    <p class="vl">
                        <span>ëíì´ì¬ : ìµë³í</span>
                        <span>ì¬ììë±ë¡ë²í¸ : 104-81-45690</span>
                        <span>íµì íë§¤ìì ê³ ë²í¸ : 2017-ìì¸ì©ì°-0662</span>
                        <a href="javascript:void(0);" onclick="goFtc()" class="btn_goFtc">
                            <img src="http://img.cgv.co.kr/r2014/images/common/btn_reg.png" alt="ì¬ììì ë³´íì¸">
                        </a>
                        <a></a>
                    </p>
                    <a>
                    <p class="vl">
                        <span>í¸ì¤íì¬ìì : CJì¬ë¦¬ë¸ë¤í¸ìì¤</span>
                        <span>ê°ì¸ì ë³´ë³´í¸ ì±ìì : ì ì¢ë¯¼</span>
                        <span>ëíì´ë©ì¼ : cjcgvmaster@cj.net</span>
                        <span>CGVê³ ê°ì¼í° : 1544-1122</span>
                    </p>
                    <p class="copyright">Â© CJ CGV. All Rights Reserved</p>
                </a>
                </div>
                <!--
                <a>
                    <div class="familysite">
                        <label for="familysite" class="hidden">CJê·¸ë£¹ ê³ì´ì¬ ë°ë¡ê°ê¸°</label>
                        <select id="familysite">
                            <option value="">ê³ì´ì¬ ë°ë¡ê°ê¸°</option>
                              <optgroup label="CJê·¸ë£¹">
                                <option value="http://www.cj.net/">CJì£¼ìíì¬</option>
                                </optgroup><optgroup label="ìí°íì¸ë¨¼í¸ &amp; ë¯¸ëì´">
                                <option value="http://www.cjenm.com/">CJ ENM (E&amp;M)</option>
                                <option value="http://www.cgv.co.kr/">CJ CGV</option>
                                <option value="http://www.cjhello.com/">CJ Hello</option>
                                <option value="http://www.cjpowercast.com/">CJíììºì¤í¸</option>
                                </optgroup><optgroup label="ìí &amp; ìíìë¹ì¤">
                                <option value="https://www.cj.co.kr/kr/index">CJì ì¼ì ë¹ (ìí)</option>
                                <option value="http://www.cjfreshway.com/">CJíë ìì¨ì´</option>
                                <option value="http://www.cjfoodville.co.kr/">CJí¸ëë¹</option>
                                <option value="http://www.md1.co.kr/">CJì ëì</option>
                                </optgroup><optgroup label="ìëªê³µí">
                                <option value="https://www.cj.co.kr/kr/index">CJì ì¼ì ë¹ (ë°ì´ì¤)</option>
                                </optgroup><optgroup label="ì ì íµ">
                                <option value="http://display.cjmall.com">CJ ENM (ì¤ì¼í)</option>
                                <option value="http://www.cjlogistics.com">CJëííµì´</option>
                                <option value="http://www.cjtelenix.com/">CJíë ëì¤</option>
                                <option value="http://www.oliveyoung.co.kr/store/main/main.do">CJì¬ë¦¬ë¸ì</option>
                                </optgroup><optgroup label="ì¸íë¼">
                                <option value="http://www.cjenc.co.kr/">CJëííµì´ (ê±´ì¤)</option>
                                <option value="http://www.cjolivenetworks.co.kr/itbusiness/">CJì¬ë¦¬ë¸ë¤í¸ìì¤</option>
                                </optgroup>                 
                        </select>
                        <button type="button" title="ìì°½" onclick="goFamilySite()">GO</button>
                    </div>
                </a>
                -->
            </div>
		</iframe>
        </div>

    </div id="footer">
    <!-- aside -->
</div>
    
</body>
</html>
