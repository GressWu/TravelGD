<%@ page import="service.UserMessageService" %>
<%@ page import="service.ReplyService" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>

<head>
    <%String location="shanxi";%>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>山西与陕西</title>
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
                        <h1 class="text-center">超乎想象的山西、陕西完美之旅</h1>
                        <p class="text-center"><span class="by">by</span> <a href="#">Ponny Ma</a><span class="date">Sept 8th, 2016 </span></p><img class="img-fluid" src="assets/img/CoUBGV4HISGAPvqmABn1L_iSujw32.png"></div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-10 col-lg-3 offset-md-1">
                    <div class="toc">
                        <p>快速导航</p>
                        <ul>
                            <li><a href="#brief">前言</a> </li>
                            <li><a href="#find">碛口古镇</a></li>
                            <li><a href="#tem">老友相见</a> </li>
                            <li><a href="download?filename=guide.pdf">下载说明</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-10 col-lg-7 offset-md-1 offset-lg-0">
                    <div class="text">
                        <p id="brief">
                            山西 和 陕西 之行，也是计划很久了，原本想自驾游，感觉距离不远，而且好多景点坐大交通不是很方便。但苦于自己颈椎不好，无法长时间驾车，闺蜜老任又腰椎不行，也开不了长途，找其他伙伴吧又时间上不凑巧。只得还是我们俩坐公共交通出行吧
                            <br>

                            出行天数：16天，总花费：4100元。 <br>
                            具体行程详见结尾。 <br>
                        </p>
                        <h2 id="notice">碛口古镇</h2>

                        <!--<iframe allowfullscreen="assets/video/viva.mp4" frameborder="0" width="560" height="315"></iframe>-->
                        <p id="find">


                            早上退房，打车到纪念碑，打算在此乘公交车去 碛口 古镇。 <br>
                            刚下出租车，就过来个中年男人询问我们是否去 碛口 ，我们说是，他热情的招呼我们坐他的小轿车。我俩摇头，包车去 碛口 多贵呀，等一会儿公交车就来了。 <br>
                            他连忙解释说：不贵，和公交车一个价，每人15元，还给送到 碛口 镇住宿的客栈。这下我俩更不敢坐了，哪有这样的好事呢？？！！见我们不信，边上的人连忙跟着解释，说他要去 碛口 接人，不想空车过去，捎上我们，挣个油钱。
                            <br>
                            我说可别半路上加钱，众人忙说不会的，放心吧， 山西 人说话算数的！！ <br>
                            师傅果然很好，不仅没有多要钱，还在中途拉着到一个叫彩家庄的村庄拍照，讲解 碛口 古时的繁华 兴隆 。 <br>
                            九点多就到了 碛口 古镇，网上订的自顺成客栈，院落不大，好在干净、清净。自顺城的院落也是古迹。</p>
                        <figure class="figure"><img class="figure-img" src="assets/img/river.png">
                            <figcaption class="figure-caption">Caption</figcaption>
                        </figure>
                        <p id="tem">
                            在客栈里连吃饭带拍照。客栈服务很好，其实不吃饭也可以来拍照的。来了才知道，客栈空房间很多，但不知为什么网上显示无房 <br>
                            询问店员，他们也不清楚，只说想照相尽管照吧！吃饭时偶遇到同是 北京 的老韩大哥，他就住宿在这，于是热心的陪着我们逛，还帮我们俩照合影。<br>
                            在客栈逛到快下午三点了，老韩大哥要坐下午的大巴车回 吕梁 ，于是我们一起离开 碛口 客栈，顺路送韩大哥到车站，道别后，我俩也回客栈休息。 <br>

                            ↓下午四点多出发去黑龙庙看日落。黑龙庙不远，就在我们住的客栈后面，山不高，很省力，一路景色很美。</p>
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
        <input type="hidden" name="location" value="shanxi">
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