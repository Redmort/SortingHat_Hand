
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script type="text/javascript" src="resources/static/jquery-3.2.1.min.js"></script>

    <style type="text/css">

        <%@include file="/resources/static/bootstrap.js" %>

        @keyframes spin {
            from{
                transform: rotateY(0deg);
                moz-transform: rotateY(0deg); //Firefox
            ms-transform: rotateY(0deg); //Microsoft Browsers
            }
            to{
                transform: rotateY(360deg);
                moz-transform: rotateY(360deg); //Firefox
            ms-transform: rotateY(360deg); //Microsoft Browsers
            }
        }
        @-webkit-keyframes spin{
            from{-webkit-transform: rotateY(0deg);}
            to{-webkit-transform: rotateY(360deg);}
        }
        .imageSpin{
            animation-name: spin;
            animation-timing-function: linear;
            animation-iteration-count: infinite;
            animation-duration: 1s;
            -webkit-animation-name: spin;
            -webkit-animation-timing-function: linear;
            -webkit-animation-iteration-count: infinite;
            -webkit-animation-duration: 1s;
        }


        </style>

    <script type="text/javascript" language="javascript">

        window.onload = function() {
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    $('.IsBestAnswer').addClass('imageSpin').removeClass('IsBestAnswer');
                }
            };
            xhttp.open("POST", "/addMinutes.html", true);
            xhttp.setRequestHeader("Content-type", "application/json");
            xhttp.send();
        }

</script>

    <title>Title</title>
</head>
<body>
<h1>greeting</h1>


<img class="IsBestAnswer" id="p2" style="width:600px" style ="height:auto" src="${pageContext.request.contextPath}/resources/img/burning.png"/>


</body>
</html>
