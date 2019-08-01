package pro1;
import pro1.RegisterUser;
import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import javax.servlet.annotation.WebServlet;


/**
 * Servlet implementation class CreateServlet
 */
@WebServlet(urlPatterns = ("/CreateServlet"))
public class CreateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
			
			public void doGet(HttpServletRequest request, HttpServletResponse response)
					throws ServletException, IOException {

				response.setContentType("text/html");
				PrintWriter out=response.getWriter();
				
				String username=request.getParameter("username");
				String password=request.getParameter("password");
				
				
				String gender=request.getParameter("gender");
				
				
				String adderess=request.getParameter("adderess");
				
				String ph=request.getParameter("phone");
				double phone=Double.parseDouble(ph);
				
				
			    int status=RegisterUser.register(username, password, gender, adderess,phone);
			   
			    
				if(status>0){
					out.print("WELCOME! YOUR ACCOUNT OPENED");
					RequestDispatcher rd=request.getRequestDispatcher("login_emp.jsp");
					rd.include(request, response);
				}
				else{
					out.print("Sorry,Registration failed. please try later");
					RequestDispatcher rd=request.getRequestDispatcher("index.html");
					rd.include(request, response);
				}
				
			out.close();	
			}
			protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				// TODO Auto-generated method stub
			}
	
}


