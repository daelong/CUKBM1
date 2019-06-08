package web;

import java.io.*; 
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import member.BoardItem;
import member.UserInfo;

public class ForcedExitServlet extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response)
				throws IOException, ServletException {		
		
		String user = request.getParameter("ID");
		int postno = Integer.parseInt(request.getParameter("seqno"));
		HttpSession session = request.getSession();
		String userCheck = (String)session.getAttribute("LOGIN_ID");	//writer
		String writer = "";
		int result;

		Connection conn = null;
		Statement stmt0 = null;
		Statement stmt = null;
		Statement stmt1 = null; 
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cukbm?serverTimezone=UTC", "root", "root");
			if(conn == null)
				throw new Exception("�����ͺ��̽��� ������ �� �����ϴ�.");
			stmt0 = conn.createStatement();
			ResultSet rs = stmt0.executeQuery("select * from boarddb where seqno = " + postno + ";");
			if(rs.next()) {
				writer = rs.getString("writer");
			}
			}catch(Exception e) {
				throw new ServletException(e);
			}
		if(writer.equals(userCheck)) {
			try {
				Class.forName("com.mysql.jdbc.Driver");
				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cukbm?serverTimezone=UTC", "root", "root");
				if(conn == null)
					throw new Exception("�����ͺ��̽��� ������ �� �����ϴ�.");
				stmt = conn.createStatement();
				stmt1 = conn.createStatement();
				int rowNum = stmt.executeUpdate("delete from postdb where user='"+ user +"' AND postno=" +postno + ";");//"' AND seqno=" + seqno +
				 if(rowNum<1)
			            throw new Exception("�����͸� db�� �Է��� �� �����ϴ�.");
				int rowNum1 = stmt1.executeUpdate("update boarddb set attend_min = attend_min-1 where seqno = "+postno+";");
				if(rowNum1<1) 
					throw new Exception("�����͸� db�� ������Ʈ �� �� �����ϴ�.");
				rowNum1 = stmt1.executeUpdate("delete from postdb where postno = "+postno+" and user = '"+user+"';");	
		
				result = 1;
				RequestDispatcher dispatcher = request.getRequestDispatcher("ForcedExitResult.jsp?result="+result);
		        dispatcher.forward(request, response);
			}
			catch(Exception e) {
				throw new ServletException(e);
			}
			finally {
				try {
					stmt0.close();
					stmt.close();
					stmt1.close();
				}
				catch(Exception ignored){
				}
				try {
					conn.close();
				}
				catch(Exception ignored){
				}
			}
		}
		else {
			System.out.println(writer);
			result = 0;
			RequestDispatcher dispatcher = request.getRequestDispatcher("ForcedExitResult.jsp?result="+result);
			dispatcher.forward(request, response);
		}
	}
}