package pro1;

import pro1.GetCon;
	
	import java.sql.Connection;
	import java.sql.PreparedStatement;
	import java.sql.ResultSet;
	import java.sql.SQLException;
	public class verifyLogin1 {

	public static boolean checkLogin(double phone,String username,String password){
		boolean status=false;
		Connection con=GetCon.getCon();
		try {
			
			PreparedStatement ps=con.prepareStatement("Select * from user1 where phone = ? and username = ? and password =?");
			ps.setDouble(1,phone);
			ps.setString(2,username);
			ps.setString(3,password);
			
			ResultSet rs=ps.executeQuery();
			status=rs.next();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return status;
	}
}
