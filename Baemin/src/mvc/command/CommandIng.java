package mvc.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.FoodHome;
import mybatis.service.ServiceIng;


public class CommandIng implements Command {

	private String next;
	
	public CommandIng( String next ) {
		this.next = next;
	}
	 
 	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		
		FoodHome fh = new FoodHome();
		
		fh.setfName(request.getParameter("FoodHome"));	//업소명
		fh.setfIng(request.getParameter("chk"));	//Y:운영중  N:운영중지
		fh.setfBoss("1111111111");	//사업자등록번호(테스트용)
		
		System.out.println(request.getParameter("chk"));
		
		ServiceIng.getInstance().updateIng(fh);
		
		return next;
		
	}
}