package model.domain;

/**
 * 회원정보
 * @author Seyoon Kim
 * @version 1.0
 * 2017.02.08
 */
public class Member {

	private String studentId;
	private String pw;
	private String name;
	private String phoneNumber;
	private String mailId;
	private String mailDomain;
	private String job;
	private String auth;
	private String group;
	
	public Member() {
		super();
	}

	public Member(String studentId, String pw, String name, String phoneNumber, String mailId, String mailDomain, String job, String auth, String group) {
		super();
		this.studentId = studentId;
		this.pw = pw;
		this.name = name;
		this.phoneNumber = phoneNumber;
		this.mailId = mailId;
		this.mailDomain = mailDomain;
		this.job = job;
		this.auth = auth;
		this.group = group;
	}

	public String getStudentId() {
		return studentId;
	}

	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getMailId() {
		return mailId;
	}

	public void setMailId(String mailId) {
		this.mailId = mailId;
	}

	public String getMailDomain() {
		return mailDomain;
	}

	public void setMailDomain(String mailDomain) {
		this.mailDomain = mailDomain;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public String getAuth() {
		return auth;
	}

	public void setAuth(String auth) {
		this.auth = auth;
	}
	
	public String getGroup() {
		return group;
	}

	public void setGroup(String group) {
		this.group = group;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Member [studentId=");
		builder.append(studentId);
		builder.append(", pw=");
		builder.append(pw);
		builder.append(", name=");
		builder.append(name);
		builder.append(", phoneNumber=");
		builder.append(phoneNumber);
		builder.append(", mailId=");
		builder.append(mailId);
		builder.append(", mailDomain=");
		builder.append(mailDomain);
		builder.append(", job=");
		builder.append(job);
		builder.append(", auth=");
		builder.append(auth);
		builder.append(", group=");
		builder.append(group);
		builder.append("]");
		return builder.toString();
	}
	
}