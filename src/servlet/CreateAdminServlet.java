package servlet;

import domin.Admin;
import service.AdminManageInformationService;
import service.CommonService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/CreateAdminServlet")
public class CreateAdminServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Admin admin = CommonService.getTheCurrentAdmin(request,response);
        AdminManageInformationService service = new AdminManageInformationService();
        boolean flag=false;
        try {
             flag = service.insertAdmin(admin);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if(flag)
        {
            response.sendRedirect("adminster_index.jsp");
        }
        else
        {
            System.out.println("增加失败！！");
        }

    }
}
