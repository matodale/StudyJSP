package ch14.bookshop.master;
import java.sql.Timestamp;
public class ShopBookDataBean {
	// 책의 등록번호 book_id
	private int book_id;
	// 책의 분류 book_kind
	private String book_kind;
	// 책 이름 book_title
	private String book_title;
	// 책 가격 book_price
	private int book_price;
	// 책의 재고 수량 book_count
	private short book_count;
	// 저자 author
	private String author;
	// 출판사 publishing_com
	private String publishing_com;
	// 출판일 publishing_date
	private String publishing_date;
	// 책 이미지명 book_image
	private String book_image;
	// 책의 내용 book_content
	private String book_content;
	// 책의 할인율 dicount_rate
	private byte discount_rate;
	// 책의 등록날짜 reg_date
	private Timestamp reg_date;
	
	public int getBook_id() {
		return book_id;
	}
	public void setBook_id(int boo_id) {
		this.book_id = boo_id;
	}
	public String getBook_kind() {
		return book_kind;
	}
	public void setBook_kind(String book_kind) {
		this.book_kind = book_kind;
	}
	public String getBook_title() {
		return book_title;
	}
	public void setBook_title(String book_title) {
		this.book_title = book_title;
	}
	public int getBook_price() {
		return book_price;
	}
	public void setBook_price(int book_price) {
		this.book_price = book_price;
	}
	public short getBook_count() {
		return book_count;
	}
	public void setBook_count(short book_count) {
		this.book_count = book_count;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPublishing_com() {
		return publishing_com;
	}
	public void setPublishing_com(String publishing_com) {
		this.publishing_com = publishing_com;
	}
	public String getPublishing_date() {
		return publishing_date;
	}
	public void setPublishing_date(String publishing_date) {
		this.publishing_date = publishing_date;
	}
	public String getBook_image() {
		return book_image;
	}
	public void setBook_image(String book_image) {
		this.book_image = book_image;
	}
	public String getBook_content() {
		return book_content;
	}
	public void setBook_content(String book_content) {
		this.book_content = book_content;
	}
	public byte getDiscount_rate() {
		return discount_rate;
	}
	public void setDiscount_rate(byte discount_rate) {
		this.discount_rate = discount_rate;
	}
	public Timestamp getReg_date() {
		return reg_date;
	}
	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}
}
