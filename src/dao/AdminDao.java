package dao;

import domin.Admin;
import domin.User;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.junit.Test;
import util.c3p0util;

import java.sql.SQLException;
import java.util.List;

public class AdminDao {
 /*   @Test
    public void test() throws SQLException {
        Admin admin = new AdminDao().LoginByAdminnameandPwd("尧舜禹", "iamaboss");
        System.out.println(admin);
    }*/
@Test
 public void find() throws SQLException {
     List<Admin> admins = findAllAdmin();
     for (Admin admin : admins) {
         System.out.println(admin);
     }
 }
/*@Test
public void  insert() throws SQLException {
    int i = insertAdmin("tom", "love");
    if(i>0)
        System.out.println("成功");
    else
        System.out.println("失败");
}*/
    QueryRunner qr = new QueryRunner(c3p0util.getDS());
    public Admin LoginByAdminnameandPwd(Admin a) throws SQLException {
       String sql="select * from admins where adminname=? and apassword=?";
        Admin admin = qr.query(sql, new BeanHandler<>(Admin.class), a.getAdminname(), a.getApassword());
        return admin;
    }
    public List<Admin> findAllAdmin() throws SQLException {
        String sql="select * from admins";
        List<Admin> admins = qr.query(sql, new BeanListHandler<>(Admin.class));
        return admins;
    }
    public int updateUser(User u) throws SQLException {
        String sql = "update users set upassword=? , username=? , birthday=? , sex=? , telephone=? where email=?";
        int result = qr.update(sql, u.getUpassword(), u.getUsername(), u.getBirthday(), u.getSex(), u.getTelephone(), u.getEmail());
        return result;
    }
    public int updateAdmin(Admin a) throws SQLException {
        String sql="update admins set adminname=?, apassword=? where aid=?";
        int result = qr.update(sql, a.getAdminname(), a.getApassword(), a.getAid());
        return result;
    }
    public int insertAdmin(Admin admin) throws SQLException {
        String sql="insert into admins(adminname,apassword) values(?,?)";
        int result = qr.update(sql, admin.getAdminname(), admin.getApassword());
        return result;

    }
}
