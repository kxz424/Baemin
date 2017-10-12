package model;
// 메뉴 모델
public class Menu {
	String menuNum;			// 메뉴등록번호
	String menuName;		// 메뉴명
	char menuSoldOut;		// 품절유무
	int menuPrice;			// 가격
	String menuBoss;		// 사업자등록번호
	
	public String getMenuNum() {
		return menuNum;
	}
	
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	
	public char getMenuSoldOut() {
		return menuSoldOut;
	}
	public void setMenuSoldOut(char menuSoldOut) {
		this.menuSoldOut = menuSoldOut;
	}
	
	public int getMenuPrice() {
		return menuPrice;
	}
	public void setMenuPrice(int menuPrice) {
		this.menuPrice = menuPrice;
	}
	
	public String getMenuBoss() {
		return menuBoss;
	}
	public void setMenuBoss(String menuBoss) {
		this.menuBoss = menuBoss;
	}
	
}
