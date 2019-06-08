package web;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class SignUpServlet extends HttpServlet{
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws
	IOException, ServletException {
	request.setCharacterEncoding("euc-kr");	
	String ID=request.getParameter("id");
	String PASSWORD=request.getParameter("password");
	String MAJOR=request.getParameter("major");
	String  AGE=request.getParameter("age");
	String PHONE=request.getParameter("phone");	
	String PHOTO = request.getParameter("photo");
	PHOTO = "img/icon/"+PHOTO+".jpg";
	
	Connection conn =null;
	Statement stmt =null;
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cukbm?serverTimezone=UTC", "root", "root");
		if(conn==null)
			throw new Exception("데이터베이스에 연결할 수 없습니다.");
		stmt = conn.createStatement();
		String command = String.format("insert into userinfo values('%s', '%s', '%s', '%s', '%s', '%s');", ID, PASSWORD, MAJOR, AGE, PHONE, PHOTO);
		int rowNum = stmt.executeUpdate(command);
		if(rowNum<1)
			throw new Exception("데이터를 불러올 수 없습니다.");
	} catch(Exception e) {
		System.out.println(e.toString());
	} finally {
		try {
		stmt.close();
	} catch (Exception ignored) {}
		try {
		conn.close();
		} catch (Exception ignored) {}
	}
	RequestDispatcher dispatcher = request.getRequestDispatcher("SignUpRst.jsp");
	dispatcher.forward(request, response);
}
}
