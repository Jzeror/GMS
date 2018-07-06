package test;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class JDBC {
	public static void main(String[] args) {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn = DriverManager
					.getConnection("jdbc:oracle:thin:@localhost:1521:xe","jzero","fbworud0");
			String sql = "SELECT * FROM TAB";
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			List<String> list = new ArrayList<>();
			while(rs.next()) {
				list.add(rs.getString("TNAME"));
			}
			System.out.println("테이블"+ list);
		} catch (SQLException e) {
			System.out.println("에러 발생");
			e.printStackTrace();  //얘는 다른 곳에서 확인할 수 있음. 에러가 뭔지
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	}
}
