package service;

import dao.AdminDao;
import domin.Admin;

import java.sql.SQLException;

public class AdminLoginService {
    AdminDao adminDao = new AdminDao();
    public boolean adminLogin(Admin a)
    {
        Admin admin=null;
        try {
            admin=adminDao.LoginByAdminnameandPwd(a);
            return admin!=null;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return true;
    }
}
