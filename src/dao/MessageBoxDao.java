package dao;

import domin.Admin;
import domin.MessagBox;
import domin.User;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.junit.Test;
import util.c3p0util;

import java.sql.SQLException;
import java.util.List;

public class MessageBoxDao {
/* @Test
    public void TestDao() throws SQLException {
      int i = insertMessage("任我行", "富士山下樱花树", 1,"japan");
      if(i==1)
      {
          System.out.println("发表成功");
      }
      else
      {
          System.out.println("发表失败");
      }
  }*/
/*@Test
        public void Test() throws SQLException {
    List<MessagBox> japan = postMessage("fd");
    System.out.println(japan);
    if(japan.size()==0)
        System.out.println("好的哦");
    for (MessagBox messagBox : japan) {
        System.out.println(messagBox.getMbid());
        System.out.println(messagBox.getMessage() );
        System.out.println(messagBox.getLocation());
        System.out.println("==================");}
}*/
/*@Test
    public void Post() throws SQLException {
        List<MessagBox> allMessage = findAllMessage();
        for (MessagBox messagBox : allMessage) {
            System.out.println(messagBox);
        }
    }*/
/*@Test
    public void delete() throws SQLException {
        int i = deleteMessage(3);
        if(i>0)
            System.out.println("删除成功");
        else
            System.out.println("删除失败");
    }*/
/*@Test
public void asd() throws SQLException {
    MessagBox box = findTheUsernameByid(1);
    System.out.println(box.getUsername());
}*/
    QueryRunner qr = new QueryRunner(c3p0util.getDS());

    public List<MessagBox> postMessage(String location) throws SQLException {
        String sql = "select * from messagebox where location=?";
        List<MessagBox> resultset = qr.query(sql, new BeanListHandler<>(MessagBox.class),location);
        return resultset;
    }
    public int insertMessage(MessagBox ms) throws SQLException {
        String sql="insert into messagebox(username,message,uid,location) values (?,?,?,?)" ;
        int result = qr.update(sql, ms.getUsername(), ms.getMessage(), ms.getUid(),ms.getLocation());
        return result;
    }
    public List<MessagBox> findAllMessage() throws SQLException {
        String sql="select * from messagebox";
        List<MessagBox> messages = qr.query(sql, new BeanListHandler<>(MessagBox.class));
        return messages;

    }
    public int deleteMessage(int mbid) throws SQLException {
        String sql="delete from messagebox where mbid=?";
        int result = qr.update(sql, mbid);
        return result;
    }
    public MessagBox findTheUsernameByid(int mbid) throws SQLException {
        String sql="select username from users where uid=?";
        MessagBox box = qr.query(sql, new BeanHandler<>(MessagBox.class), mbid);
        return box;

    }
}
