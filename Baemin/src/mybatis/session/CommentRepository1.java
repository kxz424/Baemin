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

public class CommentRepository1 {
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
	
	public Integer insertComment(Member m) {
		return null;
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
	
	public void insertJoin(Member m) {
		
	}

//	public void insertFoodHome(FoodHome h) {
//		
//		SqlSession sess = getSqlSessionFactory().openSession();
//		sess.insert(namespace + ".insertFoodHome", h);
//		
//	}
	
	
	
}
