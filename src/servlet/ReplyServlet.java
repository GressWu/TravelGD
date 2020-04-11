package servlet;

import domin.AdminReply;
import service.AdminManageMessageService;
import service.CommonService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/ReplyServlet")
public class ReplyServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        AdminReply reply = CommonService.getTheCurrentAdminReply(request, response);
        String aaaname = (String) request.getSession().getAttribute("aaaname");
        reply.setAdminname(aaaname);
        System.out.println(reply);
        AdminManageMessageService service = new AdminManageMessageService();
        boolean flag = false;
        try {
            flag = service.insertReply(reply);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if (flag) {
            response.sendRedirect("adminster_index.jsp");
        } else {
            System.out.println("回复失败！！！！！");
        }

    }
}
