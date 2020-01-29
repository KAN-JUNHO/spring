<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>제이시네마::회원가입</title>
    <link rel="shortcut icon" href="/jcinema/img/favicon.ico"/>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="../css/style.css">    
    <link rel="stylesheet" href="../css/sub.css">
    <link rel="stylesheet" href="../css/style_member.css">
    <style></style>    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>    
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>    
    <script src="../js/topBannerBg.js"></script>
    <script src="../js/ticketCalendar.js"></script>
</head>
<body>
    <div id="wrapper">
        <div id="top-banner">
            <canvas id="canvas"></canvas>
            <div>
                <a href="#" class="image"><img id="topBannerImg" src="/jcinema/img/top_banner_poster1.jpg" alt=""></a>
                <a href="#" class="close"><img src="/jcinema/img/banner-close.png" alt=""></a>
            </div>
        </div>

        <header>
            <div class="service">
                <article>
                    <p>
                        <a href="#">모바일 APP</a>
                        <a href="#">좋아요</a>
                        <a href="#">구독하기</a>
                    </p>
                    <p>
                        <a href="#">로그인</a>
                        <a href="#">회원가입</a>
                        <a href="#">멤버십</a>
                        <a href="#">고객센터</a>
                    </p>
                </article>
            </div>
            <div class="logo">
                <article>
                    <a href="/jcinema"><img src="/jcinema/img/logo.gif" alt=""></a>
                </article>                
            </div>
            <div class="gnb">
                <article>
                    <ul>
                        <li class="on"><a href="#">예매</a></li>
                        <li><a href="#">영화</a></li>
                        <li><a href="#">영화관</a></li>
                        <li><a href="#">이벤트</a></li>
                        <li><a href="#">제이몰</a></li>
                        <li><a href="#">VOD</a></li>
                    </ul>

                </article>
            </div>
        </header>
        
        <div id="sub" class="register">
            <section>
                <div class="agreement"">
                    <h1>회원가입</h1>
                    <article>
                        <h3>약관</h3>
                        <label><input type="checkbox" name="check_all" id="check_all"/>전체동의</label>
                        <div>
                            <strong>개인정보</strong>
                            <p class="agree1">
                                <label><input type="checkbox" name="check1" id="check1" />개인정보의 선택적인 사항에 대한 수집이용 동의<em>(선택)</em></label>
                                <a href="#">자세히</a>                                
                            </p>
                            <p class="agree2">
                                <label><input type="checkbox" name="check2" id="check2" />개인정보의 선택적인 제3자 제공에 대한 동의<em>(선택)</em></label>
                                <a href="#">자세히</a>                                
                            </p>

                            <strong>수집동의</strong>
                            <p class="agree3">
                                <label><input type="checkbox" name="check3" id="check3" />선택입력정보 수집 동의서<em>(선택)</em></label>
                                <a href="#">자세히</a>                                
                            </p>                            
                        </div>
                        <p>
                            -&nbsp;선택항목에 동의하지 않으셔도 정상적인 서비스를 이용하실 수 있습니다.
                        </p>
                        
                    </article>

                </div>                
            </section>
            <section>
                <div class="member">
                    <article>
                        <h3>회원정보 입력</h3>
                        
                        <table>
                            <tr>
                                <td>이름</td>
                                <td><input type="text" name="name"/></td>
                            </tr>
                            <tr>
                                <td>아이디</td>
                                <td>
                                    <input type="text" name="uid"/>
                                    <span class="check_uid_result"></span>
                                </td>
                            </tr>
                            <tr>
                                <td>비밀번호</td>
                                <td><input type="text" name="pw1"/></td>
                            </tr>
                            <tr>
                                <td>비밀번호 확인</td>
                                <td>
                                    <input type="text" name="pw2"/>
                                    <span class="check_pw_result"></span>
                                </td>
                            </tr>
                            <tr>
                                <td>이메일</td>
                                <td>
                                    <input type="text" name="email"/>
                                    <span class="check_email_result"></span>
                                </td>
                            </tr>
                            <tr>
                                <td>전화번호</td>
                                <td>
                                    <select name="tel1" class="tel">
                                        <option>02</option>
                                        <option>051</option>
                                        <option>053</option>
                                        <option>053</option>
                                        <option>025</option>
                                        <option>023</option>
                                    </select>
                                    &nbsp;-&nbsp;
                                    <input type="text" name="tel2" class="tel" maxlength="4"/>
                                    &nbsp;-&nbsp;
                                    <input type="text" name="tel3" class="tel" maxlength="4"/>                                    
                                </td>
                            </tr>
                            <tr>
                                <td>휴대폰</td>
                                <td>
                                    <select name="hp1" class="hp">
                                        <option>010</option>
                                        <option>011</option>
                                        <option>012</option>
                                        <option>013</option>
                                        <option>014</option>
                                        <option>015</option>
                                    </select>
                                    &nbsp;-&nbsp;
                                    <input type="text" name="hp2" class="hp" maxlength="4"/>
                                    &nbsp;-&nbsp;
                                    <input type="text" name="hp3" class="hp" maxlength="4"/>
                                    <span class="check_hp_result"></span>
                                </td>
                            </tr>
                            <tr>
                                <td>주소</td>
                                <td>
                                    <div>
                                        <label><input type="radio" id="addrType1" name="addrType" value="1">자택</label>
                                        <label><input type="radio" id="addrType2" name="addrType" value="2">직장</label>
                                    </div>
                                    <button>우편번호</button>
                                    <input type="text" name="zip"   class="zip"/>
                                    <input type="text" name="addr1" class="addr" />
                                    <input type="text" name="addr2" class="addr"/>
                                </td>
                            </tr>
                        </table>
                        <p>
                            - J.POINT 회원정보를 변경하시면, 가입하신 J.POINT 제휴사의 회원정보가 함께 변경됩니다.
                        </p>
                    </article>

                    <article class="marketing">
                        <h3>마케팅 정보 수신동의</h3>
                        <table>
                            <tr>
                                <td colspan="2">
                                    <label><input type="checkbox" id="check_marketing_all" name="check_marketing_all"/>전체동의</label>
                                </td>                                
                            </tr>
                            <tr>
                                <td>L.POINT</td>
                                <td>                                    
                                    <label><input type="checkbox" id="agree_point_email" name="agree_point_email" />E-Mail</label>
                                    <label><input type="checkbox" id="agree_point_sms" name="agree_point_sms" />SMS</label>
                                    <label><input type="checkbox" id="agree_point_tm" name="agree_point_tm" />TM</label>
                                    <label><input type="checkbox" id="agree_point_dm" name="agree_point_dm" />DM</label>
                                </td>
                            </tr>
                            <tr>
                                <td>제휴사이트</td>
                                <td>
                                    <label><input type="checkbox" id="agree_site_email" name="agree_site_email" />E-Mail</label>
                                    <label><input type="checkbox" id="agree_site_dm" name="agree_site_dm" />SMS</label>
                                </td>
                            </tr>
                        </table>
                        <p>
                            -&nbsp;정보수신동의를 하시면, 고객혜택 및 이벤트 등 다양한 정보를 받으실 수 있습니다.<br>
                            -&nbsp;롯데손해보험 TM동의 여부 확인 및 변경은 롯데멤버스 고객센터(1899-8900)로 문의바랍니다.
                        </p>
                    </article>

                    <div>
                        <a href="#" class="btn cancel">취소</a>
                        <a href="#" class="btn register">회원가입</a>
                    </div>

                </div>
                
            </section>            
        </div>
                
        <footer>
            <div class="banner1">
                <a href="#"><img src="../img/showtime_banner_img1.jpg" alt=""></a>
            </div>
            <div class="banner2" style="background-color: rgb(54, 54, 64);">
                <a href="#"><img src="/jcinema/img/footer_banner_event.jpg" alt=""></a>
            </div>
            <div class="content">
                <article>
                    <img class="logo" src="/jcinema/img/footer_logo.gif" alt="로고">
                    <p>
                        <a href="#">회원약관 |</a>
                        <a href="#">개인정보처리방침 |</a>
                        <a href="#">이메일무단수집거부 |</a>
                        <a href="#">영상정보처리기기 운영∙관리방침 |</a>
                        <a href="#">J.POINT회원안내 |</a>
                        <a href="#">배정기준 |</a>
                        <a href="#">채용안내 |</a>
                        <a href="#">광고/임대문의 |</a>
                        <a href="#">기업정보 |</a>
                        <a href="#">윤리경영</a><br>
                        부산광역시 부산진구 신천대로 300 월드타워 27층 | 고객센터 1544-1234<br>
                        대표이사 홍길동 | 사업자등록번호 123-12-12345 | 통신판매업신고번호 제1234호 | 개인정보 보호책임자 김춘추<br>
                        COPYRIGHT© JCINEMA ALL RIGHT RESERVED.
                    </p>
                </article>
            </div>
            <div class="award">
                <article>
                    <img src="/jcinema/img/footer_award1.jpg" alt=""/>
                    <img src="/jcinema/img/footer_award2.gif" alt=""/>
                    <img src="/jcinema/img/footer_award3.gif" alt=""/>
                    <img src="/jcinema/img/footer_award4.gif" alt=""/>
                    <img src="/jcinema/img/footer_award5.gif" alt=""/>
                    <img src="/jcinema/img/footer_award6.gif" alt=""/>
                    <img src="/jcinema/img/footer_award7.gif" alt=""/>
                    <img src="/jcinema/img/footer_award8.gif" alt=""/>
                </article>
            </div>
        </footer>
    </div>    
</body>
</html>