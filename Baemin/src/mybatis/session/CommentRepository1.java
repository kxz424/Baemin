package mybatis.session;

import java.io.IOException;
import java.io.InputStream;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import model.FoodHome;
import model.Member;
import model.Menu;
import model.Review;
// 종상오빠
public class CommentRepository1 {
	private String namespace = "mapper.BaeminMenuMapper";
	
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

	
	
	public void insertAddMenu(Menu m) {
		SqlSession sess = getSqlSessionFactory().openSession();
//		int result = sess.insert(namespace + ".insertAddMenu", m);
//		
//		
//		if(result > 0) {
//			sess.commit();
//		}else {
//			sess.rollback();
//		}
		
	}
	
	public void updateSoldOut(Menu m) {
		SqlSession sess = getSqlSessionFactory().openSession();
//		int result = sess.update(namespace + ".updateSoldOut", m);
//		
//		
//		if(result > 0) {
//			sess.commit();
//		}else {
//			sess.rollback();
//		}
		
	}
	
	public void updateEdit(FoodHome fh) {
		SqlSession sess = getSqlSessionFactory().openSession();
//		int result = sess.update(namespace + ".updateEdit", fh);
//		
//		
//		if(result > 0) {
//			sess.commit();
//		}else {
//			sess.rollback();
//		}
		
	}
	
	public void updateIng(FoodHome fh) {
		SqlSession sess = getSqlSessionFactory().openSession();
//		int result = sess.update(namespace + ".updateEdit", fh);
//		
//		
//		if(result > 0) {
//			sess.commit();
//		}else {
//			sess.rollback();
//		}
		
	}
	
	public void insertReview(Review r) {
		SqlSession sess = getSqlSessionFactory().openSession();
		
		int result = sess.insert(namespace + ".insertReview", r);
		
		if(result > 0) {
			sess.commit();
		}else {
			sess.rollback();
		}
	}
	
	public ArrayList<Review> selectReview(String boss) throws SQLException {
		SqlSession sess = getSqlSessionFactory().openSession();
		HashMap<String, String> map = new HashMap<>();
		map.put("boss", boss);
		
		ResultSet rs = (ResultSet) sess.selectList(namespace + ".selectReview", map);
		
		Review r = new Review();
		ArrayList<Review> list = new ArrayList<>();
		while(rs.next()) {
			r.setrContent(rs.getString("r_content"));
			r.setrDate(rs.getString("r_date"));
			r.setrMember(rs.getString("r_member"));
			r.setrFood(rs.getString("r_boss"));
			list.add(r);
		}
		
		return list;
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
