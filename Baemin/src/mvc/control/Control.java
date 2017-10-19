package mvc.control;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.command.Command;
import mvc.command.CommandAddMenu;
import mvc.command.CommandAddMenuDB;
import mvc.command.CommandBossJoin;
import mvc.command.CommandBossLogin;
import mvc.command.CommandEdit;
import mvc.command.CommandException;
import mvc.command.CommandFoodHome;
import mvc.command.CommandIng;
import mvc.command.CommandJoin;
import mvc.command.CommandLogin;
import mvc.command.CommandLogout;
import mvc.command.CommandMenuList;
import mvc.command.CommandNull;
import mvc.command.CommandOrder;
import mvc.command.CommandReview;
import mvc.command.CommandSoldOut;

public class Control extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HashMap	map;
	private String jspDir = "/member/";
	private String error = "error.jsp";
       
    public Control() {
        super();
        initCommand();
    }

    private void initCommand() {
    	
    	map = new HashMap();
    	
//    	member
    	map.put("main-page", new CommandNull("Main.jsp"));

        map.put("login-page", new CommandNull("LoginForm.jsp"));
        map.put("login-db", new CommandLogin("Main.jsp"));
        map.put("join-first", new CommandNull("JoinForm1.jsp"));
        map.put("join-second", new CommandNull("JoinForm2.jsp")); 
        map.put("join-finish", new CommandJoin("LoginForm.jsp"));
        map.put("logout-page", new CommandLogout("Main.jsp"));
        map.put("cate-search", new CommandFoodHome("FoodHomeForm.jsp"));
        map.put("search-db", new CommandFoodHome("FoodHomeForm.jsp"));
        map.put("order-page", new CommandNull("OrderForm.jsp"));
        map.put("order-db", new CommandOrder("Main.jsp"));
        map.put("MenuList-page", new CommandMenuList("DetailFoodHome.jsp"));
        map.put("Review-db", new CommandReview("DetailFoodHome.jsp"));

//      boss
        map.put("boss-main", new CommandNull("../boss/BossMain.jsp"));
        map.put("boss-login", new CommandNull("../boss/BossLoginForm.jsp"));
        map.put("boss-login-db", new CommandBossLogin("../boss/BossMain.jsp"));
        map.put("boss-join", new CommandNull("../boss/BossJoinForm1.jsp"));
        map.put("boss-join1", new CommandNull("../boss/BossJoinForm2.jsp"));
        map.put("boss-join2", new CommandNull("../boss/BossJoinForm3.jsp"));
        map.put("boss-join-db", new CommandBossJoin("../boss/BossMain.jsp"));

        map.put("boss-add-menu", new CommandAddMenuDB("../boss/AddMenuForm.jsp"));
        map.put("boss-add-menu-db", new CommandAddMenu("../boss/AddMenuForm.jsp"));
        

        map.put("boss-edit", new CommandNull("../boss/EditForm.jsp"));
        map.put("boss-edit-db", new CommandEdit("../boss/EditFrom.jsp"));
        map.put("boss-sold", new CommandNull("../boss/SoldOutForm.jsp"));
        map.put("boss-sold-db", new CommandSoldOut("../boss/SoldOutForm.jsp"));
        map.put("boss-ing", new CommandNull("../boss/IngForm.jsp"));
        map.put("boss-ing-db", new CommandIng("../boss/IngForm.jsp"));

    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	processRequest(request, response);
	}
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setCharacterEncoding("UTF-8");
    	
    	String nextPage = "";
    	String cmdKey = request.getParameter("cmd");
    	if( cmdKey == null ) {
    		cmdKey = "main-page";
    	}
    	
    	Command cmd = null;
    	
    	try {
    		if( map.containsKey( cmdKey ) ) {
    			cmd = (Command)map.get(cmdKey);
    		} else {
    			throw new CommandException("지정할 명령어가 존재하지 않음");
    		}
 
    		nextPage = cmd.execute( request, response );
    	} catch( CommandException e ) {
    		request.setAttribute("javax.servlet.jsp.jspException", e);
    		nextPage = error;
    		System.out.println( "오류 : " + e.getMessage() );
    	}
    	
    	if(nextPage != null) {
	    	RequestDispatcher rd = getServletContext().getRequestDispatcher( jspDir + nextPage);
	    	rd.forward(request, response);
    	}
    	
	}

}
