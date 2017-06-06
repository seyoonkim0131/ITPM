package model.domain;

import org.springframework.web.multipart.MultipartFile;

public class Notice {
	
	private int no;
	private String title;
	private String body;
	private int view;
	private String point;
	private MultipartFile file_1;
	private MultipartFile file_2;
	private MultipartFile file_3;
	private String file1;
	private String file2;
	private String file3;
	private String createId;
	private String createDate;
	private String updateId;
	private String updateDate;
	
	public Notice() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Notice(int no, String title, String body, int view, String point, MultipartFile file_1, MultipartFile file_2, MultipartFile file_3, String file1, String file2, String file3,
			String createId, String createDate, String updateId, String updateDate) {
		super();
		this.no = no;
		this.title = title;
		this.body = body;
		this.view = view;
		this.point = point;
		this.file_1 = file_1;
		this.file_2 = file_2;
		this.file_3 = file_3;
		this.file1 = file1;
		this.file2 = file2;
		this.file3 = file3;
		this.createId = createId;
		this.createDate = createDate;
		this.updateId = updateId;
		this.updateDate = updateDate;
	}
	
	/*공지사항 목록 조회 생성자*/
	public Notice(int no, String title, int view, String point, String createDate) {
		super();
		this.no = no;
		this.title = title;
		this.view = view;
		this.point = point;
		this.createDate = createDate;
	}
	
	/*공지사항 내용페이지 조회 생성자*/
	public Notice(int no, String title, String body, int view, String file1, String file2, String file3,
			String createId, String createDate, String updateId, String updateDate) {
		super();
		this.no = no;
		this.title = title;
		this.body = body;
		this.view = view;
		this.file1 = file1;
		this.file2 = file2;
		this.file3 = file3;
		this.createId = createId;
		this.createDate = createDate;
		this.updateId = updateId;
		this.updateDate = updateDate;
	}

	/*글쓰기 생성자*/
	public Notice(String title, String body, String point, String file1, String file2, String file3, String createId,
			String createDate, String updateId, String updateDate) {
		super();
		this.title = title;
		this.body = body;
		this.point = point;
		this.file1 = file1;
		this.file2 = file2;
		this.file3 = file3;
		this.createId = createId;
		this.createDate = createDate;
		this.updateId = updateId;
		this.updateDate = updateDate;
	}
	
	/*글수정 생성자*/
	public Notice(String title, String body, String point, String file1, String file2, String file3, String updateId,
			String updateDate) {
		super();
		this.title = title;
		this.body = body;
		this.point = point;
		this.file1 = file1;
		this.file2 = file2;
		this.file3 = file3;
		this.updateId = updateId;
		this.updateDate = updateDate;
	}

	/*조회수 생성자*/
	public Notice(int view) {
		super();
		this.view = view;
	}
	
	/*이전글,다음글 생성자*/
	public Notice(int no, String title) {
		super();
		this.no = no;
		this.title = title;
	}
	
	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
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

	public int getView() {
		return view;
	}

	public void setView(int view) {
		this.view = view;
	}

	public String getPoint() {
		return point;
	}

	public void setPoint(String point) {
		this.point = point;
	}

	public MultipartFile getFile_1() {
		return file_1;
	}

	public void setFile_1(MultipartFile file_1) {
		this.file_1 = file_1;
	}

	public MultipartFile getFile_2() {
		return file_2;
	}

	public void setFile_2(MultipartFile file_2) {
		this.file_2 = file_2;
	}

	public MultipartFile getFile_3() {
		return file_3;
	}

	public void setFile_3(MultipartFile file_3) {
		this.file_3 = file_3;
	}

	public String getFile1() {
		return file1;
	}

	public void setFile1(String file1) {
		this.file1 = file1;
	}

	public String getFile2() {
		return file2;
	}

	public void setFile2(String file2) {
		this.file2 = file2;
	}

	public String getFile3() {
		return file3;
	}

	public void setFile3(String file3) {
		this.file3 = file3;
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

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Notice [no=");
		builder.append(no);
		builder.append(", title=");
		builder.append(title);
		builder.append(", body=");
		builder.append(body);
		builder.append(", view=");
		builder.append(view);
		builder.append(", point=");
		builder.append(point);
		builder.append(", file_1=");
		builder.append(file_1);
		builder.append(", file_2=");
		builder.append(file_2);
		builder.append(", file_3=");
		builder.append(file_3);
		builder.append(", file1=");
		builder.append(file1);
		builder.append(", file2=");
		builder.append(file2);
		builder.append(", file3=");
		builder.append(file3);
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