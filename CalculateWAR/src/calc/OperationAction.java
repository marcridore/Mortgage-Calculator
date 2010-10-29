package calc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import calcear.Calculator;

public class OperationAction {
	private Calculator service;
	
	public void setService(Calculator service) {
		this.service = service;
	}
	
	public Calculator getService() {
		return service;
	}

	public String perform(HttpServletRequest request, HttpServletResponse response) {
		DataModel inputData = (DataModel) request.getSession().getAttribute("data");
		if (inputData == null){
			inputData = new DataModel();
			request.getSession().setAttribute("data", inputData);
		}
		inputData.setFirst(Integer.parseInt(request.getParameter("first")));
		inputData.setSecond(Integer.parseInt(request.getParameter("second")));
		int op = Integer.parseInt(request.getParameter("type"));
		try {
			long result = evaluate(op, inputData.getFirst(), inputData.getSecond());
			inputData.setResult(result);
			return "result.jsp";
		} catch (Exception e){
			return "error.jsp";
		}
	}
	
	private long evaluate(int op, int first, int second) {
		switch (op) {
		case 0:
			return service.multiply(first, second);
		case 1:
			return service.divide(first, second);
		case 2:
			return service.add(first, second);
		case 3:
			return service.subtract(first, second);
		default:
			break;
		}
		return 0;
	}
}
