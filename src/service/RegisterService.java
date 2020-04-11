package service;

import dao.UserDao;
import domin.User;

import java.sql.SQLException;

public class RegisterService {
    UserDao userDao = new UserDao();
    public boolean userRegist(User u) throws SQLException {
        boolean flag = CommonService.findTheRepetitionUser(u);
        if(flag)    //用户存在
        {
            return false;
        }
        else {    //用户不存在
            int result = userDao.registerByEmailAndPwdAndUsername(u);
            if(result==1)//插入用户成功
                return true;
            else
                return false;

        }

    }

}
