<%@ page import="service.UserMessageService" %>
<%@ page import="service.ReplyService" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>

<head>
    <%String location="nafrica";%>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>北非</title>
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
</head>

<body>
    <nav class="navbar navbar-light navbar-expand-md fixed-top navigation-clean-button">
        <div class="container"><img id="icon" src="assets/img/icon.png"><a class="navbar-brand" href="#">马蜂窝</a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div
                class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav mr-auto">
                    <li class="nav-item" role="presentation"><a class="nav-link" href="index.jsp">首页</a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" href="#">目的地</a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" href="travelstrategy.jsp">旅游攻略</a></li>
                    <li class="nav-item dropdown"><a class="dropdown-toggle nav-link" data-toggle="dropdown" aria-expanded="false" href="#">去旅行</a>
                        <div class="dropdown-menu" role="menu"><a class="dropdown-item" role="presentation" href="#">自由行</a><a class="dropdown-item" role="presentation" href="#">跟团游</a><a class="dropdown-item" role="presentation" href="#">当地游</a><a class="dropdown-item" role="presentation"
                                href="#">邮轮</a><a class="dropdown-item" role="presentation" href="#">签证</a></div>
                    </li>
                </ul><span class="navbar-text"><a href="mine.jsp">${currentName==null?"":'欢迎您：'.concat(currentName)}</a></span><span class="navbar-text actions"> <a class="login" href="userlogin.jsp">登录</a><a class="btn btn-light action-button" role="button" href="register.jsp">注册</a></span></div>
        </div>
    </nav>
    <div class="article-dual-column" style="margin-top: 120px">
        <div class="container">

            <div class="row">
                <div class="col-md-10 offset-md-1">
                    <div class="intro">
                        <h1 class="text-center">斑斓北非｜七首歌、七座城</h1>
                        <p class="text-center"><span class="by">by</span> <a href="#">Ponny Ma</a><span class="date">Sept 8th, 2016 </span></p><img class="img-fluid" src="assets/img/af.png"></div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-10 col-lg-3 offset-md-1">
                    <div class="toc">
                        <p>快速导航</p>
                        <ul>
                            <li><a href="#brief">突尼斯</a> </li>
                            <li><a href="#find">菲斯</a></li>
                            <li><a href="#tem">老友相见</a> </li>
                            <li><a href="download?filename=guide.pdf">下载说明</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-10 col-lg-7 offset-md-1 offset-lg-0">
                    <div class="text">
                        <p id="brief">
                            突尼斯 / <br>
                            爱是种偏见，如果可以再重来。 <br>
                            ——梁咏琪《偏见》 <br>
                            为什么是偏见呢？ <br>
                            还没到 突尼斯 ，大概就已经对它有了偏见。 <br>
                            很少有人专程到访，多数只为顺路 摩洛哥 而来。 <br>
                            却未曾想到，这个沐浴在神秘的阿拉伯文明中的城市，给我留下了属于它的独家记忆。
                        </p>
                        <h2 id="notice">菲斯</h2>

                        <!--<iframe allowfullscreen="assets/video/viva.mp4" frameborder="0" width="560" height="315"></iframe>-->
                        <p id="find">


                            菲斯/ <br>
                            由得他，如隐居，从此窝藏心里。 <br>
                            ——陈慧琳《阁楼》 <br>
                            为什么是阁楼呢？ <br>
                            在菲斯的老阁楼里醒来，清晨的阳光从彩色的玻璃窗溢进来。 <br>
                            菲斯的温度很好，阁楼的床垫很软。 <br>
                            如果不是空气里细细微微的尘埃还在弥漫，彷佛一切都已静止，从此窝藏隐居。</p>
                        <figure class="figure"><img class="figure-img" src="assets/img/japan.jpg">
                            <figcaption class="figure-caption">Caption</figcaption>
                        </figure>
                        <p id="tem">
                            『七座城』 <br>
                            你有想过乌托邦会在哪里吗？ <br>
                            在深邃的 爱琴海 孕育出的古 希腊 文明中？ <br>
                            在 哥伦布 横渡大西洋发现新大陆的航海时代？ <br>
                            在 英格兰 大机器轰鸣声中的工业革命后？ <br>
                            还是就在此刻，在我们不知晓的某一处地方，它正在存在？ <br>
                            如果它真的存在，如果每个人都有权力去定义自己世界的乌托邦， <br>
                            在斑斓的 北非 ，那里应该是我后青春期的乌托邦。</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
    <table class="table table-striped">
        <thead>
          <tr>
            <th>姓名</th>
            <th>留言内容</th>
          </tr>
        </thead>
        <tbody>
        <%
            UserMessageService service = new UserMessageService();
            service.showTheMessage(request,response,location);
        %>
        <c:forEach var="m" items="${message}">
            <tr>
                <td>${m.username}</td>
                <td>${m.message}</td>
            </tr>
        </c:forEach>
        </tbody>
      </table>
    </div>
    <div class="container">
        <table class="table table-striped">
            <thead>
            <tr>
                <th>管理员姓名</th>
                <th>回复内容</th>
            </tr>
            </thead>
            <tbody>
            <%
                ReplyService replyService = new ReplyService();
                replyService.showTheReply(request,response,location);
            %>
            <c:forEach var="a" items="${admessage}">
                <tr>
                    <td>${a.adminname}</td>
                    <td>${a.admessage}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <div class="container">
    <form role="form" action="UserMessageServlet">
        <div class="form-group">
          <label>发表你的评论</label>
          <textarea class="form-control" rows="3" name="message"></textarea>
        </div>
        <input type="hidden" name="location" value="nafrica">
        <div class="form-group">
            <button type="submit" class="btn btn-default">发表评论</button>
        </div>
      </form>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.8.2/js/lightbox.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/js/swiper.jquery.min.js"></script>
    <script src="assets/js/Sidebar-Menu.js"></script>
    <script src="assets/js/Simple-Slider.js"></script>
</body>

</html>