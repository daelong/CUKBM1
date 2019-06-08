package web;
import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import java.sql.*;
import java.util.ArrayList;
//
import member.BoardList;

public class AlarmReadServlet extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws IOException, ServletException{
//		HttpSession session = request.getSession();
		String alarm = (String)request.getAttribute("ALARM");
		String seqno = (String)request.getAttribute("SEQNO");
		
		Connection conn = null;
		Statement stmt = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cukbm?serverTimezone=UTC", "root", "root");
			if(conn == null)
				throw new Exception("데이터베이스에 연결할 수 없습니다.");
			stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select * from alarmdb where alarm_seqno="+seqno+";");
			if(rs.next()) {
				request.setAttribute("alarm", rs.getString("alarm_content"));
				request.setAttribute("seqno", rs.getString("alarm_seqno"));
			}
			RequestDispatcher dispatcher = request.getRequestDispatcher("AlarmResult.jsp");
			dispatcher.forward(request, response);
		}
		catch(Exception e) {
			throw new ServletException(e);
		}
		finally {
			try {
				stmt.close();
				
			}
			catch(Exception ignored	) {
			}
			try {
				conn.close();
			}
			catch(Exception ignored) {
			}
		}
	}
}
