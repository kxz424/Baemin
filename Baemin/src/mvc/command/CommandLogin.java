package mvc.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Member;
import mybatis.service.ServiceLogin;


public class CommandLogin implements Command {

	private String next;
	
	public CommandLogin( String next ) {
		this.next = next;
	}
	 
 	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		
//		HttpSession session = request.getSession();
		
		String id = request.getParameter("mId");
		String password = request.getParameter("mPassword");
		
		System.out.println("id " + id);
		System.out.println("password " + password);
		
//		Member m = ServiceLogin.getInstance().selectMember(id, password);
//		
//		if(m == null) {
//			System.out.println("값없음");
//		} else {
//			request.setAttribute("user", m);
//			System.out.println(m.getmBirth());
//			System.out.println(m.getmGender());
//			System.out.println(m.getmId());
//			System.out.println(m.getmPassword());
//			System.out.println(m.getmTel());
//		}
		
		return next;
		
	}
}