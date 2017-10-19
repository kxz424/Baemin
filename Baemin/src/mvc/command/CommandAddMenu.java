package mvc.command;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Menu;
import mybatis.service.ServiceAddMenu;


public class CommandAddMenu implements Command {

	private String next;
	
	public CommandAddMenu( String next ) {
		this.next = next;
	}
	 
	 
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		
		Menu m = new Menu();
		
		m.setMenuName(request.getParameter("menuName"));		// 메뉴명
		m.setMenuPrice(Integer.parseInt(request.getParameter("menuPrice")));// 가격
		m.setMenuImg(request.getParameter("menuImg"));			// 이미지 경로
		m.setMenuBoss(request.getParameter("Boss"));		// 사업자등록번호
		
		
		ServiceAddMenu.getInstance().insertAddMenu(m);
		
		ArrayList result = new ArrayList();
		result = ServiceAddMenu.getInstance().selectAddMenu(m);
		
		
		request.setAttribute("result", result);
		
		
		
//		try {
//			PrintWriter out = response.getWriter();
//			System.out.println("1111-----------------------------");
//			out.write("1111");
//			//out.flush();
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
		
		return next;
		
	}
}

