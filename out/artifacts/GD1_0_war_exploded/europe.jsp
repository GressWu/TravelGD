<%@ page import="service.UserMessageService" %>
<%@ page import="service.ReplyService" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>

<head>
    <%String location="europe";%>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>欧洲16城</title>
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
                        <h1 class="text-center">匈牙利、克罗地亚、奥地利、捷克，四国16城</h1>
                        <p class="text-center"><span class="by">by</span> <a href="#">Ponny Ma</a><span class="date">Sept 8th, 2016 </span></p><img class="img-fluid" src="assets/img/europeindex.png"></div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-10 col-lg-3 offset-md-1">
                    <div class="toc">
                        <p>快速导航</p>
                        <ul>
                            <li><a href="#brief">前言</a> </li>
                            <li><a href="#find">7号码头</a></li>
                            <li><a href="#tem"> 塞切尼温泉浴场</a> </li>
                            <li><a href="download?filename=guide.pdf">下载说明</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-10 col-lg-7 offset-md-1 offset-lg-0">
                    <div class="text">
                        <p id="brief">
                            本来的行程计划是 10/17 这天玩 捷克 著名的小镇 卡罗维发利 ，然后10/18-19号2个整天逛 布拉格 ，10/20一早搭OBB从 布拉格 去 维也纳 ，中午到达后放了行李就先把最远的美泉宫、美景宫逛完，10/21再逛中心城区内的标志景点。但是后来考虑再三还是觉得 维也纳 的时间太少了，所以果断调整行程（浪费了之前已经订好的OBB火车票，心疼～）10/16 从CK小镇搭SA大巴到 布拉格 后直接去离车站不远的高堡区逛下，10/17-18的2个整天分别玩 布拉格 的城堡区和老城区，10/19一大早搭SA大巴去 卡罗维发利 ，逛、吃、泡一圈后搭14点的SA回 布拉格 后再赶去火车站搭16:47的OBB直杀 维也纳 ，这样虽然有点赶，但是10/20-21就有足足2个整天可以逛 维也纳 了。如果进度快的话，还能压缩个半天出来去逛下outlet买买买呢～～
                            另外原计划是：10/16 下午逛高堡，10/17 全天城堡区，10/18 全天老城区，但实际行程走下来， 布拉格 真的很小 很小 很小，压缩了一天出来，临时加了一天 库特纳霍拉 小镇。10/20 也是一天暴走把 维也纳 逛完，10/21 整天 买 买 买~~
                        </p>
                        <h2 id="notice">7号码头</h2>

                        <!--<iframe allowfullscreen="assets/video/viva.mp4" frameborder="0" width="560" height="315"></iframe>-->
                        <p id="find">

                            7号码头
                            7号码头 （Dock7）出发，离塞切尼链桥步行不到10分钟 <br>
                            船不算特别豪华，1个小时，有中文解说，合人民币不到70元 <br>
                            多瑙河沿岸不同的码头有不同公司的船可以选，我选了酒店工作人员推荐的Legenda这家，看完日落沿着多瑙河走一会儿就到码头了。 <br>
                            游览有三种选择：日游（DUNA BELLA）、夜游（DANUBE LEGEND）、烛光晚餐游（CANDLELIT DINNER CRUISE ON THE DANUBE）。 <br>
                            【价格及时间表】日游4300HUF最便宜；夜游比日游贵一点；烛光晚餐游价格最高时间最长。 <br>
                            以上都是出行前做的攻略，然而我们走了好久好久好久，都没有找到，后来还是不si心的再绕回了11号码头，恰巧赶上了还有5分钟就要开船的游览船，欣喜若狂的火速上船。</p>
                        <figure class="figure"><img class="figure-img" src="assets/img/star-sky.jpg">
                            <figcaption class="figure-caption">Caption</figcaption>
                        </figure>
                        <p id="tem">
                            塞切尼温泉浴场（Széchenyi fürdő） 来不及去了，留待下次再探~ <br>
                            营业时间：6:00-22:00；蒸汽房19:00关闭 <br>
                            地铁M1号线，至Széchenyi fürdő站下车 <br>
                            门票：含锁天票周一至周五5800福林，含客舱天票周一至周五6300福林；周六、周日6500福林）</p>
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
        <input type="hidden" name="location" value="europe">
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