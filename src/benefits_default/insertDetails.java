package benefits_default;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class insertDetails
 */
@WebServlet("/insertDetails")
public class insertDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public insertDetails() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		String empID;
		String appDate;
		String type;
		//String unitPrice;
		//String qty;
		int unitPrice;
		int qty;
		//int total;
		String status = "pending";
			
		empID = request.getParameter("empId");
		appDate = request.getParameter("appDate");
		type = request.getParameter("type");
		unitPrice = Integer.parseInt(request.getParameter("unitPrice"));
		qty = Integer.parseInt(request.getParameter("qty"));
		//total = Integer.parseInt(request.getParameter("total"));
		//unitPrice = request.getParameter("unitPrice");
		//qty = request.getParameter("qty");
	
		
		//RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/insert.jsp");
		
		
		
		String vari = "ok";
		request.setAttribute("val", vari);
		
		
		Allowance ob = new Allowance();
		
		ob.setAllowanceId(ob.allowanceId());
		Allowance.setEmpId(empID);
		ob.setAppDate(appDate);
		ob.setType(type);
		ob.setUnitPrice(unitPrice);
		ob.setQty(qty);
		ob.setTotal(ob.total());
		Allowance.setStatus(status);
		
		request.setAttribute("value", ob);
		
		
		Operations ins = new Operations();
		
		
		boolean isTrue;
		
		isTrue = ins.insert(ob);
		
		if(isTrue == true) {
			
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/insert.jsp");
			dispatcher.forward(request, response);
		
			
		} else {
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/insert.jsp");
			dispatcher.forward(request, response);
		} 

		
		//Operations vie = new Operations();
		  
		
		
		//dispatcher.forward(request, response);
		
		
	}

}
