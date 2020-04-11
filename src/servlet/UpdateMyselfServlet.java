package servlet;

import domin.User;
import org.apache.commons.beanutils.BeanUtils;
import service.CommonService;
import service.informationOfUserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Map;

@WebServlet("/UpdateMyselfServlet")
public class UpdateMyselfServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = CommonService.getTheCurrentUser(request, response);
        String email=null;

        try {
             email = (String)request.getSession().getAttribute("currentEmail");
        } catch (Exception e) {
            e.printStackTrace();
        }
        user.setEmail(email);
        System.out.println("现在的："+user);
        informationOfUserService service = new informationOfUserService();
        boolean flag=false;
        try {
            flag = service.updateUser(user);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if(flag)
        {
            request.getSession().invalidate();
            response.sendRedirect("userlogin.jsp");

        }
        else {
            response.getWriter().println("更改失败！！");
        }


    }
}
