package model.domain;

public class Education {

	private String no;
	private String major;
	private String nameKor;
	private String nameEng;
	
	public Education() {
		super();
	}

	public Education(String no, String major, String nameKor, String nameEng) {
		super();
		this.no = no;
		this.major = major;
		this.nameKor = nameKor;
		this.nameEng = nameEng;
	}

	public String getNo() {
		return no;
	}

	public void setNo(String no) {
		this.no = no;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getNameKor() {
		return nameKor;
	}

	public void setNameKor(String nameKor) {
		this.nameKor = nameKor;
	}

	public String getNameEng() {
		return nameEng;
	}

	public void setNameEng(String nameEng) {
		this.nameEng = nameEng;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Education [no=");
		builder.append(no);
		builder.append(", major=");
		builder.append(major);
		builder.append(", nameKor=");
		builder.append(nameKor);
		builder.append(", nameEng=");
		builder.append(nameEng);
		builder.append("]");
		return builder.toString();
	}
}