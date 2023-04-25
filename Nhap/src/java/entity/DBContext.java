package entity;





import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DBContext {
    
    /*USE BELOW METHOD FOR YOUR DATABASE CONNECTION FOR BOTH SINGLE AND MULTILPE SQL SERVER INSTANCE(s)*/
    /*DO NOT EDIT THE BELOW METHOD, YOU MUST USE ONLY THIS ONE FOR YOUR DATABASE CONNECTION*/
     public Connection getConnection()throws Exception {
        String url = "jdbc:sqlserver://"+serverName+":"+portNumber + "\\" + instance +";databaseName="+dbName;
        if(instance == null || instance.trim().isEmpty())
            url = "jdbc:sqlserver://"+serverName+":"+portNumber +";databaseName="+dbName;
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        return DriverManager.getConnection(url, userID, password);
    }   
    /*Insert your other code right after this comment*/
    /*Change/update information of your database connection, DO NOT change name of instance variables in this class*/
    private final String serverName = "NHUNNHUN";
    private final String dbName = "studentDepartment";
    private final String portNumber = "1433";
    private final String instance="";//LEAVE THIS ONE EMPTY IF YOUR SQL IS A SINGLE INSTANCE
    private final String userID = "sa";
    private final String password = "123";
    
    
    
       public static void main(String[] args) {
      Connection conn = null;
      String url = "jdbc:sqlserver://NHUNNHUN:1433;databaseName=studentDepartment";
      String user = "sa";
      String password = "123";
      
      try {
         // Thiết lập kết nối tới SQL Server
         Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
         conn = DriverManager.getConnection(url, user, password);
         
         // Kiểm tra kết nối thành công hay không
         if (conn != null) {
            System.out.println("Kết nối tới SQL Server thành công");
         }
      } catch (SQLException e) {
         System.out.println("Lỗi kết nối tới SQL Server: " + e.getMessage());
      } catch (ClassNotFoundException e) {
         System.out.println("Không tìm thấy Driver: " + e.getMessage());
      } finally {
         try {
            if (conn != null) {
               conn.close();
            }
         } catch (SQLException e) {
            System.out.println("Lỗi đóng kết nối: " + e.getMessage());
         }
      }
   }
}

 