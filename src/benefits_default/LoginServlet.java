package benefits_default;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		
			
		boolean True = Operations.validate(username, password);
		boolean True1 = Operations.validateManager(username, password);
			
			if(True == true) {
				benefits_default.Employee emp = Operations.getEmployee(username);
				Allowance.setEmpId(emp.getEmpID());
				
				
				RequestDispatcher dis1 = request.getRequestDispatcher("permanentHome.jsp");		
				dis1.forward(request, response);
			}
			
			else if(True1 == true) {
			
					//benefits_default.Employee emp = Operations.getEmployee(username);
					//Allowance.setEmpId(emp.getEmpID());
					
				
					RequestDispatcher dis3 = request.getRequestDispatcher("ManagerHome.jsp");		
					dis3.forward(request, response);
				}
				
			else {
					out.println("<script type='text/javascript'>");
					out.println("alert('Your username or password is incorrect');");
					out.println("location='Login.jsp'");
					out.println("</script>");
				}
				
				
		
	}

}
