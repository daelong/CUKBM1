package web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;

public class msgSendServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws
	IOException, ServletException {
		
		request.setCharacterEncoding("euc-kr");
		HttpSession session = request.getSession();
		int msgno=0;
		String sender = (String)session.getAttribute("LOGIN_ID");
		String receiver = request.getParameter("receiver");
		String content = request.getParameter("content");
		
		Connection conn = null;
		Statement stmt = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cukbm?serverTimezone=UTC", "root", "root");
			if(conn==null) {
				throw new Exception("데이터베이스에 연결할 수 없습니다.");
			}
			stmt = conn.createStatement();
			String command = String.format("INSERT INTO msgdb VALUES (%s,'%s','%s','%s')", msgno,sender,receiver,content);
			int rowNum = stmt.executeUpdate(command);
			if(rowNum<1)
				throw new Exception("데이터를 입력할 수 없습니다.");
			RequestDispatcher dispatcher =  request.getRequestDispatcher("sender_SUCCESS.jsp");
			dispatcher.forward(request, response);
			
		} catch(Exception e) {
			System.out.println(e.toString());
		} finally {
			try {
				stmt.close();
			} catch(Exception igno) {}
			try {
				conn.close();
			} catch(Exception igno ) {}
		}
		
		
	}

}
