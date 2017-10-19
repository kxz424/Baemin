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
		
		ServiceIng.getInstance().updateIng(fh);
		
		return next;
		
	}
}