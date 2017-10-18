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
// 현희
public class CommentRepository2 {
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
	
	public int insertJoin(Member m) {
		SqlSession sess = getSqlSessionFactory().openSession();
		
		try {
			int result = sess.insert( namespace + ".insertJoin", m);
		
			if( result > 0 )
				sess.commit();
			else
				sess.rollback();
			
			return result;
		} finally {
			sess.close();
		}
	}

	
}
