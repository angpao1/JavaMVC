package database;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Database {

    private Connection connect;

    public Database() {
        try {
            Class.forName(Config.DRIVER);
            connect = DriverManager.getConnection(Config.URL, Config.USERNAME, Config.PASSWORD);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<Map<String, Object>> queryList(String sql) {
        List<Map<String, Object>> list = new ArrayList<>();

        try {
            PreparedStatement ps = connect.prepareStatement(sql);
            ResultSet result = ps.executeQuery();
            ResultSetMetaData md = result.getMetaData();
            while (result.next()) {
                Map<String, Object> map = new HashMap<>();
                for (int i = 1; i <= md.getColumnCount(); i++) {
                    map.put(md.getColumnLabel(i), result.getObject(i));
                }
                list.add(map);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    public int add(String sql, Object... args) {
        int result = 0;
        try {
            PreparedStatement ps = connect.prepareStatement(sql);
            for (int i = 0; i < args.length; i++) {
                ps.setObject(i + 1, args[i]);
            }
            result = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public void close() {
        try {
            if (connect != null) {
                connect.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
