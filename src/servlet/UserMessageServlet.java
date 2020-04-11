package servlet;

import domin.MessagBox;
import service.CommonService;
import service.UserMessageService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Map;

@WebServlet("/UserMessageServlet")
public class UserMessageServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            this.doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(request.getSession().getAttribute("currentName")==null)
        {
            request.setAttribute("msg","请登陆后再评论吧！！");
            request.getRequestDispatcher("userlogin.jsp").forward(request,response);
        }
        MessagBox messagBox = CommonService.getTheCurrentMessageBox(request, response);
        System.out.println(messagBox);
        String username = (String)request.getSession().getAttribute("currentName");
        int uid = (int)request.getSession().getAttribute("currentUid");
        messagBox.setUid(uid);
        messagBox.setUsername(username);

      UserMessageService service = new UserMessageService();
        boolean flag=false;
        try {
             flag = service.insertTheMessage(messagBox);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if(flag)
        {
            response.sendRedirect("travelstrategy.jsp");
        }
        else
        {

            request.getRequestDispatcher("userlogin.jsp").forward(request,response);
        }

    }
}
