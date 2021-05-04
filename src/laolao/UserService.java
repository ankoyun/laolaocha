package laolao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import lao.entity.TUser;
import lao.entity.Troom;

public class UserService {
	//��ȡ���ݿ�����
	public static Connection getConnect() {
		//ע������
		try {
		Class.forName("com.mysql.jdbc.Driver");
		//��������
		String url="JDBC:mysql://localhost:3306/laolao?useUnicode=true&characterEncoding=UTF-8";
		
		Connection conn = DriverManager.getConnection(url,"ankyou","19991214");
		
		return conn;
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}catch(SQLException e) {
			System.out.print("δ���ӵ����ݿ�");
		}
		return null;
	}
	//�û�ע��
	public static TUser addUser(String username,String password,String email,String phone,String sex) throws SQLException {
		Connection conn = UserService.getConnect();
		PreparedStatement ps =null;
		//���ɺ�����
		QueryRunner runner = new QueryRunner();
		String sql2 ="insert into users(username,upassword,useremail,userphone,sex) VALUES(?,?,?,?,?)";
	    ps = conn.prepareStatement(sql2);
	    
	    ps.setString(1, username);
	    ps.setString(2, password);
	    ps.setString(3, email);
	    ps.setString(4, phone);
	    ps.setString(5, sex);
	    
	    ps.executeUpdate();
	    
	    try {
	    	if(conn !=null) {
	    		conn.close();
	    	}
	    	if(ps!=null) {
	    		ps.close();
	    	}
	    }catch (SQLException e) {
	    	e.printStackTrace();
	    }
		return null;
	}
   //�û���¼
	public static TUser login(String username,String password) {
		
		   Connection conn = UserService.getConnect();
		
			//���ɺ�����
			QueryRunner runner = new QueryRunner();
			String sql1 = "select*from users where username =?and upassword=?";
			
			List<TUser> users ;
			try {
			users = runner.query(conn, sql1,new BeanListHandler<TUser>(TUser.class),username,password);
			DbUtils.close(conn);
			if(users.size()>0)
				return users.get(0);
			else
				return null;
			}catch(SQLException e) {
				e.printStackTrace();
			}
			return null;
			
	}
   //��ȡ���еķ�������
	public static List<Troom> getALLRoom(){
		//��ȡ���ݿ�����
		Connection conn = UserService.getConnect();
		
		//���ɺ�����
		QueryRunner runner = new QueryRunner();
		
		String sql3 = "select*from room ";
		
		List<Troom> rooms= new ArrayList<>();
		
		try {
			
			rooms = runner.query(conn, sql3,new BeanListHandler<Troom>(Troom.class));
			
			DbUtils.close(conn);

			}catch(SQLException e) {
				e.printStackTrace();
			}
		return rooms;
	}
	//Ԥ������ʱ�� 
	public static void BookRoom(String roomname,String states) throws SQLException{
		//��ȡ���ݿ�����
		Connection conn = UserService.getConnect();
		
		//���ɺ�����
		QueryRunner runner = new QueryRunner();
		
		//����SQL���
		if(states=="1") {
		String sql3 = "update room set time1='��ԤԼ' where id=?";
		//ִ��sql���
		runner.update(conn, sql3,roomname);
		}
		else if(states=="2") {
			String sql3 = "update room set time2='��ԤԼ' where id=?";
			//ִ��sql���
			runner.update(conn, sql3,roomname);
		}
		else if(states=="3") {
			String sql3 = "update room set time3='��ԤԼ' where id=?";
			//ִ��sql���
			runner.update(conn, sql3,roomname);
		}
		else if(states=="4") {
			String sql3 = "update room set time4='��ԤԼ' where id=?";
			//ִ��sql���
			runner.update(conn, sql3,roomname);
			}
		//�ر������Դ
	    DbUtils.close(conn);

	}
		
			
	   
}
