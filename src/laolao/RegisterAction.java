package laolao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.dbutils.QueryRunner;

import lao.entity.TUser;

/**
 * Servlet implementation class LoginAction
 */
@WebServlet("/RegisterAction")
public class RegisterAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
	    //获取用户名
		String username = request.getParameter("username");
		//获取用户提交的密码
		String password = request.getParameter("password");
		//获取用户的联系方式
		String email = request.getParameter("email");	
		//获取用户的联系方式
		String phone = request.getParameter("phonenumber");
		//获取用户性别
		String sex = request.getParameter("sex");
		//获取用户的特长
	    
	    HttpSession session = request.getSession();
	    try {
			TUser u = UserService.addUser(username, password,email,phone,sex);
			RequestDispatcher rd = request.getRequestDispatcher("jsp/login.jsp");
			rd.forward(request, response);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
