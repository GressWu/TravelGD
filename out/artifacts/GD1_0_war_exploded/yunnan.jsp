<%@ page import="service.UserMessageService" %>
<%@ page import="service.ReplyService" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>

<head>
    <%String location="yunnan";%>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>云南</title>
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
                    <li class="nav-item" role="presentation"><a class="nav-link" href="destination.jsp">目的地</a></li>
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
                        <h1 class="text-center">如画滇行，与你相遇，心生欢喜</h1>
                        <p class="text-center"><span class="by">by</span> <a href="#">Ponny Ma</a><span class="date">Sept 8th, 2016 </span></p><img class="img-fluid" src="assets/img/lake.png"></div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-10 col-lg-3 offset-md-1">
                    <div class="toc">
                        <p>快速导航</p>
                        <ul>
                            <li><a href="#brief">前言</a> </li>
                            <li><a href="#find">童眼看世界</a></li>
                            <li><a href="#tem">有一种蓝叫丽江蓝</a> </li>
                            <li><a href="download?filename=guide.pdf">下载说明</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-10 col-lg-7 offset-md-1 offset-lg-0">
                    <div class="text">
                        <p id="brief">
                            孩子上学前的日子，我们一家真的去过很多地方。你要问我其中印象最深的是哪儿？我会毫不犹豫地回答： 云南 和 四川 九寨沟 。<br>
                            去过 云南 才知道， 云南 真的是你想象中的那个 云南 ，和镜头下的 云南 并无二致。有时，你甚至会傻傻分不清，眼前究竟是现实还是想象。<br>
                            这里有着丰富的地貌，一日可以看尽梯田、峡谷、雪山。太阳离你那么近，抬头就看见天空远处的雪山。天气不冷不热，漫天的海鸥， 满城 的鲜花，茶马古道间，传来马铃声声。山口路边随处可见玛尼堆，五彩经幡在风中飘扬。<br>
                        </p>
                        <h2 id="notice">童眼看世界</h2>

                        <!--<iframe allowfullscreen="assets/video/viva.mp4" frameborder="0" width="560" height="315"></iframe>-->
                        <p id="find">

                            从宸不满两岁起，我们就开始带他童眼看世界。<br>
                            每年至少一两次长途旅行，短途或周边游更是频繁。六岁的年纪，旅行经验倒有四五年了。<br>
                            小小年纪，走南闯北，从高原到盆地，从 雪乡 到海边，从毫无印象到念念不忘，从哭闹要抱到独立勇敢。现如今，一路上，宸总能收获无数伯伯阿姨的赞许和为他点赞的大拇指。<br>
                            最开始亲子游，其实是想以子之名圆母之梦。那时的我年轻不懂事，乖乖女的外表下藏着一颗洒脱不羁的心，总幻想在海之涯山之巅作阅尽山河云淡风轻状。事实上，前面几次的带娃旅行可谓苦不堪言。<br>
                            那时的我们都没有旅行经验，抱着一腔热情就带娃出门了。带小小孩出门，本来行李就多，再加上，小孩子动辄哭闹要抱。当然，比这更糟的，就是旅途中遇到孩子生病。<br>
                            总之，带小小娃外出旅行，绝对可以写就一部父母的血泪史。各种突如其来的状况，各种措手不及，各种狼狈不堪，让我每每苦笑，这哪里是度假，分明是找虐。<br>
                            直到现在，旅途中我看到带小婴儿的家长，都会不自觉地投以十二万分的注目礼，表达无比的敬意。<br>
                            经过一次次挫败，一次次磨合，在山水间，我也见证了孩子的成长。<br>
                            张家界 挺拔隽秀的险峰，连我登顶都很吃力，小人儿全程自己走的，那时他还不到五岁。海拔4200米的普达措国家公园，几乎看不到比他更小的孩子。在那儿，我家宸是比牦牛还珍稀的宝贝，一路收获赞扬无数。</p>
                        <figure class="figure"><img class="figure-img" src="assets/img/river.png">
                            <figcaption class="figure-caption">Caption</figcaption>
                        </figure>
                        <p id="tem">
                            【有一种蓝叫丽江蓝】<br>
                            双十一当晚，行李基本整理完毕，这时接到来自 丽江 的电话。听花堂的阿斌热情地嘱咐我们， 丽江 的夜晚非常冷，一定要带厚衣服哦。接着一句是， 丽江 这边太阳很大，一定要带遮阳帽哦。<br>
                            这弯拐得有点大。我瞬间脑补了羽绒服和遮阳帽叠穿的友爱画面。虽然感到蒙圈和混乱，我还是照要求带齐了所有东西。事实证明，这些东西后来确实都派上了用场。<br>
                            这是怎样一个神奇的地方？ 云南 虽然号称四季如春，但早晚温差很大，空气极为干燥。晴空无云，紫外线强烈，明晃晃的阳光上来就热情地拥抱你。但凡外出，遮阳帽防晒霜太阳镜润唇膏缺一不可。来自湿冷 江南 的我恨不得每夜拥着加湿器入睡。<br>
                            此行所见， 丽江 的穿衣风格可谓乱搭。同一片阳光下，有穿羽绒的，有穿真丝裙的，大家见怪不怪，和谐相处。<br>
                            闲言少叙，转入正题。<br>
                            云南 第一站—— 丽江 。<br>
                            从机场一出来，我就被 丽江 的蓝天震慑住了。天空湛蓝湛蓝，没有一丝云彩，纯净、炫目，蓝得有些不真实。</p>
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
        <input type="hidden" name="location" value="yunnan">
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