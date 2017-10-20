package mvc.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Member;
import model.Order;
import mybatis.service.ServiceOrder;
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
		
		String name = "";
		String cnt = "";
		
		String[] menuname = request.getParameterValues("oMenuName");
		String[] menucnt = request.getParameterValues("oMenuCnt");
		for(int i = 0 ; i < menuname.length ; i++) {
			name += menuname[i];
			name += "/";
			cnt += menucnt[i];
			cnt += "/";
		}
		
		Order order = new Order();
		
		order.setoAddress(request.getParameter("oAddress"));
		order.setoMoney(Integer.parseInt(request.getParameter("oMoney")));
		order.setoRequest(request.getParameter("oRequest"));
		order.setoMenuName(name);
		order.setoMenuCnt(cnt);
		order.setoMember(member.getmId());
		order.setoFood(request.getParameter("fboss"));
		order.setoTel(request.getParameter("oTel"));
		System.out.println(order.getoFood());
		ServiceOrder.getInstance().insertOrder(order);
		
		return next;
		
	}
}

