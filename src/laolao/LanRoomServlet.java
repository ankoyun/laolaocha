package laolao;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lao.entity.Troom;

/**
 * Servlet implementation class RoomServlet
 */
@WebServlet("/LanRoom")
public class LanRoomServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//��ȡ���з�����Ϣ
		List<Troom> rooms = UserService.getALLRoom();
		//������ת����jsp��
		request.setAttribute("room", rooms);
		RequestDispatcher rd = request.getRequestDispatcher("jsp/lanroom.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
