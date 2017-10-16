package mvc.control;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.command.Command;
import mvc.command.CommandException;
import mvc.command.CommandNull;

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
    	
    	map.put("main-page", new CommandNull("Main.jsp"));
    	map.put("login-page", new CommandNull("LoginForm.jsp"));
    	map.put("join-first", new CommandNull("JoinForm1.jsp"));
    	map.put("join-second", new CommandNull("JoinForm2.jsp")); 
    	map.put("boss-main", new CommandNull("../boss/BossMain.jsp"));
    	map.put("cate-search", new CommandNull("FoodHomeForm.jsp") );

    	map.put("boss-join1", new CommandNull("../boss/BossJoinForm2.jsp"));
    	
    	
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
    	
    	RequestDispatcher rd = getServletContext().getRequestDispatcher( jspDir + nextPage);
    	rd.forward(request, response);
    	
	}

}
