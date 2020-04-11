package service;

import dao.UserDao;
import domin.User;

import java.sql.SQLException;

public class LoginService {
    UserDao userDao = new UserDao();
    public boolean userLogin(User u)
    {
       User user=null;
        try {
            user= userDao.LoginByEmailandPwd(u);
            return user!=null;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return true;
    }

}
