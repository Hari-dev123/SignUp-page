package MVC_Classes;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UserDao {
	 String DB_URL = "jdbc:mysql://localhost:3306/userdb";
      String DB_USER = "root";
      String DB_PASSWORD = "1807";
     String Query  = "INSERT INTO login (username , password ) VALUES (? ,?)" ;
   
     public boolean addUser(User user) {
          
    	 try {
    		 Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(DB_URL,DB_USER,DB_PASSWORD);
			PreparedStatement st = con.prepareStatement(Query);
			st.setString(1,user.getUsername());
			st.setString(2,user.getPassword());
			int rowaffected  = st.executeUpdate();
		    
			return rowaffected > 0;
		} catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
    	 
    	 
    	 
    	 
     }
}
