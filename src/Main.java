
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Main {
    public static void main(String[] args) {
        try {
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql", "root", "Prashant@123");
            System.out.println(con);
        } catch (Exception e) {

        }
    }
}