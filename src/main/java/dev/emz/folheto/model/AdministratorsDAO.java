package dev.emz.folheto.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AdministratorsDAO {

    public static boolean create(Administrator adm) {
        try (Connection conn = ConnectionFactory.getConnection()) {

            String sql = "INSERT INTO administrators(username, password, fullname) VALUES (?, ?, ?);";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, adm.getUsername());
            ps.setString(2, adm.getPassword());
            ps.setString(3, adm.getFullname());

            // Modified more than 0 rows
            if (ps.executeUpdate() > 0) return true;
            
        } catch (SQLException e) { System.err.println(e.getMessage()); }

        return false;
    }

    public static boolean delete(String username) {
        try (Connection conn = ConnectionFactory.getConnection()) {

            String sql = "DELETE FROM administrators WHERE username=?;";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, username);

            // Modified more than 0 rows
            if (ps.executeUpdate() > 0) return true;
            
        } catch (SQLException e) { System.err.println(e.getMessage()); }

        return false;
    }

    public static boolean update(Administrator adm) {
        try (Connection conn = ConnectionFactory.getConnection()) {

            String sql = "UPDATE administrators SET password=?, fullname=? WHERE username=?;";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, adm.getPassword());
            ps.setString(2, adm.getFullname());
            ps.setString(3, adm.getUsername());

            // Modified more than 0 rows
            if (ps.executeUpdate() > 0) return true;
            
        } catch (SQLException e) { System.err.println(e.getMessage()); }

        return false;
    }

    public static Administrator findByUsername(String username) {
        try (Connection conn = ConnectionFactory.getConnection()) {

            String sql = "SELECT username, password, fullname FROM administrators WHERE username=?;";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, username);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) return new Administrator(
                rs.getString("username"),
                rs.getString("password"),
                rs.getString("fullname"));
            
        } catch (SQLException e) { System.err.println(e.getMessage()); }

        return null;
    }

    public static List<Administrator> findAll() {
        try (Connection conn = ConnectionFactory.getConnection()) {

            String sql = "SELECT username, password, fullname FROM administrators;";
            PreparedStatement ps = conn.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();
            ArrayList<Administrator> adms = new ArrayList<>();
            while (rs.next()) {
                adms.add(new Administrator(
                    rs.getString("username"),
                    rs.getString("password"),
                    rs.getString("fullname")));
            }

            if (!adms.isEmpty()) return adms;
            
        } catch (SQLException e) { System.err.println(e.getMessage()); }

        return null;
    }

}