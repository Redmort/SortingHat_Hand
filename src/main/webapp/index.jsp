<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <script type="text/javascript" src="resources/static/jquery-3.2.1.min.js"></script>

        <style type="text/css">

            <%@include file="/resources/static/bootstrap.js" %>

            body {
                background-color: plum;
            }

        <%--.img-holder {position: relative;}--%>
        <%--.img-holder .link {--%>
            <%--position: absolute;--%>
            <%--bottom: 1080px;--%>
            <%--right: 590px;--%>
            <%--color: transparent;--%>
        <%--}--%>

            <%--.img-holder .link1 {--%>
                <%--position: absolute;--%>
                <%--bottom: 920px;--%>
                <%--right: 570px;--%>
                <%--color: transparent;--%>
            <%--}--%>

        <%--.img-holder .link .btn{--%>
            <%--color: transparent;--%>
            <%--height: 120px;--%>
            <%--width: 60px;--%>
            <%--/*border-color: transparent;*/--%>
            <%--/*background-color: transparent;*/--%>

        <%--}--%>

            <%--.img-holder .link1 .btn{--%>
                <%--color: transparent;--%>
                <%--height: 150px;--%>
                <%--width: 60px;--%>
                <%--transform: rotate(170deg);--%>
                <%--/*border-color: transparent;*/--%>
                <%--/*background-color: transparent;*/--%>
            <%--}--%>

        </style>

    <style>
        body {
            background-color: black;
        }
    </style>

    <script type="text/javascript" language="javascript">

        var picPaths = ['/resources/img/blueHand.png','/resources/img/GreenHand.png','/resources/img/OrangeHand.png','/resources/img/purpleHand.png'];
        var curPic = -1;
        //preload the images for smooth animation
        var imgO = new Array();
        for(i=0; i < picPaths.length; i++) {
            imgO[i] = new Image();
            imgO[i].src = picPaths[i];
        }

        window.onload = function() {

            $('.hand1').addClass('hand').removeClass('hand1');
            imgCont = document.getElementsByClassName('hand').item(0);
            swapImage();

            var isMobile = (/iPhone|iPod|iPad|Android|BlackBerry/).test(navigator.userAgent);

            $(".hand").on(isMobile ? 'ontouchstart' : 'mousedown', function(e) {
                navigator.vibrate(4000); // Infinity is a number
            });

        };

        function swapImage() {
            curPic = (++curPic > picPaths.length-1)? 0 : curPic;
            imgCont.src = imgO[curPic].src;
            setTimeout(swapImage,90);
        }


        function UserAction() {
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    ChooseHand();
                }
            };
            xhttp.open("POST", "/spin.html", true);
            xhttp.setRequestHeader("Content-type", "application/json");
            xhttp.send();
        }

        function ChooseHand() {
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    var resp = this.responseText;

                    millisecondsToWait = 7900;
                    setTimeout(function() {
                    $('.hand').hide();

                    if (resp === "1"){
                        $('.hand2').show();
                    }else if (resp === "2"){
                        $('.hand3').show();
                    }else if (resp === "3"){
                        $('.hand4').show();
                    }else if (resp === "4"){
                        $('.hand5').show();
                    }
                        millisecondsToWait = 9500;
                        setTimeout(function() {
                            location.reload();
                        }, millisecondsToWait);

                    }, millisecondsToWait);
                }
            };
            xhttp.open("POST", "/choose.html", true);
            xhttp.setRequestHeader("Content-type", "application/json");
            xhttp.send();
        }


        //    function HoverAction() {
        //        var xhttp = new XMLHttpRequest();
        //        xhttp.open("POST", "/hover.html", true);
        //        xhttp.setRequestHeader("Content-type", "application/json");
        //        xhttp.send();
        //    }

        //    function UnHoverAction() {
        //        var xhttp = new XMLHttpRequest();
        //        xhttp.open("POST", "/unhover.html", true);
        //        xhttp.setRequestHeader("Content-type", "application/json");
        //        xhttp.send();
        //    }

        //    $("#p2").mouseenter(function(){
        //        var a =HoverAction();
        //    });
        //
        //    $("#p2").mouseleave(function(){
        //        var a =UnHoverAction();
        //    });


    </script>

</head>
<body>
<%--<div class="img-holder">--%>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<div>
    <img id="p2" class="hand1" ontouchstart="UserAction()" style="width:auto" style ="height: 0.5%" src="${pageContext.request.contextPath}/resources/img/GreenHand.png"/>
    <img id="p3" class="hand2" hidden="hidden" ontouchstart="UserAction()" style="width:auto" style ="height:100px" src="${pageContext.request.contextPath}/resources/img/purpleHand.png"/>
    <img id="p4" class="hand3" hidden="hidden" ontouchstart="UserAction()" style="width:auto" style ="height:100px" src="${pageContext.request.contextPath}/resources/img/GreenHand.png"/>
    <img id="p5" class="hand4" hidden="hidden" ontouchstart="UserAction()" style="width:auto" style ="height:100px" src="${pageContext.request.contextPath}/resources/img/OrangeHand.png"/>
    <img id="p6" class="hand5" hidden="hidden" ontouchstart="UserAction()" style="width:auto" style ="height:100px" src="${pageContext.request.contextPath}/resources/img/blueHand.png"/>

</div>

    <%--<div class="link">--%>

            <%--<input type="submit" onclick="UserAction()" class="btn" value="Edit"/>--%>

    <%--</div>--%>
    <%--<div class="link1">--%>
            <%--<input type="submit" onclick="UserAction()" class="btn" value="Edit"/>--%>
    <%--</div>--%>
<%--</div>--%>

</body>

</html>
