package benefits_manager;

import java.io.IOException;
import java.time.LocalDate;
import java.time.ZoneId;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import benefits_default.Operations;

/**
 * Servlet implementation class approveAllowance
 */
@WebServlet("/approveAllowance")
public class approveAllowance extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public approveAllowance() {
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
		
		ZoneId z = ZoneId.of( "Asia/Kolkata" );
		LocalDate today = LocalDate.now( z );
		
		String date = today.toString();
		
		String status = "approved";
		
		String allowaID = request.getParameter("allowaId");
		
		Operations approveAllowance = new Operations();
		
		boolean isTrue;
		
		isTrue = approveAllowance.approveAllowance(allowaID, status, date);
		
		if(isTrue == true) {
			
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/viewAllAllowa");
			dispatcher.forward(request, response);
		
			
		} else {
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/approveAllowa.jsp");
			dispatcher.forward(request, response);
		}
		
	}

}
