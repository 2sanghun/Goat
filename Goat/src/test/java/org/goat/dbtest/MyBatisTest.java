package org.goat.dbtest;

import java.sql.Connection;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MyBatisTest {
	@Autowired
	// DataSource dataSource = new DataSource(); 자바문법
	private DataSource dataSource;
	
	@Autowired
	private SqlSessionFactory sqlSessionFactory;
	
	@Test
	public void testMyBatis() {
		try(SqlSession session = sqlSessionFactory.openSession();
			Connection con = session.getConnection();	
			){
			System.out.println("MyBatis 설정 및 연결 성공");
		}catch(Exception e) {
			e.getMessage();
		}
	}
}
