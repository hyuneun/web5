package pack;

public class Exam {
	private Exambean exambean;
	
	public void setExambean(Exambean exambean) {
		this.exambean = exambean;
	}
	
	public int getTot(){
		int imsi = exambean.getKor() + exambean.getEng();
		return imsi;
	}
	public double getAvg(){
		return (exambean.getKor() + exambean.getEng()) / 2.0;
	}
}
