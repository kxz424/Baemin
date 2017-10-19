package mvc.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.parsing.GenericTokenParser;

import model.FoodHome;
import mybatis.service.ServiceEdit;
import sun.misc.Perf.GetPerfAction;


public class CommandEdit implements Command {

	private String next;
	
	public CommandEdit( String next ) {
		this.next = next;
	}
	 
 	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
	
		FoodHome fh = new FoodHome();
		
		fh.setfOpen(request.getParameter("fOpen"));	//오픈시간
		fh.setfClose(request.getParameter("fClose"));	//마감시간
		fh.setfTel(request.getParameter("fTel"));	//전화번호
		fh.setfBoss("1111111111");	//사업자등록번호
		
		
		ServiceEdit.getInstance().updateEdit(fh);
		
		return next;
		
	}
}


