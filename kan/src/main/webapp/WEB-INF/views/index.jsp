<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>kan</title>
    <link rel="shortcut icon" href="./images/favicon.ico">
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <link rel="stylesheet" href="css/layout.css">
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
                        <iframe src="/kan/images/AD.jpg" width="100%" height="80" title="영화광고-해치지않아" 
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
                        <img src="/kan/images/title/h1_cgv.png" alt="kan">
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
                        <img src="/kan/images/title/h2_cultureplex.png" alt="CULTURPLEX">
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
                <a href="/kan/" target="_blank" style="display:block">
                    <img src="images/banner/14890258372960.jpg">
                </a>
            </div>
        </div>
    </div>

    <div id="contaniner" class="bg-bricks main bg-bricks">
        <div id="contents" class>
            <!-- 콘테츠 시작-->
            <input type="hidden" id="isTown" name="isTown" value="N">
            <input type="hidden" id="isVip" name="isVip" value="N">
            <input type="hidden" id="isVipNot" name="isVipNot" value="N">
            <input type="hidden" id="isKangdong" name="isKangdong" value="0">         
            <input type="hidden" id="isGoonja" name="isGoonja" value="0">
            
            <div class="sect-common">
                <div class="slider" id="slider">
                    <button type="button" class="btn-play" style="left: 528px; display: block;">자동 넘기기 시작</button>
                    <div class="item-wrap on">
                        <button type="button" class="on" style="left: 438px; display: block;" title="선택됨.">LET'S PLAY AT CGV!</button>
                        <a class="item" style="width: 980px; height: 451px; display: block;" href="http://www.cgv.co.kr/culture-event/event/">
                            <img src="images/banner/main/mainbig_new_1.jpg" alt="LET'S PLAY AT CGV!" style="width: 100%; height: 100%;">
                            <p class="main_banner_text2 type1">
                                <br>
                                즐겁고 재밌는 무언가를 찾고 있나요?
                                <br>
                                CGV에서 같이 놀아요!
                            </p>
                        </a>
                    </div>
                    <div class="item-wrap">
                        <button type="button" class style="left: 456px; display: block;">SPHERE X 오픈</button>
                        <a class="item" style="width: 980px; height: 451px; display: none;">
                            <img src="Front/Main/2019/1224/15771763281040.jpg" alt="SPHERE X 오픈" style="width: 100%; height: 100%;">
                        </a>
                    </div>
                    <div class="item-wrap">
                        <button type="button" style="left: 474px; display: block;" class>IMAX 컬렉션</button>
                        <a class="item" style="width: 980px; height: 451px; display: none;">
                            <img src="Front/Main/2019/1224/15771763281040.jpg" alt="IMAX 컬렉션" style="width: 100%; height: 100%;">
                        </a>
                    </div>
                    <div class="item-wrap">
                        <button type="button" style="left: 492px; display: block;" class="">해치지않아</button>
                        <a class="item" style="width: 980px; height: 451px; display: none;">
                            <img src="Front/Main/2019/1219/15767252497760.jpg" alt="해치지않아" style="width: 100%; height: 100%;">
                        </a>
                    </div>
                    <div class="item-wrap">
                        <button type="button" style="left: 510px; display: block;" class="">씨네샵_겨울왕국2</button>
                        <a class="item" style="width: 980px; height: 451px; display: none;">
                            <img src="Front/Main/2019/1118/15740403567760.jpg" alt="씨네샵_겨울왕국2" style="width: 100%; height: 100%;">
                        </a>
                    </div>
                    <button type="button" class="btn-prev">이전 페이지 이동</button>
                    <button type="button" class="btn-next">다음 페이지 이동</button>
                </div>
            </div>
            <h3>
                <img src="images/title/h3_movie_selection.gif" alt="MOVIE SELECTION">
            </h3>
            <div class="cols-movie">
                <div id="Selection_L" class="col-slider">
                    <iframe src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/main@Selection_L" width="733" height="388" title="영화광고-미스터 주" frameborder="0" scrolling="no" marginwidth="0" marginheight="0" name="Movie_Selection_L" id="Movie_Selection_L">
                    </iframe>
                </div>
                <div id="Selection_R" class="col-ad">
                    <iframe src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/main@Selection_R_05" width="240" height="388" title="영화광고-미스터 주" frameborder="0" scrolling="no" marginwidth="0" marginheight="0" name="Movie_Selection_R" id="Movie_Selection_R">
                    </iframe>
                </div>
            </div>
            <h3>
                <img src="images/title/h3_event.gif" alt="EVENT">
            </h3>
            <ul class="tab-menu">

                <li class="on">
                    <a href="#" data-filter-type="08" title="현재 선택됨">
                        "CGV스페셜"
                    </a>
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
			                <a href="http://www.cgv.co.kr/culture-event/event/detail-view.aspx?idx=20685&amp;menu=0">
			                    <img src="http://img.cgv.co.kr/Front/Main/2019/1224/15771764068110.jpg" alt="SPHERE X">
			                </a>
			            </li>
			        
					    <li>
			                <a href="http://www.cgv.co.kr/culture-event/event/detail-view.aspx?idx=20769">
			                    <img src="http://img.cgv.co.kr/Front/Main/2020/0129/15802839053500.jpg" alt="PREMIUM DAY">
			                </a>
			            </li>
			        
					    <li>
			                <a href="http://section.cgv.co.kr/event/running/EventZone.aspx?idx=1485">
			                    <img src="http://img.cgv.co.kr/Front/Main/2020/0123/15797494753320.jpg" alt="VIP시사회">
			                </a>
			            </li>
			        
				</ul>
			</div>
            <div class="cols-banner">
                <div class="col-ad">
                    <div class="box-com">
                        <div class="box-inner">
                            <a href="http://section.cgv.co.kr/discount/Special/discount/EventDetail.aspx?Idx=11972&amp;pb=Y "><img src="Front/Main/2019/1104/15728438029070.jpg" alt="현대오일뱅크"></a>
                        </div>
                    </div>
                </div>
                <div class="col-hd">
                    <a href="/arthouse"><img src="images/main/main_moviecollage.jpg" alt="CGV ARTHOUSE, A Good Movie, A Better Life"></a>
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
                        <img src="images/popup/1606_iexp/pop_iexp_headline2.jpg" alt="CGV 홈페이지는 고객님께서 사용중인 MS Windows XP에서 정상적인 서비스 이용이 어려울 수 있으며, OS업데이트를 권장합니다.">
                    </div>
                    <div class="down_app">
                        <p><img src="images/popup/1606_iexp/pop_iexp_downtxt.jpg" alt="OS 업데이트가 어려운 경우 모바일앱을 이용하세요!!!"></p>
                        <a class="btn" href="https://itunes.apple.com/kr/app/id370441190?mt=8" target="_blank"><img src="images/popup/1606_iexp/btn_down_ios.jpg" alt="Ios down"></a>
                        <a class="btn" href="https://play.google.com/store/apps/details?id=com.cgv.android.movieapp" target="_blank"><img src="images/popup/1606_iexp/btn_down_android.jpg" alt="Android down"></a>
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
                        <img src="images/popup/1606_iexp/pop_iexp_headline1.jpg" alt="CGV 홈페이지는 Internet Explorer 9이상에서 최적의 서비스 이용이 가능합니다. IE9 이하 브라우저에서 이용 시 정상적인 서비스 이용이 어려울 수 있으며, 브라우저 업그레이드 하시기를 권장합니다.">
                    </div>
                    <ul class="down_browser">
                        <li><a href="http://windows.microsoft.com/ko-kr/windows/downloads" target="_blank"><img src="images/popup/1606_iexp/btn_down_ie.jpg" alt="Internet Explorer 다운받기"></a></li>
                        <li><a href="https://www.google.com/chrome/browser/desktop/index.html" target="_blank"><img src="images/popup/1606_iexp/btn_down_chrome.jpg" alt="Chrome 다운받기"></a></li>
                    </ul>
                    <div class="down_app">
                        <p><img src="/kan/images/popup/1606_iexp/pop_iexp_downtxt.jpg" alt="OS 업데이트가 어려운 경우 모바일앱을 이용하세요!"></p>
                        <a class="btn" href="https://itunes.apple.com/kr/app/id370441190?mt=8" target="_blank"><img src="images/popup/1606_iexp/btn_down_ios.jpg" alt="Ios down"></a>
                        <a class="btn" href="https://play.google.com/store/apps/details?id=com.cgv.android.movieapp " target="_blank"><img src="images/popup/1606_iexp/btn_down_android.jpg" alt="Android down"></a>
                    </div>
                    <a class="btn_close">닫기</a>
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