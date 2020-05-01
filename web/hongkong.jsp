<%@ page import="service.UserMessageService" %>
<%@ page import="service.ReplyService" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>

<head>
    <%String location="hongkong";%>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>香港</title>
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
                        <h1 class="text-center">2019年端午节香港，带娃儿来一趟美食之旅</h1>
                        <p class="text-center"><span class="by">by</span> <a href="#">Ponny Ma</a><span class="date">Sept 8th, 2016 </span></p><img class="img-fluid" src="assets/img/hongkongfood.png"></div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-10 col-lg-3 offset-md-1">
                    <div class="toc">
                        <p>快速导航</p>
                        <ul>
                            <li><a href="#brief">前言</a> </li>
                            <li><a href="#find">策划及实际行程</a></li>
                            <li><a href="#tem">旺角维景酒店</a> </li>
                            <li><a href="download?filename=guide.pdf">下载说明</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-10 col-lg-7 offset-md-1 offset-lg-0">
                    <div class="text">
                        <p id="brief">

                            香港 ，一个五味杂陈的城市。 <br>
                            鸟笼般的城市里，有着一间间看不到风景的房间；<br>
                            电影中的那几张脸，张国荣、周润发、张曼玉、梁朝伟...... <br>
                            最质传统的茶餐厅，菠萝油、车仔面、咖喱鱼丸…… <br>
                            ……

                            香港 ，这一座城，一面想离开，一面又留恋。 <br>
                            或许，你应该多来几趟 香港 ，才更能看清它的真实面貌。 <br>

                            去年端午，带着娃儿和老婆来了趟 香港 亲子游，回来后没几天发现那里的一切都变了。之后，持续大半年乱港严重危害了那里的安全，近期是不可能再去了。暴戾之气比起现在的疫情是 香港 更可怕的瘟疫， 香港 的黄金岁月不再，这篇游记权当记录这段曾经不错的经历，也当怀念2019年端午节前的 香港 ，希望能早日重现往日的繁荣。
                        </p>
                        <h2 id="notice">策划及实际行程</h2>

                        <!--<iframe allowfullscreen="assets/video/viva.mp4" frameborder="0" width="560" height="315"></iframe>-->
                        <p id="find">

                            从娃儿两岁多能够自己走路不再用人抱起，我们就保持着每年一到两次的亲子游，开始和朋友们家一起短途自驾去 蓟县 、 北戴河 周边游，到坐着高铁去 苏州 、 扬州 、 武汉 、 广州 较远地方，再到 锦州 、 塞罕坝 、 乌兰布统 、 锡林郭勒 和 贵州 的长途自驾游，经验一点点的积累，胆子也越来越大，心想着是不是可以去趟国外或国内更远的地方。鉴于这个五岁半小男孩到了狗都嫌的年龄，淘气和破坏程度不可预知，就先选了难度相对较小的 香港 自由行试下水。相对于适合带孩儿去的 日本 ， 香港 无论是时间还是机酒更为灵活，刚刚好的四天行程也就是一个周末加上端午假期，于是一场说走就走的旅行就在出发前半个月的某天拍脑门决定了，为了省事儿机酒套餐也是在出行网站一并打包搞定，当然港澳通行证和签注肯定要提前准备的。<br>

                            既然是亲子游，那就不能和往常一样，两个成年人背着双肩包苦行僧般的到处跑。带着孩子和内地旅行团的大妈一起挤金紫荆广场，在他眼里应该和去趟 天津 家门口的小公园没嘛区别；带他去石澳小住两三天，时间又不允许。小孩子感兴趣的地方永远是吃和玩儿，通常带娃来 香港 都是奔着迪士尼来的，于是就来一次主题是美食之旅的亲子游吧。把四天时间分成了两部分，前两天（半天去港时间）是带着他到处吃，然后随性瞎逛；后两天（半天回津时间）则泡在迪士尼乐园里让他撒欢的玩儿！<br>

                            “ 香港 的根基到底在哪？这些问题太大了，或许是由最微小的一点开始，往往是食物，一串鱼蛋、一杯鸳鸯、某某铺的糕点、某某店的招牌菜，而内里其实是一份感情……” 香港 不仅是购物狂的天堂，更是吃货们热爱的美食之都，从几十港币一碗的云吞面到几百港币的米其林餐厅都能让人回味无穷，必吃的美食非常多。说实话，对于出发前的准备，迪士尼两天时间怎么玩好我是没太上心，但对于前两天的美食行程，确实是下了不少功夫，专门列了长长一串美食清单，而且特意把住宿地点选在旺角。本是想致敬街头美食斗士白钟元大叔的美食足迹的，可是计划真的赶不上变化，千万不要高估自己肚子，不可能像电视中白大叔那样吃上几轮，其实能持续吃两轮就不错了，这也导致我们和街斗的美食路线严重偏离</p>
                        <figure class="figure"><img class="figure-img" src="assets/img/desk.jpg">
                            <figcaption class="figure-caption">Caption</figcaption>
                        </figure>
                        <p id="tem">
                            位置超好的旺角维景酒店 <br>
                            从机场出来后，乘坐大巴可以直达旺角酒店的楼下，非常方便。透过车窗，看到吊挂在大楼外沿的各式交错杂乱的广告牌感受到了一种莫名的亲切和兴奋。2008年曾经和LP来过这里，十年后带着小家伙故地重游，这些场景还是深深的烙印在我的记忆深处了。
                            <br>
                            　坐上机场巴士 A21抵达旺角维景已经是中午一点了。选择这家酒店一来是因为性价比不错，交通方便，太子地铁站和机场巴士站就在楼下；二来因为周围几乎汇集了所有关于 香港 的味道，从接地气的米其林街头小吃，到高档餐厅，从标新立异的搞怪美食，到传统的百年老店，总能邂逅一种你喜欢的味道。 金华 冰厅、十八座狗仔粉、添好运、点点心、爱文生、肥姐、池记，也只有一两站地铁的距离，走路也就一刻钟。没有什么，能够比食物带来的满足，更叫人留恋。
                            <br>
                            而且女人街、金鱼街、波鞋街、 上海 街、西洋菜街等一堆好逛的地摊，朗豪坊商场也都在附近。</p>
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
        <input type="hidden" name="location" value="hongkong">
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