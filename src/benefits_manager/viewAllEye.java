package benefits_manager;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import benefits_default.eyeTest;
import benefits_default.operationsForEye;

/**
 * Servlet implementation class viewAllEye
 */
@WebServlet("/viewAllEye")
public class viewAllEye extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public viewAllEye() {
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
		
		String status = "pending";
		
		List <eyeTest> viewAll = operationsForEye.viewAllEye(status);
		request.setAttribute("viewAll", viewAll);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/viewAllEye.jsp");
		dispatcher.forward(request, response);
		
	}

}
