package hajusarh.data;

import java.io.Serializable;
import java.util.Date;

public class Customer implements Serializable {

	private static final long serialVersionUID = 1L;

	private Integer customer;
	private String firstName;
	private String lastName;
	private String identityCode;
	private String note;
	private Date birthDate;
	private Date created;
	private Integer createdBy;
	private Date updated;
	private Integer updatedBy;
	private Integer cstType;
	private Integer cstStateType;

	public Integer getCustomer() {
		return customer;
	}

	public void setCustomer(Integer customer) {
		this.customer = customer;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getIdentityCode() {
		return identityCode;
	}

	public void setIdentityCode(String identityCode) {
		this.identityCode = identityCode;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public Date getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}

	public Date getCreated() {
		return created;
	}

	public void setCreated(Date created) {
		this.created = created;
	}

	public Integer getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(Integer createdBy) {
		this.createdBy = createdBy;
	}

	public Date getUpdated() {
		return updated;
	}

	public void setUpdated(Date updated) {
		this.updated = updated;
	}

	public Integer getUpdatedBy() {
		return updatedBy;
	}

	public void setUpdatedBy(Integer updatedBy) {
		this.updatedBy = updatedBy;
	}

	public Integer getCstType() {
		return cstType;
	}

	public void setCstType(Integer cstType) {
		this.cstType = cstType;
	}

	public Integer getCstStateType() {
		return cstStateType;
	}

	public void setCstStateType(Integer cstStateType) {
		this.cstStateType = cstStateType;
	}

}
