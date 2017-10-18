package mvc.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Member;

public class CommandJoin implements Command {
	private String next;
	
	public CommandJoin( String next ) {
		this.next = next;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		
		
		
		
		return next;
	}
	
	
}
