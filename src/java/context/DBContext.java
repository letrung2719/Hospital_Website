package context;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DBContext {
    private String pass(String pass){
        return pass;
    }
    protected Connection connection;
    public DBContext(){
        try {
            // Edit URL , username, password to authenticate with your MS SQL Server
            String url = "jdbc:sqlserver://localhost:1433;databaseName=HealthcareSystem";
            String username = "sa";
            String password = "12345";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, username, pass(password));
        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println(ex);
        }
    }

    public static void main(String[] args) {
        DBContext db = new DBContext();
        System.out.println(db.toString());
    }
}