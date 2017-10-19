package mybatis.session;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import model.Boss;
import model.FoodHome;
import model.Member;
// 명환오빠
public class CommentRepository {
	private String namespace = "mapper.BaeminMapper";
	
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
		int result = sess.insert(namespace + ".insertBossJoin", b);
		
		if(result > 0) {
			sess.commit();
		}else {
			sess.rollback();
		}
		
	}

	public void insertFoodHome(FoodHome h) {
		
		SqlSession sess = getSqlSessionFactory().openSession();
		int result = sess.insert(namespace + ".insertFoodHome", h);
		
		if(result > 0) {
			sess.commit();
		}else {
			sess.rollback();
		}

	}
	
	public int BossLogin(String id, String password) {
		
//		SqlSession sess = getSqlSessionFactory().openSession();
//		int result = sess.selectOne(namespace + ".BossLogin");
	
		
//		ResultSet  = 
//		
		int result = 1;
		
		
		return result;
	
	}
}
