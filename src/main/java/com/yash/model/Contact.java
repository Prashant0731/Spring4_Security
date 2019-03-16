package com.yash.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="CONTACT_US")
public class Contact {

    @Id @GeneratedValue(strategy=GenerationType.IDENTITY)
    private Integer cId;
    
    @Column(name="cMobile", length=20, nullable=false)
	private String cMobile;

	@Column(name="cName", length=50, nullable=false)
	private String cName;
    
    @Column(name="cEmail", length=30, nullable=false)
	private String cEmail;
    
    @Column(name="cComments", length=100, nullable=false)
	private String cComments;

	public Integer getcId() {
		return cId;
	}

	public void setcId(Integer cId) {
		this.cId = cId;
	}

	public String getcMobile() {
		return cMobile;
	}

	public void setcMobile(String cMobile) {
		this.cMobile = cMobile;
	}

	public String getcName() {
		return cName;
	}

	public void setcName(String cName) {
		this.cName = cName;
	}

	public String getcEmail() {
		return cEmail;
	}

	public void setcEmail(String cEmail) {
		this.cEmail = cEmail;
	}

	public String getcComments() {
		return cComments;
	}

	public void setcComments(String cComments) {
		this.cComments = cComments;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((cComments == null) ? 0 : cComments.hashCode());
		result = prime * result + ((cEmail == null) ? 0 : cEmail.hashCode());
		result = prime * result + ((cId == null) ? 0 : cId.hashCode());
		result = prime * result + ((cMobile == null) ? 0 : cMobile.hashCode());
		result = prime * result + ((cName == null) ? 0 : cName.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Contact other = (Contact) obj;
		if (cComments == null) {
			if (other.cComments != null)
				return false;
		} else if (!cComments.equals(other.cComments))
			return false;
		if (cEmail == null) {
			if (other.cEmail != null)
				return false;
		} else if (!cEmail.equals(other.cEmail))
			return false;
		if (cId == null) {
			if (other.cId != null)
				return false;
		} else if (!cId.equals(other.cId))
			return false;
		if (cMobile == null) {
			if (other.cMobile != null)
				return false;
		} else if (!cMobile.equals(other.cMobile))
			return false;
		if (cName == null) {
			if (other.cName != null)
				return false;
		} else if (!cName.equals(other.cName))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Contact [cId=" + cId + ", cMobile=" + cMobile + ", cName=" + cName + ", cEmail=" + cEmail
				+ ", cComments=" + cComments + "]";
	}
}