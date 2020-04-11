package servlet;

import domin.User;
import org.apache.commons.beanutils.BeanUtils;
import service.CommonService;
import service.RegisterService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Map;

@WebServlet("/UserRegisterServlet")
public class UserRegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = CommonService.getTheCurrentUser(request, response);
        RegisterService service = new RegisterService();
        boolean flag=false;
        try {
             flag = service.userRegist(user);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if(flag)      //插入用户成功
        {
            response.sendRedirect("userlogin.jsp");
        }
        else {
            request.setAttribute("msg","邮箱已被注册请重新注册");
            request.getRequestDispatcher("register.jsp").forward(request,response);
        }


    }
}
