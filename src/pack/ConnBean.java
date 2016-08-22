package pack;

import java.sql.*;
import java.util.ArrayList;

public class ConnBean {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public ConnBean() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
		} catch (Exception e) {
			System.out.println("디비x : " + e);
		}
	}
	
	public ArrayList<SangpumDTO> getData(){
		ArrayList<SangpumDTO> list = new ArrayList<>();
		try {
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "123");
			String sql = "select * from sangdata";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				SangpumDTO dto = new SangpumDTO();
				dto.setCode(rs.getString("code"));
				dto.setSang(rs.getString("sang"));
				dto.setSu(rs.getInt("su"));
				dto.setDan(rs.getInt("dan"));
				list.add(dto);
				
			}
		} catch (Exception e) {
			System.out.println("에러" + e);
		}finally{
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				System.out.println("asd");
			}
		}
		return list;
	}
}
