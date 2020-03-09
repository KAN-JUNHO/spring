<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="robots" content="noindex, nofollow" />
	<style type="text/css">
	* {font-size:11px; padding:0 0; margin:0 0;}
	</style>
	<script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript">
        // domain setting
        document.domain = "cgv.co.kr";


        // 예매 완료 이벤트 처리
        function ReserveEventPopup() {
            // 영화코드 (MOVIECD)
            // 상영일자 (yyyyMMdd)
            // 극장코드 (0001)
            // 상영관	(001)
            // 상영회차 (01)

            var ArgData = new Array();
            for (var ix = 0; ix < arguments.length; ix++) {
                ArgData[ix] = arguments[ix];
            }

            EventPopup();
        }

        function EventPopup() {
            
            /** 이지용님 요청으로 이벤트노출 20150624 **/
            /**
			var w = 450;
            var h = 459;
            var l = (screen.width - w) / 2;
            var t = (screen.height - h) / 2; ;
            var Popup = window.open('http://section.cgv.co.kr/event/running/SimpleEventZone.aspx?sidx=237', 'EventPopup', 'left=' + l + ',top=' + t + ',menubar=0,resizable=1,width=' + w + ',height=' + h + ',scrollbars=0');
            
			**/
            /**
            var w = 450;
            var h = 346;
            var l = (screen.width - w) / 2;
            var t = (screen.height - h) / 2; ;
            var Popup = window.open('http://section.cgv.co.kr/event/running/SimpleEventZone.aspx?sidx=167', 'EventPopup', 'left=' + l + ',top=' + t + ',menubar=0,resizable=1,width=' + w + ',height=' + h + ',scrollbars=0');
            **/

            //Popup.focus();
        }


        // console
        if (!window.console) window.console = {};
        if (!window.console.log) window.console.log = function () { };

        // init
        function init() {
            log('[PROXY] init');
            // event listener
            /*
            var result = addEvent("message", window, function(e){
            var data = e.data ? e.data : e.message;
            log("[PROXY] " + data);
            var datas = data.split("@");
            var method = datas[0];
            //var ticketWindow = window.top;
            var ticketWindow = window.parent.parent;
            if (ticketWindow == null) return;
            switch (method){
            case "NEEDRESIZE":
            var scrollHeight = datas[1];
            if (ticketWindow.ticketIframeResize) ticketWindow.ticketIframeResize(scrollHeight);
            break;
            case "NEEDSCROLLUPDATE":
            window.parent.postMessage("SCROLLUPDATE@" + ticketWindow.f_scrollTop() + "@" + ticketWindow.f_clientHeight(), "*");
            break;
            case "NEEDSCROLLTOTOP":
            var scrollY = parseInt(datas[1], 10);
            if (ticketWindow.scrollToTop) ticketWindow.scrollToTop(scrollY);
            break;
            case "NEEDSCROLLTO":
            var scrollY = parseInt(datas[1], 10);
            var isAnimation = (datas[2] == "true");
            if (ticketWindow.scrollToTop) ticketWindow.scrollToTop(scrollY, isAnimation);
            break;
            case "LOGIN":
            var userid = unescape(datas[1]);
            var password = unescape(datas[2]);
            //if (ticketWindow.ticketLogin) ticketWindow.ticketLogin(userid, password);
            ticketLogin(userid, password);
            break;
            case "GUESTLOGIN":
            var userid = unescape(datas[1]);
            var password = unescape(datas[2]);
            if (ticketWindow.ticketGuestLogin) ticketWindow.ticketGuestLogin(userid, password);
            break;
            case "LOCATIONHREF":
            var url = unescape(datas[1]);
            ticketWindow.location.href = url;
            break;
            case "INFO_MODIFY_MOBILE":
            var mobile1 = unescape(datas[1]);
            var mobile2 = unescape(datas[2]);
            var mobile3 = unescape(datas[3]);
            if (ticketWindow.ticketInfoModifyMobile) ticketWindow.ticketInfoModifyMobile(mobile1, mobile2, mobile3);
            break;
            case "LOGCLICK":
            var param1 = datas[1];
            var param2 = datas[2];
            if (ticketWindow.trk_clickTrace) ticketWindow.trk_clickTrace(param1, param2);
            break;
            case "LOGWEB":
            var param1 = datas[1];
            var param2 = datas[2];
            var param3 = datas[3];
            var param4 = datas[4];
            var param5 = datas[5];
            var param6 = datas[6];
            var param7 = datas[7];
            if (ticketWindow.trk_flashEnvView) {
            if (param4 != "") {
            ticketWindow.trk_flashEnvView(param1, param2, param3, param4, param5, param6, param7);
            } else {
            ticketWindow.trk_flashEnvView(param1, param2, param3);
            }
            }
            break;
            }
            });

            // retry
            if (!result) {
            console.log("[PROXY] attachEvent failed (retry)");
            log('[PROXY] attachEvent failed (retry)');
            setTimeout(init, 50);
            }
            */

            $.receiveMessage(function (e) {
                log("[3 receiveMessage] " + e.data);

                var datas = e.data.split("@");
                var method = datas[0];
                //var ticketWindow = window.top;
                var ticketWindow = window.parent.parent;
                if (ticketWindow == null) return;
                switch (method) {
                    case "NEEDRESIZE":
                        var scrollHeight = datas[1];
                        if (ticketWindow.ticketIframeResize) ticketWindow.ticketIframeResize(scrollHeight);
                        break;
                    case "NEEDSCROLLUPDATE":
                        // resize
                        var scrollHeight = datas[1];
                        if (ticketWindow.ticketIframeResize) ticketWindow.ticketIframeResize(scrollHeight);
                        // scroll update
                        //$.postMessage("SCROLLUPDATE@" + ticketWindow.f_scrollTop() + "@" + ticketWindow.f_clientHeight(), "http://ticket.cgv.co.kr/Reservation/Reservation.aspx", window.parent);
                        break;
                    case "NEEDSCROLLTOTOP":
                        var scrollY = parseInt(datas[1], 10);
                        if (ticketWindow.scrollToTop) ticketWindow.scrollToTop(scrollY);
                        break;
                    case "NEEDSCROLLTO":
                        var scrollY = parseInt(datas[1], 10);
                        var isAnimation = (datas[2] == "true");
                        if (ticketWindow.scrollToTop) ticketWindow.scrollToTop(scrollY, isAnimation);
                        break;
                    case "LOGIN":
                        var userid = unescape(datas[1]);
                        var password = unescape(datas[2]);
                        //if (ticketWindow.ticketLogin) ticketWindow.ticketLogin(userid, password);
                        ticketLogin(userid, password);
                        break;
                    case "GUESTLOGIN":
                        var userid = unescape(datas[1]);
                        var password = unescape(datas[2]);
                        if (ticketWindow.ticketGuestLogin) ticketWindow.ticketGuestLogin(userid, password);
                        break;
                    case "LOCATIONHREF":
                        var url = unescape(datas[1]);
                        ticketWindow.location.href = url;
                        break;
                    case "INFO_MODIFY_MOBILE":
                        var mobile1 = unescape(datas[1]);
                        var mobile2 = unescape(datas[2]);
                        var mobile3 = unescape(datas[3]);
                        if (ticketWindow.ticketInfoModifyMobile) ticketWindow.ticketInfoModifyMobile(mobile1, mobile2, mobile3);
                        break;
                    case "LOGCLICK":
                        var param1 = datas[1];
                        var param2 = datas[2];
                        if (ticketWindow.trk_clickTrace) ticketWindow.trk_clickTrace(param1, param2);
                        break;
                    case "LOGWEB":
                        var param1 = datas[1];
                        var param2 = datas[2];
                        var param3 = datas[3];
                        var param4 = datas[4];
                        var param5 = datas[5];
                        var param6 = datas[6];
                        var param7 = datas[7];
                        if (ticketWindow.trk_flashEnvView) {
                            if (param4 != "") {
                                ticketWindow.trk_flashEnvView(param1, param2, param3, param4, param5, param6, param7);
                            } else {
                                ticketWindow.trk_flashEnvView(param1, param2, param3);
                            }
                        }
                        break;
                }
            });
        }

        // addEvent
        function addEvent(event, elem, func) {
            // W3C DOM
            if (elem.addEventListener) {
                elem.addEventListener(event, func, false);
            }
            // IE DOM
            else if (elem.attachEvent) {
                return elem.attachEvent("on" + event, func);
            }
            // else
            else {
            }
            return true;
        }

        // log
        function log(msg) {
            //console.log(msg);
            // append
            var div = document.createElement("div");
            div.appendChild(document.createTextNode("" + msg));
            document.body.appendChild(div);

            // scroll
            window.scrollTo(0, document.body.scrollHeight);
        }

        // functions
        function ticketLogin(userid, password) {
            $.ajax({
                url: "http://www.cgv.co.kr/ajax/ticket/ticketLogin.aspx",
                data: "userid=" + userid + "&password=" + password,
                type: "post",
                async: true,
                dataType: "json",
                success: function (data, textStatus, jqXHR) {
                    var ticketWindow = window.parent.parent ? window.parent.parent : window.parent;
                    var success = data.d.success;
                    var RES_CD = data.d.data.RES_CD;
                    var RES_MSG = data.d.data.RES_MSG;
                    var TARGETURL = data.d.data.TARGETURL;
                    console.log(success, RES_CD, RES_MSG, TARGETURL);
                    //alert("success:"+success + "\nRES_CD:" + RES_CD + "\nRES_MSG:" + RES_MSG + "\nTARGETURL:" + TARGETURL);
                    if (RES_CD == "0000") {
                        //alert(RES_MSG);
                        if (TARGETURL != null && TARGETURL != "") {
                            ticketWindow.location.href = TARGETURL;
                        } else {
                            ticketWindow.location.reload(true);
                        }
                    }
                    else {
                        alert(RES_MSG);
                    }
                },
                error: function () {
                    //console.log(arguments);
                    alert("로그인 오류\n다시 시도하여 주십시오");
                }
            });
        }

        // onload
        window.onload = init;

        (function ($) {
            '$:nomunge'; // Used by YUI compressor.

            var interval_id,
    last_hash,
    cache_bust = 1,

    rm_callback,

    window = this,
    FALSE = !1,

    postMessage = 'postMessage',
    addEventListener = 'addEventListener',

    p_receiveMessage,

            //has_postMessage = window[postMessage] && !$.browser.opera;
	has_postMessage = window[postMessage];
            //has_postMessage = false; // test

            $[postMessage] = function (message, target_url, target) {
                if (!target_url) { return; }

                message = typeof message === 'string' ? message : $.param(message);

                // Default to parent if unspecified.
                target = target || parent;

                if (has_postMessage) {
                    target[postMessage](message, target_url.replace(/([^:]+:\/\/[^\/]+).*/, '$1'));

                } else if (target_url) {
                    target.location = target_url.replace(/#.*$/, '') + '#' + (+new Date) + (cache_bust++) + '&' + message;
                }
            };

            $.receiveMessage = p_receiveMessage = function (callback, source_origin, delay) {
                if (has_postMessage) {
                    if (callback) {
                        rm_callback && p_receiveMessage();

                        rm_callback = function (e) {
                            if ((typeof source_origin === 'string' && e.origin !== source_origin)
            || ($.isFunction(source_origin) && source_origin(e.origin) === FALSE)) {
                                return FALSE;
                            }
                            callback(e);
                        };
                    }

                    if (window[addEventListener]) {
                        window[callback ? addEventListener : 'removeEventListener']('message', rm_callback, FALSE);
                    } else {
                        window[callback ? 'attachEvent' : 'detachEvent']('onmessage', rm_callback);
                    }

                } else {
                    interval_id && clearInterval(interval_id);
                    interval_id = null;

                    if (callback) {
                        delay = typeof source_origin === 'number'
          ? source_origin
          : typeof delay === 'number'
            ? delay
            : 100;

                        interval_id = setInterval(function () {
                            var hash = document.location.hash,
            re = /^#?\d+&/;
                            if (hash !== last_hash && re.test(hash)) {
                                last_hash = hash;
                                callback({ data: hash.replace(re, '') });
                            }
                        }, delay);
                    }
                }
            };

        })(jQuery);
    </script>
</head>
<body>
Hello, Proxy
</body>
</html>