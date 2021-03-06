package mybatis.session;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import model.Boss;
import model.FoodHome;
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
	

	public int insertBossJoin(Boss b, FoodHome h) {
		SqlSession sess = getSqlSessionFactory().openSession();
		sess.insert(namespace1 + ".insertBossJoin", b);
		int result = sess.insert(namespace1 + ".insertFoodHome", h);
		
		if(result > 0) {
			sess.commit();
		}else {
			sess.rollback();
		}
		return result;
		
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
	
	
	
	
	public List<Menu> insertAddMenu(Menu m) {
		
		SqlSession sess = getSqlSessionFactory().openSession();
		
		int result = sess.insert(namespace2 + ".insertAddMenu", m);
		
		
		if(result > 0) {
			sess.commit();
		}else {
			sess.rollback();
		}
		
		
		List<Menu> rs = new ArrayList<Menu>();
		boolean isEmpty = true;
		
		HashMap map = new HashMap();
		map.put("menuFood", m.getMenuFood());
		
		rs = sess.selectList(namespace2 + ".selectAddMenu", map);
		
		isEmpty = false;
		
		if(isEmpty) return Collections.emptyList();
		
		 
		
		return rs;
		

	}


	
	public List<Menu> selectAddMenu(String m) {
		
		SqlSession sess = getSqlSessionFactory().openSession();	
		
		List<Menu> rs = new ArrayList<Menu>();
		boolean isEmpty = true;
		
		HashMap map = new HashMap();
		map.put("menuFood", m);
		
		rs = sess.selectList(namespace2 + ".selectAddMenu", map);
		
		isEmpty = false;
		
		if(isEmpty) return Collections.emptyList();
		
		 
		
		return rs;
 
	}
	
	
	public List<FoodHome> selectEdit(String fh) {
		
		SqlSession sess = getSqlSessionFactory().openSession();	
		
		List<FoodHome> rs = new ArrayList<FoodHome>();
		boolean isEmpty = true;
		
		HashMap map = new HashMap();
		map.put("fBoss", fh);
		
		rs = sess.selectOne(namespace2 + ".selectEdit", map);
		
		isEmpty = false;
		
		if(isEmpty) return Collections.emptyList();
		
		 
		
		return rs;
 
	}
	

	
	
	public void updateSoldOut(Menu m) {
		SqlSession sess = getSqlSessionFactory().openSession();
		int result = sess.update(namespace2 + ".updateSoldOut", m);
		 
		
		
		if(result > 0) {
			sess.commit();
		}else {
			sess.rollback();
		}
		
	}
	
	
	
	public void updateEdit(FoodHome fh) {
		
		SqlSession sess = getSqlSessionFactory().openSession();
		int result = sess.update(namespace2 + ".updateEdit", fh);
		
		
		if(result > 0) {
			sess.commit();
		}else {
			sess.rollback();
		}
		
	}
	
	
	
	public void updateIng(FoodHome fh) {
		SqlSession sess = getSqlSessionFactory().openSession();
		int result = sess.update(namespace2 + ".updateIng", fh);
		
		 
		if(result > 0) {
			sess.commit();
		}else {
			sess.rollback();
		}
		
	}
	
	
	
	
}
