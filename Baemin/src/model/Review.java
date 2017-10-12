package model;
// 리뷰모델
public class Review {
	String rNum;		// 리뷰번호
	String rContent;	// 글내용
	String rDate;		// 등록날짜
	String tMember;		// 회원 이메일
	String rBoss;		// 사업자등록번호
	
	public String getrNum() {
		return rNum;
	}
	
	public String getrContent() {
		return rContent;
	}
	public void setrContent(String rContent) {
		this.rContent = rContent;
	}
	
	public String getrDate() {
		return rDate;
	}
	
	public String gettMember() {
		return tMember;
	}
	public void settMember(String tMember) {
		this.tMember = tMember;
	}
	
	public String getrBoss() {
		return rBoss;
	}
	public void setrBoss(String rBoss) {
		this.rBoss = rBoss;
	}
	
}
