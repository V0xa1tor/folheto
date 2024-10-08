package dev.emz.folheto.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {

    private static final String DATABASE = "folheto_db";
    private static final String URL = "jdbc:postgresql:" + DATABASE;
    private static final String USER = "postgres";
    private static final String PASSWORD = "postgres";

    private ConnectionFactory() {}

    public static Connection getConnection() {
        Connection connection = null;

        try { connection = DriverManager.getConnection(URL, USER, PASSWORD); }
        catch (SQLException e) {
            System.err.println("Unnable to connect with Database.");
        }

        return connection;
    }
}
