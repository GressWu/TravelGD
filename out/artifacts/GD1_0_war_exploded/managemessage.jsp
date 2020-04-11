<%@ page import="service.AdminManageMessageService" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>留言管理</title>
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
                <h3 class="panel-title">全部留言信息</h3>
            </div>
            <table class="table">
                <% AdminManageMessageService service = new AdminManageMessageService();
                    service.findMessages(request,response);
                %>
                <th>文章名</th><th>mbid</th><th>uid</th><th>姓名</th><th>留言内容</th><th></th><th></th>
                <c:forEach var="m" items="${allMessage}">
                    <tr>
                        <td>${m.location}</td>
                        <td>${m.mbid}</td>
                        <td>${m.uid}</td>
                        <td>${m.username}</td>
                        <td>${m.message}</td>
                        <td><form action="DeleteMessageServlet">
                            <input type="hidden" value="${m.mbid}" name="mbid" >
                            <button type="submit" class="btn btn-danger">删除</button>
                        </form></td>
                        <td><form action="reply.jsp">
                            <input type="hidden" value="${m.mbid}" name="mbid" >
                            <input type="hidden" value="${m.location}" name="location" >
                            <input type="hidden" value="${m.username}" name="username" >

                            <button type="submit" class="btn btn-success">回复</button>
                        </form></td>
                    </tr>
                </c:forEach>

                
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