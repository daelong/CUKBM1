package web;

import java.io.*; 
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import member.BoardItem;
//
import member.IdVO;

public class AlarmServlet extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		int alarmNum = Integer.parseInt(request.getParameter("alarmNum"));
		String seqno = request.getParameter("seqno");
		String alarm ="";
		if(alarmNum == 1)
			alarm = "매칭이 확정되었습니다.";
		else if(alarmNum == 2)
			alarm = "강제퇴장 당하셨습니다.";
		BoardItem item = new BoardItem();
		//
		IdVO idvo = new IdVO();
		Connection conn = null;
		Statement stmt = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cukbm?serverTimezone=UTC", "root", "root");
			if(conn == null)
				throw new Exception("데이터베이스에 연결할 수 없습니다.");
			stmt = conn.createStatement();
			String command  = String.format("insert into alarmdb(alarm_seqno, alarm_content) values(%s, '%s');", seqno , alarm);
			int rowNum = stmt.executeUpdate(command);
			if(rowNum<1)
				throw new Exception("데이터를 DB에 입력할 수 없습니다.");
			request.setAttribute("ALARM",alarm);
			request.setAttribute("SEQNO",seqno);
			RequestDispatcher dispatcher = request.getRequestDispatcher("alarmread");
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
