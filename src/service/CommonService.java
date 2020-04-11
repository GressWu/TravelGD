package service;

import dao.UserDao;
import domin.Admin;
import domin.AdminReply;
import domin.MessagBox;
import domin.User;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.Map;

public class CommonService {
    //登录成功后获得相对应的JavaBean对象的属性
    public static String getUsername(User u) throws SQLException {
        return new UserDao().LoginByEmailandPwd(u).getUsername();
    }
    public static String getUserPassword(User u) throws SQLException {
        return new UserDao().LoginByEmailandPwd(u).getUpassword();
    }
    public static String getUserEmail(User u) throws SQLException {
        return new UserDao().LoginByEmailandPwd(u).getEmail();
    }
    public static String getUserBirthday(User u) throws SQLException {
        return new UserDao().LoginByEmailandPwd(u).getBirthday();
    }
    public static String getUserSex(User u) throws SQLException {
        return new UserDao().LoginByEmailandPwd(u).getSex();
    }
    public static int getUserUid(User u) throws SQLException {
        return new UserDao().LoginByEmailandPwd(u).getUid();
    }
    public static String getTelephone(User u) throws SQLException {
        return new UserDao().LoginByEmailandPwd(u).getTelephone();
    }

    //如果用户存在返回true，如果用户不存在返回false
    public static boolean findTheRepetitionUser(User u) throws SQLException {
        User user = new UserDao().findByEmail(u);
        return user!=null;
    }
    //将页面返回的值封装为User对象
    public static User getTheCurrentUser(HttpServletRequest request, HttpServletResponse response)
    {
        Map<String, String[]> map = request.getParameterMap();
        User user = new User();
        try {
            BeanUtils.populate(user, map);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }
    //将页面返回值封装为Admin对象
    public static Admin getTheCurrentAdmin(HttpServletRequest request, HttpServletResponse response)
    {
        Map<String, String[]> map = request.getParameterMap();
        Admin admin = new Admin();
        try {
            BeanUtils.populate(admin, map);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return admin;
    }
    //将页面返回值封装为MessageBox
    public static MessagBox getTheCurrentMessageBox(HttpServletRequest request, HttpServletResponse response)
    {
        Map<String, String[]> map = request.getParameterMap();
        MessagBox messagBox = new MessagBox();
        try {
            BeanUtils.populate(messagBox, map);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return messagBox;
    }
    //将页面返回封装成AdminReply对象
    public static AdminReply getTheCurrentAdminReply(HttpServletRequest request, HttpServletResponse response)
    {
        Map<String, String[]> map = request.getParameterMap();
        AdminReply adminReply = new AdminReply();
        try {
            BeanUtils.populate(adminReply, map);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return adminReply;
    }
}
