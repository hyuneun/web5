package pack;
//formbean : 클라이언트에서 전달되는값이 복수일경우 이를 클래스 type로 처리할수0잇다
public class Testbean {
		private String name;
		private int kor,eng;
		
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public int getKor() {
			return kor;
		}
		public void setKor(int kor) {
			this.kor = kor;
		}
		public int getEng() {
			return eng;
		}
		public void setEng(int eng) {
			this.eng = eng;
		}
		
}
