<%@ page import="service.AdminManageInformationService" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>信息管理</title>
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
        </div>
        
        <div class="panel panel-primary" style="margin-top:20px;">
            <div class="panel-heading" >
                <h3 class="panel-title">全部用户信息</h3>
            </div>
            <table class="table">
                <% AdminManageInformationService service = new AdminManageInformationService();
                   service.showTheUsers(request,response);
                %>
                <th>uid</th><th>姓名</th><th>邮箱</th><th>性别</th><th>密码</th><th>生日</th><th>电话号码</th><th></th><th></th>
                <c:forEach var="u" items="${users}">
                    <tr>
                        <td>${u.uid}</td>
                        <td>${u.username}</td>
                        <td>${u.email}</td>
                        <td>${u.sex}</td>
                        <td>${u.upassword}</td>
                        <td>${u.birthday}</td>
                        <td>${u.telephone}</td>
                        <td>
                            <form action="deleteUserServlet">
                                <input type="hidden" value="${u.uid}" name="uid" >
                                <button type="submit" class="btn btn-danger">删除</button>
                            </form>
                            </td>
                        <td><form action="updateuser.jsp">
                            <input type="hidden" value="${u.username}" name="username" >
                            <input type="hidden" value="${u.email}" name="email" >
                            <input type="hidden" value="${u.sex}" name="sex" >
                            <input type="hidden" value="${u.upassword}" name="upassword" >
                            <input type="hidden" value="${u.birthday}" name="birthday" >
                            <input type="hidden" value="${u.telephone}" name="telephone" >
                            <button type="submit" class="btn btn-info">修改</button>
                        </form></td>
                    </tr>
                </c:forEach>

            </table>
        </div>
        <div class="panel panel-primary" style="margin-top:20px;">
            <div class="panel-heading">
                <h3 class="panel-title">全部管理员信息</h3>
            </div>
            <table class="table">
                <%
                service.showTheAdmins(request,response);
                %>
                <th>aid</th><th>姓名</th><th>密码</th><th></th><th></th>
                <c:forEach var="a" items="${admins}">
                    <tr>
                        <td>${a.aid}</td>
                        <td>${a.adminname}</td>
                        <td>${a.apassword}</td>
                        <td><form action="updateadmin.jsp">
                            <input type="hidden" value="${a.aid}" name="aid" >
                            <input type="hidden" value="${a.adminname}" name="adminname" >
                            <input type="hidden" value="${a.apassword}" name="apassword" >
                            <button type="submit" class="btn btn-info">修改</button>
                        </form></td>
                        <td><form action="insertadmin.jsp">
                            <button type="submit" class="btn btn-success">增加</button>
                        </form></td>
                    </tr>
                </c:forEach>
                
            </table>
        </div>
        <div class="panel panel-primary" style="margin-top:20px;">
            <div class="panel-heading">
                <h3 class="panel-title">统计</h3>
            </div>
            <table class="table">
                <th>mid</th><th>当前在线人数</th><th>历史总访问人数</th><th>总用户数</th>
                <tr><td>1</td><td>2</td><td>34</td><td>4</td>
                
            </table>
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