package web;

import java.io.IOException;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import member.IdVO;

public class IdExtractor extends HttpServlet{
	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		int postno = Integer.parseInt((String)request.getAttribute("postno"));
		int max = (int) request.getAttribute("att_max");
		IdVO idvo = readDB(postno, 0, max);
		request.setAttribute("IDVO_LIST", idvo);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("BoardItemView.jsp");
		dispatcher.forward(request, response);
	}

	private IdVO readDB(int postno, int cnt, int max) throws ServletException {
		IdVO idvo = new IdVO();
		Connection conn = null;
		Statement stmt = null;
		try {
			Class.forName("com.jdbc.mysql.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cukbm?serverTimezone=UTC", "root","root");
			if(conn==null)
				throw new Exception("데이터베이스에 연결할 수 없습니다.");
			stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * FROM postdb WHERE postno = "+postno+";");
			for(cnt=0; cnt<max; cnt++) {
				idvo.setIdlist(cnt, rs.getString("user"));
			}
		}
		catch (Exception e) {
			throw new ServletException(e);
		}
		finally {
			try {
				stmt.close();
			}
			catch (Exception ignored) {
			}
			try {
				conn.close();
			}
			catch(Exception ignored) {
			}
		}
		return idvo;
			
		}
}
