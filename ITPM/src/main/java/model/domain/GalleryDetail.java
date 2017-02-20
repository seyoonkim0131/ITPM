package model.domain;

import org.springframework.web.multipart.MultipartFile;

/**
 * 행사별 사진목록
 * @author Seyoon Kim
 * @version 1.0
 * 2017.02.20
 */
public class GalleryDetail {
	
	private int no;
	private String createId;
	private String createDate;
	private String updateId;
	private String updateDate;
	private String filePath;
	private MultipartFile file;
	private int thumbnailNo;
	
	public GalleryDetail() {
		super();
	}

	public GalleryDetail(int no, String createId, String createDate, String updateId, String updateDate,
			String filePath, MultipartFile file, int thumbnailNo) {
		super();
		this.no = no;
		this.createId = createId;
		this.createDate = createDate;
		this.updateId = updateId;
		this.updateDate = updateDate;
		this.filePath = filePath;
		this.file = file;
		this.thumbnailNo = thumbnailNo;
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

	public int getThumbnailNo() {
		return thumbnailNo;
	}

	public void setThumbnailNo(int thumbnailNo) {
		this.thumbnailNo = thumbnailNo;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("GalleryDetail [no=");
		builder.append(no);
		builder.append(", createId=");
		builder.append(createId);
		builder.append(", createDate=");
		builder.append(createDate);
		builder.append(", updateId=");
		builder.append(updateId);
		builder.append(", updateDate=");
		builder.append(updateDate);
		builder.append(", filePath=");
		builder.append(filePath);
		builder.append(", file=");
		builder.append(file);
		builder.append(", thumbnailNo=");
		builder.append(thumbnailNo);
		builder.append("]");
		return builder.toString();
	}
	
}