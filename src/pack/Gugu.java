package pack;

public class Gugu {
	private static Gugu gugu = new Gugu();
		
	public static Gugu getinstance(){
		return gugu;
	
	}
	public Gugu() {
	
	}
	
	public int[] compute(int dan){
		int [] gu = new int[9];
		for (int i = 1; i < 10; i++) {
			gu[i-1] = dan * i;
		}
		return gu;
	}
}
