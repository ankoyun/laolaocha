package laolao;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ResponseImage
 */
@WebServlet("/ResponseImage")
public class ResponseImage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ResponseImage() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//输出内容为jpg图片
		response.setContentType("image/jpeg");
		//
	     BufferedImage img = new BufferedImage(70,30,BufferedImage.TYPE_INT_BGR);
	      
	      Graphics g =img.getGraphics();
	      //设置背景
	      g.setColor(Color.cyan);
	      g.fillRect(0, 0, 70, 30);
	      g.setColor(Color.black);
	      g.setFont(new Font(null,Font.BOLD,24));
	      Random r = new Random();
	      int i=r.nextInt(8999)+1000;
	      
	      String vcode =String.valueOf(i);
	      //把vcode放到session中去
	      HttpSession session = request.getSession();
	      session.setAttribute("vcode", vcode);
	      
	      g.drawString(vcode, 10, 25);
	      
	      OutputStream os = response.getOutputStream();
	      
	      ImageIO.write(img,"jpg" ,os);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
