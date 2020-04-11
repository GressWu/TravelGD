<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>更改用户信息</title>
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
<%String username = request.getParameter("username");
    String email = request.getParameter("email");
    request.getSession().setAttribute("adminemail",email);
    String sex = request.getParameter("sex");
    String upassword = request.getParameter("upassword");
    String birthday = request.getParameter("birthday");
    String telephone = request.getParameter("telephone");
%>
    <div id="wrapper">
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand"> <a href="adminster_index.jsp">首页</a></li>
                <li> <a href="manageinformation.jsp">信息管理</a></li>

                <li> <a href="managemessage.jsp">留言管理</a></li>
                <li><a href="logoffServlet">点我注销</a></li> <a href="logoffServlet"></a>
            </ul>
        </div>
        <div class="page-content-wrapper">
            <div class="container-fluid"><a class="btn btn-link" role="button" id="menu-toggle" href="#menu-toggle"><i class="fa fa-bars"></i></a>
                
            </div>
            <div class="container">
                <form class="form-horizontal" role="form" style="margin-top: 90px;" action="AdminUpdateUserServlet" method="post">
                    <div class="form-group">
                      <label  class="col-sm-2 control-label">姓名</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" id="firstname" placeholder="<%=username%>" name="username">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="lastname" class="col-sm-2 control-label">邮箱</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" id="lastname" placeholder="<%=email%>"   name="email" disabled>
                      </div>
                    </div>
                    <div class="form-group">
                        <label for="lastname" class="col-sm-2 control-label">密码</label>
                        <div class="col-sm-10">
                          <input type="password" class="form-control"  placeholder="<%=upassword%>" name="upassword">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="lastname" class="col-sm-2 control-label">性别</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control"  placeholder="<%=sex%>" name="sex">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="lastname" class="col-sm-2 control-label">生日</label>
                        <div class="col-sm-10">
                          <input type="date" class="form-control" name="birthday">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="lastname" class="col-sm-2 control-label">手机号码</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control"  placeholder="<%=telephone%>" name="telephone">
                        </div>
                      </div>
                    <div class="form-group">
                      <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default">提交修改</button>
                      </div>
                    </div>
                  </form>
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