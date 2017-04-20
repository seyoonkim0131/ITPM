package model.domain;

public class Rule {

	private int no;
	private String createId;
	private String createDate;
	private String updateId;
	private String updateDate;
	private int view;
	private String fileAdd1;
	private String point;
	private String title;
	private String body;
	
	public Rule() {
		super();
	}

	public Rule(int no, String createId, String createDate, String updateId, String updateDate, int view, String fileAdd1, String point, String title, String body) {
		super();
		this.no = no;
		this.createId = createId;
		this.createDate = createDate;
		this.updateId = updateId;
		this.updateDate = updateDate;
		this.view = view;
		this.fileAdd1 = fileAdd1;
		this.point = point;
		this.title = title;
		this.body = body;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
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

	public int getView() {
		return view;
	}

	public void setView(int view) {
		this.view = view;
	}

	public String getFileAdd1() {
		return fileAdd1;
	}

	public void setFileAdd1(String fileAdd1) {
		this.fileAdd1 = fileAdd1;
	}

	public String getPoint() {
		return point;
	}

	public void setPoint(String point) {
		this.point = point;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getBody() {
		return body;
	}

	public void setBody(String body) {
		this.body = body;
	}

	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Rule [no=");
		builder.append(no);
		builder.append(", createId=");
		builder.append(createId);
		builder.append(", createDate=");
		builder.append(createDate);
		builder.append(", updateId=");
		builder.append(updateId);
		builder.append(", updateDate=");
		builder.append(updateDate);
		builder.append(", view=");
		builder.append(view);
		builder.append(", fileAdd1=");
		builder.append(fileAdd1);
		builder.append(", point=");
		builder.append(point);
		builder.append(", title=");
		builder.append(title);
		builder.append(", body=");
		builder.append(body);
		builder.append("]");
		return builder.toString();
	}
}