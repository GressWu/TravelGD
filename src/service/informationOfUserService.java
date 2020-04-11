package service;

import dao.UserDao;
import domin.User;

import java.sql.SQLException;

public class informationOfUserService {
    UserDao userDao = new UserDao();
    public boolean updateUser(User u) throws SQLException {
        int result = userDao.updateUserInfomation(u);
        if(result>0) {
            return true;
        }
        else
            return false;

    }
}
