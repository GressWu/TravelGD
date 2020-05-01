<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    
    
    <div class="container" style="margin-top: 20px;">
        <h2 style="text-align: center;">热门目的地</h2>

        <div class="row">
            <div class="col-md-6" style="background-color:lavender; ">
                <p style="margin-bottom: 10px; text-align: center; color: red; font-weight: bold; ">海外</p>
                <div>
                    <a href="">日本</a>
                    <div>
                        <form action="SuggestionServlet">
                            <input type="checkbox" name="scenery" value="东京">东京
                            <input type="checkbox" name="scenery" value="大阪"> 大阪
                            <input type="checkbox" name="scenery" value="京都">京都
                            <input type="checkbox" name="scenery" value="北海道">北海道
                            <input type="text" name="location" value="日本" style="display: none">
                            <br>
                            <input type="submit" value="开始旅行">
                        </form>
                    </div>
                </div>

                <div>
                    <a href="">非洲</a>
                    <div>
                        <form action="SuggestionServlet">
                            <input type="checkbox" name="scenery" value="突尼斯">突尼斯
                            <input type="checkbox" name="scenery" value="菲斯"> 菲斯
                            <input type="checkbox" name="scenery" value="撒哈拉">撒哈拉
                            <input type="checkbox" name="scenery" value="阿尔及利亚">阿尔及利亚
                            <input type="text" name="location" value="非洲" style="display: none">
                            <br>
                            <input type="submit" value="开始旅行">
                        </form>
                    </div>
                </div>
                <div>
                    <a href="">欧洲各国</a>
                    <div>
                        <form action="SuggestionServlet">
                            <input type="checkbox" name="scenery" value="匈牙利">匈牙利
                            <input type="checkbox" name="scenery" value="克罗地亚"> 克罗地亚
                            <input type="checkbox" name="scenery" value="奥地利">奥地利
                            <input type="checkbox" name="scenery" value="捷克">捷克
                            <input type="text" name="location" value="欧洲" style="display: none">
                            <br>
                            <input type="submit" value="开始旅行">
                        </form>
                    </div>

                </div>
            </div>
            <div class="col-md-6" style="background-color:lavenderblush;">
                <p style="margin-bottom: 10px;  text-align: center; color: red; font-weight: bold;">国内</p>
                <div>
                    <a href="">云南</a>
                    <form action="SuggestionServlet">
                        <input type="checkbox" name="scenery" value="丽江">丽江
                        <input type="checkbox" name="scenery" value="西双版纳"> 西双版纳
                        <input type="checkbox" name="scenery" value="香格里拉">香格里拉
                        <input type="checkbox" name="scenery" value="昆明">昆明
                        <input type="text" name="location" value="云南" style="display: none">
                        <br>
                        <input type="submit" value="开始旅行">
                    </form>

                </div>
                <div>
                    <a href="">山西、陕西</a>
                    <form action="SuggestionServlet">
                        <input type="checkbox" name="scenery" value="西安">西安
                        <input type="checkbox" name="scenery" value="太原"> 太原
                        <input type="checkbox" name="scenery" value="运城">运城
                        <input type="checkbox" name="scenery" value="咸阳">咸阳
                        <input type="text" name="location" value="山西" style="display: none">
                        <br>
                        <input type="submit" value="开始旅行">
                    </form>

                </div>
                <div>
                    <a href="">香港</a>
                    <form action="SuggestionServlet">
                        <input type="checkbox" name="scenery" value="太平山">太平山
                        <input type="checkbox" name="scenery" value="迪士尼乐园"> 迪士尼乐园
                        <input type="checkbox" name="scenery" value="海洋公园">海洋公园
                        <input type="checkbox" name="scenery" value="咸香港会议展览中心阳">香港会议展览中心
                        <input type="text" name="location" value="香港" style="display: none">
                        <br>
                        <input type="submit" value="开始旅行">
                    </form>

                </div>
            </div>
        </div>
        
      
    </div>
    <div class="footer-basic">
        <footer>
            <div class="social"><a href="#"><i class="icon ion-social-instagram"></i></a><a href="#"><i class="icon ion-social-snapchat"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-facebook"></i></a></div>
            <ul class="list-inline">
                <li class="list-inline-item"><a href="#">Home</a></li>
                <li class="list-inline-item"><a href="#">Services</a></li>
                <li class="list-inline-item"><a href="#">About</a></li>
                <li class="list-inline-item"><a href="#">Terms</a></li>
                <li class="list-inline-item"><a href="#">Privacy Policy</a></li>
            </ul>
            <p class="copyright">Company Name © 2017</p>
        </footer>
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