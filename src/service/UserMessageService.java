package service;

import dao.MessageBoxDao;
import domin.Admin;
import domin.MessagBox;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.List;

public class UserMessageService {
    MessageBoxDao messageBoxDao = new MessageBoxDao();

    public void showTheMessage(HttpServletRequest request, HttpServletResponse response, String location) throws SQLException {
        System.out.println(location);
        List<MessagBox> message = messageBoxDao.postMessage(location);
        request.getSession().setAttribute("message", message);
    }

    public boolean insertTheMessage(MessagBox ms) throws SQLException {
        int result = messageBoxDao.insertMessage(ms);
        if (result > 0)
            return true;
        else
            return false;
    }
}
