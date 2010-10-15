package calcear;
import javax.ejb.Local;

@Local
public interface Calculator {
	public long multiply(int first, int second);
	public int divide(int first, int second);
	public long add(int first, int second);
	public int subtract(int first, int second);
}
