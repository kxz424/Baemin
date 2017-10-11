package mybatis.service;



import model.Member;
import mybatis.session.CommentRepository;

public class CommentService {
	private static CommentService service;
	CommentRepository repo = new CommentRepository();
	
	private CommentService() { }
	
	public static CommentService getInstance() {
		if(service == null) service = new CommentService();
		return service;
	} 
	
	public Integer insertComment(Member m) {
		return repo.insertComment(m);
	}
}
