package model;
// 리뷰모델
public class Review {
	String rNum;		// 리뷰번호
	String rContent;	// 글내용
	String rDate;		// 등록날짜
	String rMember;		// 회원 이메일
	String rFood;		// 사업자등록번호
	
	public String getrNum() {
		return rNum;
	}
	public void setrNum(String rNum) {
		this.rNum = rNum;
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
	public void setrDate(String rDate) {
		this.rDate = rDate;
	}
	public String getrMember() {
		return rMember;
	}
	public void setrMember(String rMember) {
		this.rMember = rMember;
	}
	public String getrFood() {
		return rFood;
	}
	public void setrFood(String rFood) {
		this.rFood = rFood;
	}
	
}
