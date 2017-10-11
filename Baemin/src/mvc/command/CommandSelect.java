package mvc.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CommandSelect implements Command {
	private String next;
	
	public CommandSelect( String next ) {
		this.next = next;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		
		return next;
	}
	
}
