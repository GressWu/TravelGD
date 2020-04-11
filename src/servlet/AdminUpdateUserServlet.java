package servlet;

import domin.Admin;
import domin.User;
import service.AdminManageInformationService;
import service.CommonService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/AdminUpdateUserServlet")
public class AdminUpdateUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = CommonService.getTheCurrentUser(request, response);
        //System.out.println(user);
        String adminemail = (String)request.getSession().getAttribute("adminemail");
        user.setEmail(adminemail);
        AdminManageInformationService service = new AdminManageInformationService();
        boolean flag=false;
        try {
             flag = service.updateUser(user);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        if(flag)
        {
            response.sendRedirect("adminster_index.jsp");
        }
        else
        {
            System.out.println("更改失败！！");
        }
        //System.out.println(adminemail);
    }
}
