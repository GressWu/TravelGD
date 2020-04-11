package service;

import dao.AdminReplyDao;
import dao.MessageBoxDao;
import dao.UserDao;
import domin.AdminReply;
import domin.MessagBox;
import org.junit.Test;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.List;

public class AdminManageMessageService {
    AdminReplyDao adminReply = new AdminReplyDao();
    MessageBoxDao messageBoxDao = new MessageBoxDao();
    UserDao userDao = new UserDao();
    public void findMessages(HttpServletRequest request, HttpServletResponse response) throws SQLException {
        List<MessagBox> allMessage = messageBoxDao.findAllMessage();
        request.getSession().setAttribute("allMessage",allMessage);

    }
    public boolean deleteMessage(int mbid) throws SQLException {
        int result = messageBoxDao.deleteMessage(mbid);
        if(result>0)
            return true;
        else
            return false;
    }


    public boolean getTheUsernameByid() throws SQLException {
        MessagBox box=null;
        try {
            box=messageBoxDao.findTheUsernameByid(1);
            return box!=null;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return true;
    }
    public boolean insertReply(AdminReply a) throws SQLException {
        int i = adminReply.insertAdminReply(a);
        if(i>0)
        {
            return true;
        }
        else
            return false;
    }

}
