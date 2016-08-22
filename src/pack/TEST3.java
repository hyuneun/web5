package pack;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class TEST3 {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private DataSource ds;
	
	/*★pooling 기법★
	데이터베이스 커넥션을 여러 개 만들어서 특정 공간에 저장해 놓고, 
	여러 사용자가 필요할 때 마다 하나씩 꺼내서 사용하고 다시 집어넣는(Pooling) 방식을 말합니다.
	데이터베이스 작업을 수행할 Client클래스들은 Connection Pool로부터 데이터베이스 커넥션을 하나 할당 받아서, 다 사용하고 난 후에는 다시 Connection Pool에게 넘겨 줍니다. Connection Pool에게 넘겨진 데이터베이스 커넥션은 다른 Client클래스가 사용을 요청했을 때 재사용이 됩니다.
	Connection Pooling을 사용하는 이유 : 
	‘속도 향상’과 ‘자원 공유’. 
	데이터베이스 연결을 의미하는 Connection클래스는 객체화 될 때, 다른 일반적인 클래스들과는 달리 수초의 시간이 걸립니다. 
	이 시간은 만약 데이터베이스가 원격지에 존재한다면, 네트웍의 상태에 따라 더 지연이 될 수도 있습니다.
	만약 우리가 만들 애플리케이션이 빈번하게 데이터베이스 커넥션을 생성한다면, 
	이러한 시간적인 오버헤드는 전체 애플리케이션을 느리게 만들 것입니다. 
	이 경우, 애플리케이션이 시작될 때 일정수의 커넥션을 미리 만들어 놓고, 
	Connection Pool을 통해 재사용 한다면 상당한 속도 향상을 기대할 수 있을 것입니다.*/
	
	public TEST3() {
		try {
			//기존방법 - 
			//Class.forName("com.mysql.jdbc.Driver");
			//커넥션 객체를 풀링기법으로 만들어줌
			Context context = new InitialContext();
			ds = (DataSource)context.lookup("java:comp/env/jdbc_maria");
			
		} catch (Exception e) {
			System.out.println("실패");
		}
	}
	
	public ArrayList<SawonDTO> getData(){

		ArrayList<SawonDTO> list = new ArrayList<>();
		try {
			String sql = "select * from sawon inner join buser on buser_no=buser_num";
			conn = ds.getConnection();//풀링
			//conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "123");
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				SawonDTO dto = new SawonDTO();
				dto.setBun(rs.getString(1));
				dto.setName(rs.getString(2));
				dto.setJik(rs.getString(4));
				dto.setBbun(rs.getString(8));
				dto.setBname(rs.getString(9));
				dto.setBtel(rs.getString(11));
				dto.setBloc(rs.getString(10));
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
