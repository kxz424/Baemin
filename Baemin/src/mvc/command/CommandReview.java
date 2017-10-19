package mvc.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import model.Review;
import mybatis.service.ServiceMenuList;
import mybatis.service.ServiceReview;


public class CommandReview implements Command {

	private String next;
	
	public CommandReview( String next ) {
		this.next = next;
	}
	 
 	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
	
		List<Review> list = new ArrayList<>();
		System.out.println("1>>>>"+request.getParameter("rMember"));
		Review r = new Review();
		r.setrMember(request.getParameter("rMember"));
		r.setrContent(request.getParameter("rCentent"));
		r.setrFood(request.getParameter("rFood"));
		
		ServiceReview.getInstance().insertReview(r);
		System.out.println("2>>>"+request.getParameter("rMember"));
		
		
		try {
			list = ServiceReview.getInstance().selectReview(r.getrFood());
			JSONArray ja = new JSONArray();
			for(int i = 0; i < list.size(); i++) {
				JSONObject jo = new JSONObject();
				jo.put("rMember", list.get(i).getrMember());
				jo.put("rCentent", list.get(i).getrContent());
				jo.put("rFood", list.get(i).getrFood());
				jo.put("rDate", list.get(i).getrDate());
				ja.add(jo);
			}
			JSONObject result = new JSONObject();
			result.put("result", ja);
			System.out.println(ja.toJSONString());
			response.getWriter().print(result);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
		
	}
}

