package calcear;

import javax.ejb.Stateless;

/**
 * Session Bean implementation class CalculatorBean
 */
@Stateless
public class CalculatorBean implements Calculator {

    /**
     * Default constructor. 
     */
    public CalculatorBean() {
    }

	public long multiply(int first, int second) {
		return first * second;
	}

	public int divide(int first, int second) {
		return first / second;
	}

	public long add(int first, int second) {
		return first + second;
	}

	public int subtract(int first, int second) {
		return first - second;
	}

}
