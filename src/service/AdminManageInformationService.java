package service;

import dao.AdminDao;
import dao.UserDao;
import domin.Admin;
import domin.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.List;

public class AdminManageInformationService {
    UserDao userDao = new UserDao();
    AdminDao adminDao = new AdminDao();
    public void showTheUsers(HttpServletRequest request, HttpServletResponse response) throws SQLException {
        List<User> users = userDao.getAllUserInformation();
        request.getSession().setAttribute("users",users);
    }
    public void showTheAdmins(HttpServletRequest request, HttpServletResponse response) throws SQLException {
        List<Admin> admins = adminDao.findAllAdmin();
        request.getSession().setAttribute("admins",admins);
    }
    public boolean deleteUser(int uid) throws SQLException {
        int result = userDao.deleteUser(uid);
        if(result>0)
            return true;
        else
            return false;

    }
    public boolean updateUser(User u) throws SQLException {
        int result = adminDao.updateUser(u);
        if(result>0) {
            return true;
        }
        else
            return false;

    }
    public boolean updateAdmin(Admin a) throws SQLException {
        int result = adminDao.updateAdmin(a);
        if(result>0)
            return true;
        else
            return false;
    }
    public  boolean insertAdmin(Admin admin) throws SQLException {
        int result = adminDao.insertAdmin(admin);
        if(result>0)
            return true;
        else
            return false;

    }
}
