package javabeans;

public class Calculator implements java.io.Serializable{
	public Calculator() {
		
	}
	public int process(int n) {
		return n*n*n;
	}
}
