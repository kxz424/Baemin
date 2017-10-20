package mvc.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Member;
import oracle.net.aso.r;


public class CommandOrder implements Command {

	private String next;
	
	public CommandOrder( String next ) {
		this.next = next;
	}
	 
 	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		HttpSession session = request.getSession();
		Member member = (Member)session.getAttribute("user");
		member.setmTel(request.getParameter("oTel"));
		String fboss = request.getParameter("fboss");
		
		String[] menuname = request.getParameterValues("oMenuName");
		String[] menucnt = request.getParameterValues("oMenuCnt");
		String omoney = request.getParameter("oMoney");
		String oAddress = request.getParameter("oAddress");
		String oRequest = request.getParameter("oRequest");
		
		
		
		return next;
		
	}
}

