package pack;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import jdk.nashorn.internal.ir.RuntimeNode.Request;

public class TEST2GS {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private String buser;
	
	public String getBuser() {
		return buser;
	}

	public void setBuser(String buser) {
		this.buser = buser;
	}
	
	public TEST2GS() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "123");
			
		} catch (Exception e) {
			System.out.println("디비x : " + e);
		}
	}
	
	public ArrayList<TEST2> getData(){
		ArrayList<TEST2> list = new ArrayList<>();
		
		try {
			String sql = "select sawon_no,sawon_name,sawon_jik,sawon_gen,(select avg(sawon_pay) from sawon) from sawon inner join buser on buser_num=buser_no where buser_name=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, buser);
			//System.out.println(buser);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				TEST2 dto = new TEST2();
				dto.setCode(rs.getString("sawon_no"));
				dto.setSang(rs.getString("sawon_name"));
				dto.setSu(rs.getString("sawon_jik"));
				dto.setDan(rs.getString("sawon_gen"));
				dto.setAvg(rs.getInt(5));
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
