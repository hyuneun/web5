package pack;

public class Testbean2 {
	private Testbean exambean;
	
	public void setExambean(Testbean exambean) {
		this.exambean = exambean;
	}
	
	public int getTot(){
		int imsi = exambean.getKor() * exambean.getEng() / 100;
		return imsi;
	}
	public double getAvg(){
		return exambean.getKor() - exambean.getKor() * exambean.getEng() / 100;
	}
}
