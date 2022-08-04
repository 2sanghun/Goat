<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ page import = "java.sql.*" %>
      <%@ page import = "javax.sql.*" %>
      <%@ page import = "javax.naming.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
ul{
    height: 20px;
    padding: 1rem;
    background-color:teal;
    list-style-type:none;
    margin:;
    padding:;
    overflow:hidden;
    font-weight: bold;
    display: flex;
    align-items: center;
    padding-top:10px;
    padding-bottom:10px;
    margin-top: 20px;
    word-spacing: 10px;
  
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
}
li{float:left;}
li a {
		
        display :block;
        background-color:teal;
        color:#000000;
        padding:8px;
        text-decoration:none;
        text-align:center;
        font-weight:bold;
}
li a:hover{
        background-color:teal;
        color:white;
}
</style>
</head>
<body>
<ul>
    <li><a href = "mypage">내정보</a></li>
    <li><a>내글</a></li>
    <li><a>menu2</a></li>
</ul>
 <div id = "container">
     <span>*</span> 내 게시글 관리
     <table>
     <tr>
     <td>번호</td>
     <td>제목</td>
     <td>작성일</td>
     </tr>
     <%
     Connection conn = null;
     PreparedStatement pstmt = null;
     ResultSet rs = null;
     try{
     	Context init = new InitialContext();
     	DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/mysql");
     	conn = ds.getConnection();                       
     pstmt = conn.prepareStatement("select* from board");
     rs = pstmt.executeQuery();

       while(rs.next()){             
       %>
            <tr>
              <td><%=rs.getString("bno") %></td>
              <td><%=rs.getString("title") %></td>
              <td>><a href ="detail.jsp?bno=<%=rs.getString("bno")%>&content=<%=rs.getString("content") %>"><%=rs.getString("content") %></a></td>
                  
          </tr> 
     <% 
       }
      }catch(Exception e){
      	  System.out.println("DB연결 실패");
      	  e.printStackTrace();
       }finally{
        conn.close();
        rs.close();
        pstmt.close();
      } 
      %> 
     
     
     
 
     
     </table>
</div>
</body>
</html>