package servlet;

import service.AdminManageMessageService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/DeleteMessageServlet")
public class DeleteMessageServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        AdminManageMessageService service = new AdminManageMessageService();
        String mbid1 = request.getParameter("mbid");
        int mbid = Integer.parseInt(mbid1);
        boolean flag=false;
        try {
             flag = service.deleteMessage(mbid);
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
