package calc;

import java.io.Serializable;

public class DataModel implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int first;
	private int second;
	private long result;
	
	public int getFirst() {
		return first;
	}
	public void setFirst(int first) {
		this.first = first;
	}
	public int getSecond() {
		return second;
	}
	public void setSecond(int second) {
		this.second = second;
	}
	public long getResult() {
		return result;
	}
	public void setResult(long result) {
		this.result = result;
	}
}
