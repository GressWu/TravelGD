package dao;

import domin.AdminReply;
import domin.User;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.junit.Test;
import util.c3p0util;

import java.sql.SQLException;
import java.util.List;

public class AdminReplyDao {
/*    @Test
public void insert() throws SQLException {
    int i = insertAdminReply("尧舜禹", "好的祝您愉快", "japan", 2);
    if(i>0)
        System.out.println("成功");
    else
        System.out.println("失败");

}*/
/*@Test
public void print() throws SQLException {
    List<AdminReply> japan = showTheAdminReply("japan");
    for (AdminReply adminReply : japan) {
        System.out.println(adminReply);
    }
}*/
    QueryRunner qr = new QueryRunner(c3p0util.getDS());
    public int insertAdminReply(AdminReply a) throws SQLException {
        String sql="insert into adminreply(adminname,admessage,location,mbid) values(?,?,?,?)";
        int update = qr.update(sql, a.getAdminname(), a.getAdmessage(), a.getLocation(), a.getMbid());
        return update;
    }
    public List<AdminReply> showTheAdminReply(String location) throws SQLException {
        String sql="select * from adminreply where location=?";
        List<AdminReply> replies = qr.query(sql, new BeanListHandler<>(AdminReply.class), location);
        return replies;
    }
}
