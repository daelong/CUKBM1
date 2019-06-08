package web;

import java.io.*; 
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import member.BoardItem;
//
import member.IdVO;
//

public class BoardItemServlet extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {		
		BoardItem item = new BoardItem();
		//
		IdVO idvo = new IdVO();
		//
		int seqno = Integer.parseInt(request.getParameter("SEQ_NO"));
		//
		int max = Integer.parseInt(request.getParameter("MAXNUM"));
		//
		int enter; //��������
		String subject = request.getParameter("SUBJECT");
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("LOGIN_ID"); 
		Connection conn = null;
		Statement stmt = null;
		Statement stmt1 = null;
		Statement stmt2 = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cukbm?serverTimezone=UTC", "root", "root");
			if(conn == null)
				throw new Exception("�����ͺ��̽��� ������ �� �����ϴ�.");
			stmt = conn.createStatement();
			stmt1 = conn.createStatement();
			stmt2 = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select * from boarddb where seqno = " + seqno + ";");
			if(rs.next()) {
				item.setTitle(rs.getString("title"));
				item.setContent(rs.getString("content"));
				item.setWriter(rs.getString("writer"));
				item.setDate(rs.getString("date"));
				item.setHeart(rs.getInt("heart"));				
			}
			//
			rs = stmt2.executeQuery("select * from postdb where postno = "+seqno+";");
			for(int cnt=0;cnt<max;cnt++) {
				if(!rs.next())
					break;
				idvo.setIdlist(cnt, rs.getString("user"));
			}
			//
			//�������� Ȯ��
			rs = stmt1.executeQuery("select * from postdb where postno = "+seqno+" and user = '"+id+"';");
			if(rs.next())
				enter = 1;
			else
				enter = 0;
			//
			request.setAttribute("IDVO", idvo);
			request.setAttribute("maxnum", max);
			//
			request.setAttribute("boardItem", item);
			request.setAttribute("SEQ_NO", seqno);
		}
		catch(Exception e) {
			throw new ServletException(e);
		}
		finally {
			try {
				stmt.close();
				stmt1.close();
				stmt2.close();
			}
			catch(Exception ignored	) {
			}
			try {
				conn.close();
			}
			catch(Exception ignored) {
			}
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("BoardItemView.jsp?SEQ_NO="+seqno+"&SUBJECT="+subject+"&ENTER="+enter);
		dispatcher.forward(request, response);
	}
}