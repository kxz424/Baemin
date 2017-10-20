package mybatis.session;

import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.sun.glass.ui.Menu;
import com.sun.org.apache.regexp.internal.recompile;

import model.Boss;
import model.FoodHome;
import model.Member;
import model.Order;
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
	
	public Member selectMember(String id, String password) {
		
		SqlSession sess = getSqlSessionFactory().openSession();
		
		try {
			HashMap hash = new HashMap();
			hash.put("mId", id);
			hash.put("mPassword", password);
			return sess.selectOne(namespace + ".selectUser", hash);
		} finally {
			sess.close();
		}
	}
	
	public Boss selectBoss(String id, String password) {
		SqlSession sess = getSqlSessionFactory().openSession();
		
		try {
			HashMap hash = new HashMap();
			hash.put("bId", id);
			hash.put("bPassword", password);
			
			return sess.selectOne(namespace + ".selectBoss", hash);
			
		} finally {
			sess.close();
		}
	}
	
	public List<FoodHome> selectCategory(String cate) {
		SqlSession sess = getSqlSessionFactory().openSession();
		 
		try {
			HashMap hash = new HashMap();
			hash.put("fCategory", cate);
			
			return sess.selectList(namespace + ".selectCate", hash);
		} finally {
			sess.close();
		}
	}
	
	public List<FoodHome> selectText(String search) {
		SqlSession sess = getSqlSessionFactory().openSession();
		 
		try {
			HashMap hash = new HashMap();
			hash.put("fName", '%'+search+'%');
			
			return sess.selectList(namespace + ".selectCate", hash);
		} finally {
			sess.close();
		}
	}
	
	public List<Menu> selectMenuList(String fboss) {
		SqlSession sess = getSqlSessionFactory().openSession();
		boolean isEmpty = true;
		
		try {
			HashMap hash = new HashMap();
			hash.put("fboss", fboss);
			List<Menu> list = sess.selectList(namespace + ".selectMenu", hash);
			
			isEmpty = false;
			
			if( isEmpty ) return Collections.emptyList();
			
			return list;
			
		} finally {
			sess.close();
		}
	}

	public void insertOrder(Order o) {
		SqlSession sess = getSqlSessionFactory().openSession();
		try {
			int result = sess.insert(namespace + ".insertOrder", o);
			
			if(result > 0 ) {
				sess.commit();
			} else {
				sess.rollback();
			}
		} finally {
			sess.close();
		}
	}
}
