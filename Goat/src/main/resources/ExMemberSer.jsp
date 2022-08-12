<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	request.setCharacterEncoding("utf-8");
	// 사용자가 입력한  id값을 id변수에 저장
	String id=request.getParameter("id");
	// 사용자가 입력한  password값을 pw변수에 저장
	String pw=request.getParameter("pw");
	// 사용자가 입력한 address값을 addr변수에 저장
	String name=request.getParameter("name");
	
	//DB연결
	Connection conn = null;
	PreparedStatement pstmt=null;
	
	try{
		Context init = new InitialContext();
		DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/mysql");
		conn = ds.getConnection();
		
		// 회원가입을 하기 위한 sql문장
		// prepareStatement : java -> DB에 쿼리를 보내기 위해 사용하는 객체
		pstmt=conn.prepareStatement("insert into member (id, password, name) values (?,?,?)");
		// 첫번째 물음표에는 사용자가 입력한 id값(request.getParameter("id"))을 설정
		pstmt.setString(1, id);
		// 두번째 물음표에는 사용자가 입력한 password값(request.getParameter("pw"))을 설정
		pstmt.setString(2,pw);
		// 세번째 물음표에는 사용자가 입력한 name값(request.getParameter("name"))을 설정
		pstmt.setString(3,name);
		// 위 sql문장을 실행(workbench : ctrl+enter)
		// insert가 되었으면 1값을 result변수에 저장되고,
		// insert가 되지 않았으면 0값을 result변수에 저장.
		int result=pstmt.executeUpdate();
		// executeQuery() : select(select된 결과를 ResultSet라는 공간에 저장해서 반환.)
		// executeUpdate() : insert, update, delete

		// insert가 되었으면(회원가입이 되었으면)
		if(result!=0){
			// 로그인 화면으로 이동
			out.println("<script>");
			out.println("location.href='ExLogin.jsp'");
			out.println("</script>");
		}else{// 그렇지 않으면
			// 회원가입 화면으로 이동
			out.println("<script>");
			out.println("location.href='ExMember.jsp'");
			out.println("</script>");
		}
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		conn.close();
		pstmt.close();
	}
	
%>
</head>
<body>

</body>
</html>