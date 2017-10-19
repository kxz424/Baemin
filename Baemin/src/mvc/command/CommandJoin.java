package mvc.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Member;
import mybatis.service.ServiceJoin;

public class CommandJoin implements Command {
	private String next;
	
	public CommandJoin( String next ) {
		this.next = next;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		
		HttpSession session = request.getSession();
		
		Member m = new Member();
		m = (Member)session.getAttribute("member");
		
		String tel = "";
		for( int i = 1 ; i < 4 ; i++ )
			tel += request.getParameter("tel"+i);
		m.setmTel(tel);
		m.setmBirth(request.getParameter("mBirth"));
		m.setmGender(request.getParameter("mGender"));
		
		int result = ServiceJoin.getInstance().insertJoin(m);
		request.setAttribute("join", result);
		
		return next;
	}
	
	
}
