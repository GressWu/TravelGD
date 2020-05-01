<%@ page import="service.UserMessageService" %>
<%@ page import="service.ReplyService" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>

<head>
    <%String location="japan";%>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>日本</title>
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
    <nav class="navbar navbar-light navbar-expand-md fixed-top navigation-clean-button" >
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
                        <h1 class="text-center">日本小记</h1>
                        <p class="text-center"><span class="by">by</span> <a href="#">Gress</a><span class="date">Sept 8th, 2016 </span></p><img class="img-fluid" src="assets/img/temps.jpeg"></div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-10 col-lg-3 offset-md-1">
                    <div class="toc">
                        <p>快速导航</p>
                        <ul>
                            <li><a href="#brief">简介</a> </li>
                            <li><a href="#notice">注意事项</a></li>
                            <li><a href="#tem">庙宇</a> </li>
                            <li><a href="download?filename=guide.pdf">下载说明</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-10 col-lg-7 offset-md-1 offset-lg-0">
                    <div class="text">
                        <p id="brief"><br><a href="http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10183.html">日本</a>&nbsp;有这样一种说法：“&nbsp;<a href="http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10222.html">东京</a>&nbsp;八百所，&nbsp;<a href="http://www.mafengwo.cn/travel-scenic-spot/mafengwo/11042.html">京都</a>&nbsp;八百庙，&nbsp;
                            <a
                                href="http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10765.html">大阪</a>&nbsp;八百桥”。意思是指&nbsp;<a href="http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10222.html">东京</a>&nbsp;衙门多，官厅云集，是&nbsp;<a href="http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10183.html">日本</a>&nbsp;的政治中心；&nbsp;
                                <a
                                    href="http://www.mafengwo.cn/travel-scenic-spot/mafengwo/11042.html">京都</a>&nbsp;庙多，人文荟萃，是&nbsp;<a href="http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10183.html">日本</a>&nbsp;的文化中心；&nbsp;<a href="http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10765.html">大阪</a>&nbsp;桥多，商业发达，是&nbsp;
                                    <a
                                        href="http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10183.html">日本</a>&nbsp;的经济中心。<br>我们的行程倒是将&nbsp;<a href="http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10222.html">东京</a>&nbsp;、&nbsp;<a href="http://www.mafengwo.cn/travel-scenic-spot/mafengwo/11042.html">京都</a>&nbsp;、&nbsp;
                                        <a
                                            href="http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10765.html">大阪</a>&nbsp;全都囊括了进去。可七天的时间怎么都不够用，很多地方没空去，很多画面和故事没来得及记下。<br><br>9月30日出发，10月6日归程。一路从&nbsp;<a href="http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10222.html">东京</a>&nbsp;到馆山再回&nbsp;<a href="http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10222.html">东京</a>&nbsp;，又从&nbsp;
                                            <a
                                                href="http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10222.html">东京</a>&nbsp;到&nbsp;<a href="http://www.mafengwo.cn/travel-scenic-spot/mafengwo/154825.html">关西</a>&nbsp;的&nbsp;<a href="http://www.mafengwo.cn/travel-scenic-spot/mafengwo/11042.html">京都</a>&nbsp;、&nbsp;<a href="http://www.mafengwo.cn/travel-scenic-spot/mafengwo/40493.html">宇治</a>&nbsp;、&nbsp;
                                                <a
                                                    href="http://www.mafengwo.cn/travel-scenic-spot/mafengwo/16283.html">奈良</a>&nbsp;、&nbsp;<a href="http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10765.html">大阪</a>&nbsp;，时间非常紧凑。<br>相比春天的樱花、夏季的烟火、秋日的红叶、冬天的雪景，夏末秋初的&nbsp;<a href="http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10183.html">日本</a>&nbsp;并不是最好的旅行时间，而且国庆出行机票还特贵，也是没办法，上班族呀。<br><br>和大部分人一样，照片和视频都是手机随手拍下的游客照，我更希望能为享受旅行的乐趣而不断出发，把精彩的世界刻在记忆里，而不是每天几乎花掉全部时间用来拍摄一张照片。当我翻看这些略显草率的只言片语时，还是能想起浅草寺里萌萌的和服小天使，居酒屋里穿着西装的中年男人，隔着车窗看到的一片片稻田，稻荷&nbsp;
                                                    <a
                                                        href="http://www.mafengwo.cn/travel-scenic-spot/mafengwo/145804.html">大社</a>&nbsp;里提着可爱手包的浴衣女孩们，还有&nbsp;<a href="http://www.mafengwo.cn/travel-scenic-spot/mafengwo/40493.html">宇治</a>&nbsp;街上狼狈吃着快要融化的抹茶冰淇淋……<br><br>在&nbsp;<a href="http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10222.html">东京</a>&nbsp;，没有去新宿是此行的遗憾，林夕《再见二丁目》里的故事让人总想去窥视一下二丁目的样子，被称为“欲望的迷宫城市”的世界知名红灯区歌舞伎町也好想去猎奇一探。在&nbsp;
                                                        <a
                                                            href="http://www.mafengwo.cn/travel-scenic-spot/mafengwo/11042.html">京都</a>&nbsp;，那静默不语带着岁月流淌痕迹的古都让我下定决心，一定会再来。<br><br>下笔写游记时其实很纠结，因为这些地方被太多的人写过。我总在思考如何能不仅仅只是景点介绍，毕竟去过的人太多，重重复复就是那些话，因此也涂涂改改，举棋不定了好久。<br>最终，还是随意吧。<br><br></p>

                        <h2 id="notice">以下是我总结的一些注意事项:</h2>

                        <!--<iframe allowfullscreen="assets/video/viva.mp4" frameborder="0" width="560" height="315"></iframe>-->
                        <p>
                            1.语言：自由行最害怕的就是不会当地的语言，尤其是英语相当感人的 日本 。其实完全不用害怕， 日本 现在去旅游的绝大部分都是 中国 人，像 北海道 、 东京 、 大阪 、 京都 这些地方大到购物商场小到街边饭店，比较有名的地方都会讲点汉语， 中国 留学生也特别多。 日本 基本还是用汉字，大体都能看得懂。实在不清楚现在翻译软件这么厉害，完全不用担心语言的问题。
                            <br>2、交通： 日本 JR和地下铁非常方便，基本有名的景点附近都有。下个乘换案内和Google map app,前者用于换乘JR,后者用于导航。最好买张suica卡（西瓜卡），淘宝和在 日本 当地站台内都能买到，全 日本 通用。西瓜卡非常方便，任何站台内都能充钱，免去每次买车票的麻烦，进站前后刷一下就行。除此之外，公交车、便利店、大型超市都可以用， 日本 硬币非常多，免去付账找硬币的尴尬。
                            <br>3、流量卡：可以开通漫游或者在淘宝买流量卡， 日本 比较大的运营公司是softbank还有au等等，网速都还不错。
                            <br>4、现金：很多人比较纠结换多少日币比较合适，其实不用带那么多，便利店里可以用银行卡直接取出日币，手续费也不是很高。除了一些很小的饭店只收取现金外，其余都可以刷银联甚至支付宝，而像 东京 的购物商场基本都可以直接微信和支付宝。
                            <br>5、天气： 东京 天气和 南京 差不多， 北海道 比较冷，但也不用穿的非常厚实。这次失策穿了大鹅过去，除了少数时间逛室外的景点比较保暖，其余室内必须脱下。 日本 冬天不论是商场还是车站，暖气都特别足，车厢座椅都是带加热的，如果穿得太厚，就跟蒸桑拿一样😂
                            <br>6、其他：还有要注意的是， 日本 街上没有垃圾桶，产生的垃圾要么带回酒店要么装进包里，大部分JR站里面会有可以扔杂物的垃圾桶（标有“燃えるゴミ”）； 日本 街头不可以随便吸烟，有的酒店房间也是禁止吸烟的，必须去专门的吸烟室或者订酒店房间要订可以吸烟的； 日本 的卫生纸比较薄，都是可溶的，厕所里用过的卫生纸千万别扔进桶里，要冲掉； 日本 公交车后门刷卡，前门下车再刷卡。且不是每站都停的，快到站时按下附近的红色按钮，司机才会在此站停靠，等车停稳之后再缴费下车</p>
                        <figure class="figure"><img class="figure-img" src="assets/img/beach.jpg">
                            <figcaption class="figure-caption">Caption</figcaption>
                        </figure>
                        <p id="tem">日本 每个地方都有神社，基本都 大同 小异。刚进神社在鸟居前，对着神社方向鞠一躬，然后沿着表参道走到神社门口，旁边都会有一个清洗池。正确的使用方法是先用右手拿起水瓢舀一些水倒在左手的手掌中，再用左手掌接一捧水漱口或清洗，之后用水瓢中剩余的一些水沿着右手掌往下倒，把自己用手拿过的地方也洗一洗，以方便下一个人使用，之后就可以去参拜了。
                            殿内两侧都会卖些御守，保健康、保学业、保交通等等都可以随意挑选，每个神社内的御守外形上也都 大同 小异。还有一些可以抽签的竹筒，投上100日元就能摇签，一般都是大吉，抽到凶的也不用担心，把签系在旁边的架子上，厄运就不会带走。除此之外还可以在卖御守的地方买个绘马，就是一种木制牌子，在上面写下自己的心愿然后挂在架子上，愿望也会实现哦。
                            推荐大家买个御朱印本，每个神社基本都有御朱印所，有的是给你一张已经写好的，有的是当场用毛笔字给你写的。这样每到一个神社我都会去御朱印所，本子上各种神社的朱印也会让你很有成就感。</p>
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
        <input type="hidden" name="location" value="japan">
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