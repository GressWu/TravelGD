package dao;

import domin.User;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.junit.Test;
import util.c3p0util;

import java.sql.SQLException;
import java.util.List;


public class UserDao {

    /*  @Test
     public void testdao() throws SQLException {
          int i = updateUserInfomation("tywyw971201", "武宇威", "1998-12-01", "男", "15535187169", 1);
          if(i>0)
              System.out.println("修改成功");
          else
              System.out.println("修改失败");
      }*/
   /* @Test
    public void find() throws SQLException {
        List<User> users = getAllUserInformation();
        for (User user : users) {
            System.out.println(user);
        }
    }*/
 /*  @Test
            public void delete() throws SQLException {
       int i = deleteUser(10);
       if(i>0)
           System.out.println("删除成功");
       else
           System.out.println("删除失败");

   }*/
    QueryRunner qr = new QueryRunner(c3p0util.getDS());

    public User LoginByEmailandPwd(User u) throws SQLException {
        String sql = "select * from users where email=? and upassword=?";
        User user = qr.query(sql, new BeanHandler<>(User.class), u.getEmail(), u.getUpassword());
        return user;
    }

    public int registerByEmailAndPwdAndUsername(User u) throws SQLException {
        String sql = "insert into users(email,upassword,username) values(?,?,?)";
        int result = qr.update(sql, u.getEmail(), u.getUpassword(), u.getUsername());
        return result;

    }

    public User findByEmail(User u) throws SQLException {
        String sql = "select * from users where email=?";
        User user = qr.query(sql, new BeanHandler<>(User.class), u.getEmail());
        return user;
    }

    public int updateUserInfomation(User u) throws SQLException {
        String sql = "update users set upassword=? , username=? , birthday=? , sex=? , telephone=? where email=?";
        int result = qr.update(sql, u.getUpassword(), u.getUsername(), u.getBirthday(), u.getSex(), u.getTelephone(), u.getEmail());
        return result;

    }
    public List<User> getAllUserInformation() throws SQLException {
        String sql="select * from users";
        List<User> users = qr.query(sql, new BeanListHandler<>(User.class));
        return users;
    }
    public int deleteUser(int uid) throws SQLException {
        String sql="delete from users where uid=?";
        int result = qr.update(sql, uid);
        return result;
    }
    public User findTheUsernameByid(int uid) throws SQLException {
        String sql="select username from users where uid=?";
        User user = qr.query(sql, new BeanHandler<>(User.class), uid);
        return user;

    }
}
