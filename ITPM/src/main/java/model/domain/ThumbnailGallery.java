package model.domain;

import org.springframework.web.multipart.MultipartFile;

/**
 * 대표사진
 * @author Seyoon Kim
 * @version 1.0
 * 2017.02.20
 */
public class ThumbnailGallery {
	
	private int no;
	private String createId;
	private String createDate;
	private String updateId;
	private String updateDate;
	private int count;
	private String title;
	private String pw;
	private String filePath;
	private MultipartFile file;
	
	public ThumbnailGallery() {
		super();
	}

	public ThumbnailGallery(int no, String createId, String createDate, String updateId, String updateDate, int count,
			String title, String pw, String filePath, MultipartFile file) {
		super();
		this.no = no;
		this.createId = createId;
		this.createDate = createDate;
		this.updateId = updateId;
		this.updateDate = updateDate;
		this.count = count;
		this.title = title;
		this.pw = pw;
		this.filePath = filePath;
		this.file = file;
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

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("ThumbnailGallery [no=");
		builder.append(no);
		builder.append(", createId=");
		builder.append(createId);
		builder.append(", createDate=");
		builder.append(createDate);
		builder.append(", updateId=");
		builder.append(updateId);
		builder.append(", updateDate=");
		builder.append(updateDate);
		builder.append(", count=");
		builder.append(count);
		builder.append(", title=");
		builder.append(title);
		builder.append(", pw=");
		builder.append(pw);
		builder.append(", filePath=");
		builder.append(filePath);
		builder.append(", file=");
		builder.append(file);
		builder.append("]");
		return builder.toString();
	}
	
}