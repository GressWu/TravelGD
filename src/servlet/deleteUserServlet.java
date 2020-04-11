package servlet;

import service.AdminManageInformationService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/deleteUserServlet")
public class deleteUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        AdminManageInformationService service = new AdminManageInformationService();

        String uid1 = request.getParameter("uid");
        //System.out.println(uid1);
        int uid = Integer.parseInt(uid1);
        System.out.println(uid);
        boolean flag=false;
        try {
             flag = service.deleteUser(uid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if(flag)
        {
            response.sendRedirect("adminster_index.jsp");
        }
        else
        {
            System.out.println("删除失败");
        }

    }
}
