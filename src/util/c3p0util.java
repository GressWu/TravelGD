package util;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class c3p0util {
    private static ComboPooledDataSource cpds = new ComboPooledDataSource();
    public static Connection getConnection() throws SQLException {
        return cpds.getConnection();
    }
    public static DataSource getDS()
    {
        return cpds;
    }
    public static void release(Connection conn, Statement stm, ResultSet rs) throws SQLException {
        conn.close();
        stm.close();
        rs.close();
    }
}
