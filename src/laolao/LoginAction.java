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
	    //��ȡ�û��ύ����
		String username = request.getParameter("username");
		//��ȡ�û��ύ������
		String password = request.getParameter("password");
		//��ȡ�û��ύ��У����
		String code=request.getParameter("code");
		//��ȡУ����
		HttpSession session = request.getSession();
		String vcode =(String)session.getAttribute("vcode");
		if(vcode!=null&&vcode.equals(code)) {
			TUser u = UserService.login(username, password);
		if(u!=null) {
			session.setAttribute("username", username);
			session.setAttribute("user", u);
			session.removeAttribute("vcode");
			//��ȷ��ת���ɹ�ҳ��
			RequestDispatcher rd = request.getRequestDispatcher("Index");
			rd.forward(request, response);
		}
		else {
			request.setAttribute("input_name", username);
			request.setAttribute("info", "�û�������������������룡");
			request.getRequestDispatcher("jsp/login.jsp").forward(request, response);
		
		}
		}
		else {
			request.setAttribute("input_name", username);
			request.setAttribute("info", "У��������������������룡");
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
