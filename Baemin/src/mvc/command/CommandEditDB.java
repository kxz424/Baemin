
package mvc.command;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.FoodHome;
import model.Menu;
import mybatis.service.ServiceAddMenu;


public class CommandEditDB implements Command{

	

	private String next;
	
	public CommandEditDB( String next ) {
		this.next = next;
	}
	 
	 
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		
		FoodHome fh = new FoodHome();
		
		List<FoodHome> result = new ArrayList<FoodHome>();
		
		fh.setfBoss("1111111111");	// 사업자등록번호
		
		result = ServiceAddMenu.getInstance().selectEdit(fh.getfBoss());
		  
		request.setAttribute("result", result);

		return next;
		
	}
	
	
	
	
	
}



