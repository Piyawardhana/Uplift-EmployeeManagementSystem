package benefits_default;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class delete
 */
@WebServlet("/delete")
public class delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public delete() {
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
		
		allowaID = request.getParameter("allowaId");
		
		Operations del = new Operations();
		
		
		boolean isTrue;
		
		isTrue = del.delete(allowaID);
		
		if(isTrue == true) {
			
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/viewAll");
			dispatcher.forward(request, response);
		
			
		} else {
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/delete.jsp");
			dispatcher.forward(request, response);
		}
		
	}

}
