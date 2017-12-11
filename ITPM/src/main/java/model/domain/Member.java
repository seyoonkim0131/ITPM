package model.domain;

import org.springframework.web.multipart.MultipartFile;

/**
 * 회원정보
 * @author Seyoon Kim
 * @version 2.0
 * 2017.03.29
 */
public class Member {
	
	private String phoneNumber;
	private String name;
	private String studentId;
	private String pw;
	private String mailId;
	private String mailDomain;
	private String job;
	private String auth;
	private String sGroup;
	private String jobPosition;
	private String jobPhone;
	private MultipartFile photoFile;
	private String photo;
	private String newPw;
	private String profOrder;
	
	public Member() {
		super();
	}

	public Member(String phoneNumber, String name, String studentId, String pw, String mailId, String mailDomain, String job, String auth, String sGroup, String jobPosition, String jobPhone, MultipartFile photoFile, String photo, String newPw, String profOrder) {
		super();
		this.phoneNumber = phoneNumber;
		this.name = name;
		this.studentId = studentId;
		this.pw = pw;
		this.mailId = mailId;
		this.mailDomain = mailDomain;
		this.job = job;
		this.auth = auth;
		this.sGroup = sGroup;
		this.jobPosition = jobPosition;
		this.jobPhone = jobPhone;
		this.photoFile = photoFile;
		this.photo = photo;
		this.newPw = newPw;
		this.profOrder = profOrder;
	}
	
	public Member(String phoneNumber, String mailId, String mailDomain, String job, String jobPosition, String photo, String studentId) {
		super();
		this.phoneNumber = phoneNumber;
		this.mailId = mailId;
		this.mailDomain = mailDomain;
		this.job = job;
		this.jobPosition = jobPosition;
		this.photo = photo;
		this.studentId = studentId;
	}
	
	public Member(String pw, String studentId) {
		super();
		this.pw = pw;
		this.studentId = studentId;
	}

	public Member(String studentId, String auth, String sGroup) {
		super();
		this.studentId = studentId;
		this.auth = auth;
		this.sGroup = sGroup;
	}

	public Member(String studentId, String name, String phoneNumber, String sGroup) {
		super();
		this.studentId = studentId;
		this.name = name;
		this.phoneNumber = phoneNumber;
		this.sGroup = sGroup;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public String getsGroup() {
		return sGroup;
	}

	public void setsGroup(String sGroup) {
		this.sGroup = sGroup;
	}

	public String getJobPosition() {
		return jobPosition;
	}

	public void setJobPosition(String jobPosition) {
		this.jobPosition = jobPosition;
	}

	public String getJobPhone() {
		return jobPhone;
	}

	public void setJobPhone(String jobPhone) {
		this.jobPhone = jobPhone;
	}
	
	public MultipartFile getPhotoFile() {
		return photoFile;
	}

	public void setPhotoFile(MultipartFile photoFile) {
		this.photoFile = photoFile;
	}

	public String getPhoto() {
		return photo;
	}
	
	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getNewPw() {
		return newPw;
	}

	public void setNewPw(String newPw) {
		this.newPw = newPw;
	}

	public String getProfOrder() {
		return profOrder;
	}

	public void setProfOrder(String profOrder) {
		this.profOrder = profOrder;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Member [phoneNumber=");
		builder.append(phoneNumber);
		builder.append(", name=");
		builder.append(name);
		builder.append(", studentId=");
		builder.append(studentId);
		builder.append(", pw=");
		builder.append(pw);
		builder.append(", mailId=");
		builder.append(mailId);
		builder.append(", mailDomain=");
		builder.append(mailDomain);
		builder.append(", job=");
		builder.append(job);
		builder.append(", auth=");
		builder.append(auth);
		builder.append(", sGroup=");
		builder.append(sGroup);
		builder.append(", jobPosition=");
		builder.append(jobPosition);
		builder.append(", jobPhone=");
		builder.append(jobPhone);
		builder.append(", photoFile=");
		builder.append(photoFile);
		builder.append(", photo=");
		builder.append(photo);
		builder.append(", newPw=");
		builder.append(newPw);
		builder.append(", profOrder=");
		builder.append(profOrder);
		builder.append("]");
		return builder.toString();
	}
	
}