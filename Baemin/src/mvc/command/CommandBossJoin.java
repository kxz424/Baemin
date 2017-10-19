package mvc.command;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import file.upload.FileUploadServlet;
import model.Boss;
import model.FoodHome;
import mybatis.service.ServiceBossJoin;

public class CommandBossJoin implements Command{

	private String next;
	
	public CommandBossJoin( String next ) {
		this.next = next;
	}
	
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		
		HttpSession session = request.getSession();
		
		Boss boss = new Boss();
		boss = (Boss)session.getAttribute("boss");
		
		FoodHome foodHome = new FoodHome();
		
		foodHome.setfBoss(boss.getbNum());
		foodHome.setfName(request.getParameter("fName"));
		foodHome.setfLocation(request.getParameter("fLocation1")+" "+request.getParameter("fLocation2")+" "+request.getParameter("fLocation3"));
		foodHome.setfOpen(request.getParameter("fOpen1")+":"+request.getParameter("fOpen2"));
		foodHome.setfClose(request.getParameter("fClose1")+":"+request.getParameter("fClose2"));
		foodHome.setfTel(request.getParameter("fTel"));
		foodHome.setfCategory(request.getParameter("fCategory"));
		foodHome.setfImg(request.getParameter("file"));
		
		FileUploadServlet fus = new FileUploadServlet();
		
		request.setAttribute("boss", boss);
		request.setAttribute("foodHome", foodHome);
		try {
			request.setAttribute("filePart", request.getPart("file"));
		} catch (IOException | ServletException e1) {
			e1.printStackTrace();
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("/file");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
		
		
//		ServiceBossJoin.getInstance().insertBossJoin(boss, foodHome);
		
		
		return next;
		
	}

}
