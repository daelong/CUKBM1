package web;

import java.io.IOException;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AttendServlet extends HttpServlet{
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws
	IOException, ServletException {
		request.setCharacterEncoding("euc-kr");
		
		HttpSession session = request.getSession();
		String user = (String) session.getAttribute("LOGIN_ID");
		int postno = Integer.parseInt(request.getParameter("seqno"));	//�̺κ� BoardItemView���� �����;���!!!!!!
		RequestDispatcher dispatcher = null;
		Connection conn = null;
		Statement stmt0= null;
		Statement stmt1 = null; 
		int result;
		ResultSet rs1 = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cukbm?serverTimezone=UTC", "root", "root");
			stmt0 = conn.createStatement();
			stmt1 = conn.createStatement();			
			rs1 = stmt1.executeQuery("select * from boarddb where seqno="+postno+";");
			if(rs1.next()) {
				
				/*
				int sequence = rs1.getInt("seqno");
				*/
				
				int attend_min = rs1.getInt("attend_min");
				int attend_max = rs1.getInt("attend_max");
				int close = rs1.getInt("close");
				if(close==1 || attend_min>=attend_max) {
					int rowNum = stmt0.executeUpdate("update boarddb set close = 1 where seqno = "+postno+";");
					if(rowNum<1)
						throw new Exception("�����͸� DB�� �Է��� �� �����ϴ�.");
					result=0;
					dispatcher = request.getRequestDispatcher("attendResult.jsp?result="+result);
					dispatcher.forward(request, response);
				}
				else {
					String command0 = String.format("INSERT INTO postdb(postno, user) VALUES (%s,'%s');", postno, user);
					int rowNum = stmt0.executeUpdate(command0);
					if(rowNum<1)
						throw new Exception("�����͸� DB�� �Է��� �� �����ϴ�.");
					String command1 = String.format("UPDATE boarddb SET attend_min = attend_min+1 WHERE seqno = %d", postno);	//���� ���ȣ�� �����ο�+1
					int rowNum1 = stmt1.executeUpdate(command1);
					if(rowNum1<1)
						throw new Exception("DB�� �ԷºҰ�");
					result=1;
					dispatcher = request.getRequestDispatcher("attendResult.jsp?result="+result);
					dispatcher.forward(request, response);
				}
			}
			
		} catch(Exception e) {
			System.out.println(e);
		} finally {
			try {
				stmt0.close();
				stmt1.close();
			} catch (Exception e) {}
			try {
				conn.close();
			} catch (Exception e) {}
		}
	}

}