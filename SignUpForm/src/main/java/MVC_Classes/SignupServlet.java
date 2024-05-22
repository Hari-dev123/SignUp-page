package MVC_Classes;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/signup")
public class SignupServlet extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	// TODO Auto-generated method stub
    	 String username =req.getParameter("username");
    	 String password = req.getParameter("password");
    	 User user = new User(username, password);
    	 UserDao Dao = new UserDao();
    	 
    	 if(Dao.addUser(user)) {
    		 resp.sendRedirect("Welcome.jsp");
    	 }else {
    	      resp.getWriter().print("error occured");
    	 }
    }
}
