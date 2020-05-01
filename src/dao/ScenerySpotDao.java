package dao;

import domin.ScenerySpot;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.junit.Test;
import util.c3p0util;

import java.sql.SQLException;

public class ScenerySpotDao {
 /*   @Test
    public void find() throws SQLException {
        ScenerySpot tokyo = findTheDay("东京");
        System.out.println(tokyo);
        ScenerySpot introduction = findTheIntroduction("日本");
        System.out.println(introduction.getIntroduction());
        System.out.println(introduction);
    }*/
    QueryRunner qr = new QueryRunner(c3p0util.getDS());
    public ScenerySpot findTheDay(String destination) throws SQLException {
        String sql="select * from sceneryspot where destination=?";
        ScenerySpot query = qr.query(sql, new BeanHandler<>(ScenerySpot.class),destination);
        return query;
    }
    public ScenerySpot findTheIntroduction(String location) throws SQLException {
        String sql="select * from sceneryspot where location=?";
        ScenerySpot introduction = qr.query(sql, new BeanHandler<>(ScenerySpot.class),location);
        return  introduction;
    }



}
