package service;

import dao.AdminReplyDao;
import domin.AdminReply;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.List;

public class ReplyService {
    AdminReplyDao replyDao = new AdminReplyDao();
    public void showTheReply(HttpServletRequest request, HttpServletResponse response, String location) throws SQLException {
        List<AdminReply> replies = replyDao.showTheAdminReply(location);
        request.getSession().setAttribute("admessage", replies);
    }
}
