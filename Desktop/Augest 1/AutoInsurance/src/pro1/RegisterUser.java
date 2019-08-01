package pro1;



	import java.sql.*;

	import pro1.GetCon;
	public class RegisterUser {
	static int status=0;
	
	public static int register(String username,String password,String gender,String adderess,double phone){


		Connection con=GetCon.getCon();
		PreparedStatement ps;
		try {
			ps = con.prepareStatement("insert into user1 values(?,?,?,?,?)");
			double	nextvalue1=GetCon.getPrimaryKey();
			ps.setDouble(5,nextvalue1);
			ps.setString(1,username);
			ps.setString(2,password);
			
			ps.setString(3,gender);
			ps.setString(4,adderess);
			ps.setDouble(5,phone);
			
			status=ps.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return status;
		
	}
	}



