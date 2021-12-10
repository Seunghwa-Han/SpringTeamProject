package com.mycompany.spring;

import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class DataSourceTest {
	@Test
	public void testConnection() {
		ApplicationContext ctx = new FileSystemXmlApplicationContext(
				"file:src/main/webapp/WEB-INF/spring/root-context.xml");
		DataSource ds = (DataSource) ctx.getBean("dataSource");
		
		try {
			Connection conn = ds.getConnection();
			System.out.println("db연결 성공 !!");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("db연결 실패 !!");
		}
		
	}
}
