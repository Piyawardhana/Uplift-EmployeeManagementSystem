package benefits_default;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class deleteEyeTest
 */
@WebServlet("/deleteEyeTest")
public class deleteEyeTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteEyeTest() {
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
		
		empID = Allowance.getEmpId();
		
		eyeTest e = operationsForEye.viewEyeTestApp(empID);
		
		String eID = e.geteID();		
		
		operationsForEye del = new operationsForEye();
		
		
		boolean isTrue;
		
		isTrue = del.deleteEyeTest(eID);
		
		if(isTrue == true) {
			
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/applyForEye.jsp");
			dispatcher.forward(request, response);
		
			
		} else {
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/viewApplication.jsp");
			dispatcher.forward(request, response);
		}
	}

}
