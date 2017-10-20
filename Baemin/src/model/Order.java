package model;
// 주문 모델
public class Order {
	String oNum;		// 주문번호
	String oTel;		// 전화번호
	String oAddress;	// 주소
	String oDate;		// 주문날짜	
	String oRequest;	// 요청사항
	int oMoney;			// 결제금액
	String oMember;		// 회원 아이디
	String oFood;		// 사업자등록번호
	String oMenuName;	// 메뉴명
	int oMenuCnt;		// 수량
	
	public String getoNum() {
		return oNum;
	}
	
	public String getoDate() {
		return oDate;
	}
	
	public String getoTel() {
		return oTel;
	}
	public void setoTel(String oTel) {
		this.oTel = oTel;
	}
	
	public String getoAddress() {
		return oAddress;
	}
	public void setoAddress(String oAddress) {
		this.oAddress = oAddress;
	}
	
	public String getoRequest() {
		return oRequest;
	}
	public void setoRequest(String oRequest) {
		this.oRequest = oRequest;
	}
	
	public int getoMoney() {
		return oMoney;
	}
	public void setoMoney(int oMoney) {
		this.oMoney = oMoney;
	}
	
	public String getoMember() {
		return oMember;
	}
	public void setoMember(String oMember) {
		this.oMember = oMember;
	}

	public String getoFood() {
		return oFood;
	}

	public void setoFood(String oFood) {
		this.oFood = oFood;
	}

	public String getoMenuName() {
		return oMenuName;
	}

	public void setoMenuName(String oMenuName) {
		this.oMenuName = oMenuName;
	}

	public int getoMenuCnt() {
		return oMenuCnt;
	}

	public void setoMenuCnt(int oMenuCnt) {
		this.oMenuCnt = oMenuCnt;
	}

	public void setoNum(String oNum) {
		this.oNum = oNum;
	}

	public void setoDate(String oDate) {
		this.oDate = oDate;
	}
	
	
	
}
