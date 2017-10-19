package mvc.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Menu;
import mybatis.service.ServiceSoldOut;


public class CommandSoldOut implements Command {

	private String next;
	
	public CommandSoldOut( String next ) {
		this.next = next;
	}
	 
 	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		
		String str = null;
		Menu m = new Menu();
		
		m.setMenuName(request.getParameter("menuName"));	//메뉴명
		str = request.getParameter("chk");	//품절유무
		m.setMenuSoldOut(str.charAt(0));	//품절 - 유:Y , 무:N
		m.setMenuFood("1111111111");	//사업자등록번호(테스트용)
		
		 
		ServiceSoldOut.getInstance().updateSoldOut(m);
		
		
		return next;
		
	}
}

