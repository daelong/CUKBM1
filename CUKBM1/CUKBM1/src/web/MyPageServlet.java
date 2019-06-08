package web;
import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import java.sql.*;
import java.util.ArrayList;
//
import member.BoardList;
//
public class MyPageServlet extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
		throws IOException, ServletException{
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("LOGIN_ID");
		//
		BoardList list = new BoardList();
		int total=0;
		//
		Connection conn = null;
		Statement stmt = null;	
		try {			
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cukbm?serverTimezone=UTC","root","root");
			if(conn==null)
				throw new Exception("�����ͺ��̽��� ������ �� �����ϴ�.<br>");
			stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery("select * from userinfo where id='"+id+"';");
			if(rs.next()) {
				request.setAttribute("id", rs.getString("id"));
				request.setAttribute("major", rs.getString("major"));
				request.setAttribute("age", rs.getString("age"));
				request.setAttribute("phone", rs.getString("phone"));
				request.setAttribute("photo", rs.getString("photo"));
			}
			//
			rs = stmt.executeQuery("select count(*) as total from likedb where like_id='"+id+"';");
			if(rs.next()) {
				total = rs.getInt("total");
				rs = stmt.executeQuery("select * from likedb where like_id='"+id+"';");
					for(int cnt=0;cnt<total;cnt++) {
						if(!rs.next())
							break;
						list.setSeqNo(cnt, rs.getInt("like_seqno"));
						list.setTitle(cnt, rs.getString("like_title"));
						list.setSubject(cnt, rs.getString("like_subject"));
				}
			}
			
			request.setAttribute("Board_List", list);
			//
		}
		catch(Exception e) {
			throw new ServletException(e);
		}
		finally {
			try {
				stmt.close();
			}
			catch(Exception ignored) {
			}
			try {
				conn.close();
			}
			catch(Exception ignored) {
			}
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("MyPage.jsp");
		dispatcher.forward(request, response);
	}	
	}