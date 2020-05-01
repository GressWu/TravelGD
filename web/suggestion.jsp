<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>index</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora">
    <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="assets/fonts/fontawesome5-overrides.min.css">
    <link rel="stylesheet" href="assets/css/Article-Dual-Column.css">
    <link rel="stylesheet" href="assets/css/Article-List.css">
    <link rel="stylesheet" href="assets/css/Footer-Basic.css">
    <link rel="stylesheet" href="assets/css/Footer-Clean.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.8.2/css/lightbox.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/css/swiper.min.css">
    <link rel="stylesheet" href="assets/css/Lightbox-Gallery.css">
    <link rel="stylesheet" href="assets/css/Login-Form-Clean.css">
    <link rel="stylesheet" href="assets/css/Login-Form-Dark.css">
    <link rel="stylesheet" href="assets/css/Navigation-with-Button.css">
    <link rel="stylesheet" href="assets/css/Projects-Horizontal.css">
    <link rel="stylesheet" href="assets/css/Registration-Form-with-Photo.css">
    <link rel="stylesheet" href="assets/css/Sidebar-Menu-1.css">
    <link rel="stylesheet" href="assets/css/Sidebar-Menu.css">
    <link rel="stylesheet" href="assets/css/Simple-Slider.css">
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">


</head>

<body>
    <nav class="navbar navbar-light navbar-expand-md fixed-top navigation-clean-button">
        <div class="container"><img id="icon" src="assets/img/icon.png"><a class="navbar-brand" href="#">马蜂窝</a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div
                class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav mr-auto">
                    <li class="nav-item" role="presentation"><a class="nav-link" href="index.jsp">首页</a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" href="destination.jsp">目的地</a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" href="travelstrategy.jsp">旅游攻略</a></li>
                    <li class="nav-item dropdown"><a class="dropdown-toggle nav-link" data-toggle="dropdown" aria-expanded="false" href="#">去旅行</a>
                        <div class="dropdown-menu" role="menu"><a class="dropdown-item" role="presentation" href="#">自由行</a><a class="dropdown-item" role="presentation" href="#">跟团游</a><a class="dropdown-item" role="presentation" href="#">当地游</a><a class="dropdown-item" role="presentation"
                                href="#">邮轮</a><a class="dropdown-item" role="presentation" href="#">签证</a></div>
                    </li>
                </ul><span class="navbar-text">${currentName==null?"":'欢迎您：'.concat(currentName)}</span><span class="navbar-text actions"> <a class="login" href="userlogin.jsp">登录</a><a class="btn btn-light action-button" role="button" href="register.jsp">注册</a></span></div>
        </div>
    </nav>

    <div class="container" style="margin-top: 150px;">
        <div class="jumbotron">
            <h1>开始定制你的私人旅程</h1>

            <p><a href="btn btn-primary btn-lg" role="button"></a>查看更多</p>
        </div>
    </div>



    <div class="container" style="margin-top: 20px">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">您选择的景点</h3>
            </div>
            <div class="panel-body">
                <c:forEach var="u" items="${sceneries}">
                    ${u}
                </c:forEach>
            </div>
        </div>
        <div class="panel panel-success">
            <div class="panel-heading">
                <h3 class="panel-title">总天数</h3>
            </div>
            <div class="panel-body">
                ${days}天
            </div>
        </div>
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title">查看路线详情</h3>
            </div>
            <div class="panel-body">
                <a href="${introduction}">查看详情</a>
            </div>
        </div>
    </div>


    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.8.2/js/lightbox.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/js/swiper.jquery.min.js"></script>
    <script src="assets/js/Sidebar-Menu.js"></script>
    <script src="assets/js/Simple-Slider.js"></script>
</body>

</html>