package model.domain;

import org.springframework.web.multipart.MultipartFile;

/**
 * 학사일정
 * @author Hae Yun Kim
 * @version 1.0
 * 2017.05.18
 */
public class Schedule {
	
	private int no;
	private String title;
	private String body;
	private String point;
	private int view;
	private MultipartFile file;
	private String file1; //path
	private String createId;
	private String createDate;
	private String updateId;
	private String updateDate;
	
	public Schedule() {
		super();
	}

	public Schedule(int no, String title, String body, String point, int view, MultipartFile file, String file1, String createId, String createDate, String updateId, String updateDate){
		super();
		this.no = no;
		this.title = title;
		this.body = body;
		this.point = point;
		this.view = view;
		this.file = file;
		this.file1 = file1;
		this.createId = createId;
		this.createDate = createDate;
		this.updateId = updateId;
		this.updateDate = updateDate;	
	}
	
	public Schedule(int no, String title, String body, String point, String file1, String updateId) {
		super();
		this.no = no;
		this.title = title;
		this.body = body;
		this.point = point;
		this.file1 = file1;
		this.updateId = updateId;
	}

	public int getNo(){
		return no;
	}
	
	public void setNo(int no){
		this.no = no;
	}
	
	public String getTitle(){
		return title;
	}
	
	public void setTitle(String title){
		this.title = title;
	}
	
	public String grtBody(){
		return body;
	}
	public void setBody(String body){
		this.body = body;
	}
	
	public String getPoint(){
		return point;
	}
	public void setPoint(String point){
		this.point = point;
	}
	
	public int getView(){
		return view;
	}
	
	public void setView(int view){
		this.view = view;
	}
	
	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public String getFile1() {
		return file1;
	}

	public void setFile1(String file1) {
		this.file1 = file1;
	}

	public String getCreateId() {
		return createId;
	}

	public void setCreateId(String createId) {
		this.createId = createId;
	}

	public String getCreateDate() {
		return createDate;
	}

	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}

	public String getUpdateId() {
		return updateId;
	}

	public void setUpdateId(String updateId) {
		this.updateId = updateId;
	}

	public String getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(String updateDate) {
		this.updateDate = updateDate;
	}

	public String getBody() {
		return body;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Schedule [no=");
		builder.append(no);
		builder.append(", title=");
		builder.append(title);
		builder.append(", body=");
		builder.append(body);
		builder.append(", point=");
		builder.append(point);
		builder.append(", view=");
		builder.append(view);
		builder.append(", file=");
		builder.append(file);
		builder.append(", file1=");
		builder.append(file1);
		builder.append(", createId=");
		builder.append(createId);
		builder.append(", createDate=");
		builder.append(createDate);
		builder.append(", updateId=");
		builder.append(updateId);
		builder.append(", updateDate=");
		builder.append(updateDate);
		builder.append("]");
		return builder.toString();
	}
}