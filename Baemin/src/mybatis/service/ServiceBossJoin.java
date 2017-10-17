package mybatis.service;

import model.Member;
import mybatis.session.CommentRepository;

public class ServiceBossJoin {
	
	private static ServiceBossJoin service;
	CommentRepository repo = new CommentRepository();
	
	private ServiceBossJoin() { }
	
	public static ServiceBossJoin getInstance() {
		if(service == null) service = new ServiceBossJoin();
		return service;
	} 
	
	public Integer insertBossJoin(Member m) {
		return repo.insertBossJoin(m);
	}
	

}
