package servlet;

import dao.UserDao;
import domin.User;
import org.apache.commons.beanutils.BeanUtils;
import service.CommonService;
import service.LoginService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.Map;

@WebServlet("/UserLoginServlet")
public class UserLoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = CommonService.getTheCurrentUser(request, response);
        LoginService service = new LoginService();
        boolean flag = service.userLogin(user);
        System.out.println(flag);
        //System.out.println(user);
        if (flag) {
            HttpSession session = request.getSession();
            String username = null;
            String telephone = null;
            String birthday = null;
            String email = null;
            String upassword = null;
            String sex = null;
            int uid = 10000;
            try {
                username = CommonService.getUsername(user);
                telephone = CommonService.getTelephone(user);
                birthday = CommonService.getUserBirthday(user);
                email = CommonService.getUserEmail(user);
                upassword = CommonService.getUserPassword(user);
                sex = CommonService.getUserSex(user);
                uid = CommonService.getUserUid(user);
            } catch (SQLException e) {
                e.printStackTrace();
            }
            session.setAttribute("currentName", username);
            session.setAttribute("currentTelephone", telephone);
            session.setAttribute("currentBirthday", birthday);
            session.setAttribute("currentEmail", email);
            session.setAttribute("currentUpassword", upassword);
            session.setAttribute("currentSex", sex);
            session.setAttribute("currentUid", uid);
            response.sendRedirect("index.jsp");

        } else {
            request.setAttribute("msg", "邮箱或密码错误");
            request.getRequestDispatcher("userlogin.jsp").forward(request, response);
        }

    }
}
