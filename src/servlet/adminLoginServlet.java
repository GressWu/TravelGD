package servlet;

import domin.Admin;
import domin.User;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.dbutils.DbUtils;
import service.AdminLoginService;
import service.CommonService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

@WebServlet("/adminLoginServlet")
public class adminLoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            this.doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Admin admin = CommonService.getTheCurrentAdmin(request, response);
        AdminLoginService service = new AdminLoginService();
        boolean flag = service.adminLogin(admin);
        if(flag)
        {
            request.getSession().setAttribute("aaaname",admin.getAdminname());
            response.sendRedirect("adminster_index.jsp");
        }
        else {
            request.setAttribute("msg","管理员名或密码错误！");
            request.getRequestDispatcher("admilogin.jsp").forward(request,response);
        }

    }
}
