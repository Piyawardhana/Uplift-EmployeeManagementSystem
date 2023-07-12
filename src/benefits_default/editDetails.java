package benefits_default;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class editDetails
 */
@WebServlet("/editDetails")
public class editDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public editDetails() {
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
		
		String allowaID;
		String empID;
		String type;
		//String unitPrice;
		//String qty;
		int unitPrice;
		int qty;
		//int total;
		
		allowaID = request.getParameter("allowaId");	
		empID = request.getParameter("empId");
		type = request.getParameter("type");
		unitPrice = Integer.parseInt(request.getParameter("unitPrice"));
		qty = Integer.parseInt(request.getParameter("qty"));
		//total = Integer.parseInt(request.getParameter("total"));
		//unitPrice = request.getParameter("unitPrice");
		//qty = request.getParameter("qty");
	
		
		//RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/insert.jsp");
		//edit
		
		
		String vari = "ok";
		request.setAttribute("val", vari);
		
		
		Allowance ed = new Allowance();
		
		ed.setAllowanceId(allowaID);
		Allowance.setEmpId(empID);
		ed.setType(type);
		ed.setUnitPrice(unitPrice);
		ed.setQty(qty);
		ed.setTotal(ed.total());
		
		request.setAttribute("value", ed);
		
		
		Operations edt = new Operations();
		
		
		boolean isTrue;
		
		isTrue = edt.edit(ed);
		
		if(isTrue == true) {
			
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/viewAll");
			dispatcher.forward(request, response);
		
			
		} else {
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/edit.jsp");
			dispatcher.forward(request, response);
		}

		
		//Operations vie = new Operations();
		  
		
		
		//dispatcher.forward(request, response);
		
		
		
	}

}
