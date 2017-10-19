package mybatis.session;

import java.io.IOException;
import java.io.InputStream;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.sun.xml.internal.bind.v2.runtime.unmarshaller.XsiNilLoader.Array;

import model.Boss;
import model.FoodHome;

import model.Member;
import model.Menu;

// 명환오빠

public class CommentRepository {
	private String namespace1 = "mapper.BaeminMapper";
	private String namespace2 = "mapper.BaeminMenuMapper";
	
	SqlSessionFactory getSqlSessionFactory() {
		InputStream in = null;
		
		try {
			in = Resources.getResourceAsStream("mybatis-config.xml");
		} catch(IOException e) {
			System.out.println("mybatis 설정 실패 : " + e.getMessage());
		}
		
		SqlSessionFactory sessFac = new SqlSessionFactoryBuilder().build(in);
		return sessFac;
		
	}
	

	public void insertBossJoin(Boss b) {
		SqlSession sess = getSqlSessionFactory().openSession();
		int result = sess.insert(namespace1 + ".insertBossJoin", b);
		
		if(result > 0) {
			sess.commit();
		}else {
			sess.rollback();
		}
		
	}

	public void insertFoodHome(FoodHome h) {
		
		SqlSession sess = getSqlSessionFactory().openSession();
		int result = sess.insert(namespace1 + ".insertFoodHome", h);
		
		if(result > 0) {
			sess.commit();
		}else {
			sess.rollback();
		}

	}
	
//	public int BossLogin(String id, String password) {
//		
////		SqlSession sess = getSqlSessionFactory().openSession();
////		int result = sess.selectOne(namespace + ".BossLogin");
//	
//		
////		ResultSet  = 
////		
//		int result = 1;
//		
//		
//		return result;
//	
//	}
//		int result = 1;
//		
//		
//		return result;
//	
//	}
	
	
	
	
	public void insertAddMenu(Menu m) {
		
		SqlSession sess = getSqlSessionFactory().openSession();
		
		int result = sess.insert(namespace2 + ".insertAddMenu", m);
		
		
		if(result > 0) {
			sess.commit();
		}else {
			sess.rollback();
		}
		
		
	}


	
	public ArrayList selectAddMenu(Menu m) {
		SqlSession sess = getSqlSessionFactory().openSession();		
		
		ResultSet rs = (ResultSet) sess.selectList(namespace2 + ".selectAddMenu",m);
		
		ArrayList result = new ArrayList();
		
		try {
			
			while (rs.next()) {
				
				result.add(rs.getString("menu_name"));
				result.add(rs.getString("menu_price"));
				result.add(rs.getString("menu_soldout"));
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		 
		return result;
		
		
	}
	
	
	
}
