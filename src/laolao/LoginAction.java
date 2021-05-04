package laolao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;

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
@WebServlet("/loginAction")
public class LoginAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	    //获取用户提交密码
		String username = request.getParameter("username");
		//获取用户提交的密码
		String password = request.getParameter("password");
		//获取用户提交的校验码
		String code=request.getParameter("code");
		//获取校验码
		HttpSession session = request.getSession();
		String vcode =(String)session.getAttribute("vcode");
		if(vcode!=null&&vcode.equals(code)) {
			TUser u = UserService.login(username, password);
		if(u!=null) {
			session.setAttribute("username", username);
			session.setAttribute("user", u);
			session.removeAttribute("vcode");
			//正确跳转到成功页面
			RequestDispatcher rd = request.getRequestDispatcher("Index");
			rd.forward(request, response);
		}
		else {
			request.setAttribute("input_name", username);
			request.setAttribute("info", "用户名密码错误，请重新输入！");
			request.getRequestDispatcher("jsp/login.jsp").forward(request, response);
		
		}
		}
		else {
			request.setAttribute("input_name", username);
			request.setAttribute("info", "校验码输入错误，请重新输入！");
			request.getRequestDispatcher("jsp/login.jsp").forward(request, response);
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
