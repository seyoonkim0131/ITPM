package model.domain;

/**
 * 교수정보
 * @author Hoonseon Ryu
 * @version 1.0
 * 2017.04.11
 */
public class Professor {
	
	private String profNumber;
	private String nameKor;
	private String nameEng;
	private String phone;
	private String email;
	private String office;
	private String education;
	private String about;
	private String photo;

	
	public Professor() {
		super();
	}

	public Professor(String profNumber, String nameKor, String nameEng, String phone, String email, String office,
			String education, String about, String photo) {
		super();
		this.profNumber = profNumber;
		this.nameKor = nameKor;
		this.nameEng = nameEng;
		this.phone = phone;
		this.email = email;
		this.office = office;
		this.education = education;
		this.about = about;
		this.photo = photo;
	}


	public Professor(String nameKor, String nameEng, String phone, String email, String office, String education,
			String about, String photo) {
		super();
		this.nameKor = nameKor;
		this.nameEng = nameEng;
		this.phone = phone;
		this.email = email;
		this.office = office;
		this.education = education;
		this.about = about;
		this.photo = photo;
	}


	public String getProfNumber() {
		return profNumber;
	}


	public void setProfNumber(String profNumber) {
		this.profNumber = profNumber;
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


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getOffice() {
		return office;
	}


	public void setOffice(String office) {
		this.office = office;
	}


	public String getEducation() {
		return education;
	}


	public void setEducation(String education) {
		this.education = education;
	}

	
	public String getAbout() {
		return about;
	}

	public void setAbout(String about) {
		this.about = about;
	}

	public String getPhoto() {
		return photo;
	}


	public void setPhoto(String photo) {
		this.photo = photo;
	}


	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Professor [profNumber=");
		builder.append(profNumber);
		builder.append(", nameKor=");
		builder.append(nameKor);
		builder.append(", nameEng=");
		builder.append(nameEng);
		builder.append(", phone=");
		builder.append(phone);
		builder.append(", email=");
		builder.append(email);
		builder.append(", office=");
		builder.append(office);
		builder.append(", education=");
		builder.append(education);
		builder.append(", about=");
		builder.append(about);
		builder.append(", photo=");
		builder.append(photo);
		builder.append("]");
		return builder.toString();
	}

	
}