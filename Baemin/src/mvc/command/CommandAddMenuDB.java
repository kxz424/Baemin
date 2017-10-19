package mvc.command;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Menu;
import mybatis.service.ServiceAddMenu;


public class CommandAddMenuDB implements Command{

	

	private String next;
	
	public CommandAddMenuDB( String next ) {
		this.next = next;
	}
	 
	 
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		
		Menu m = new Menu();
		
		List<Menu> result = new ArrayList<Menu>();

		m.setMenuFood("1111111111");		// 사업자등록번호

		result = ServiceAddMenu.getInstance().selectAddMenu(m.getMenuFood());
		
		request.setAttribute("result", result);

		
		return next;
		
	}
	
	
	
	
	
}
