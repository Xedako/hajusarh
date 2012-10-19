package hajusarh.data;

import java.io.Serializable;

import org.apache.commons.lang.builder.ToStringBuilder;

public class CommDeviceType implements Serializable {

	private static final long serialVersionUID = 1L;
	private Integer commDeviceType;
	private String name;
	private String description;

	public Integer getCommDeviceType() {
		return commDeviceType;
	}

	public void setCommDeviceType(Integer commDeviceType) {
		this.commDeviceType = commDeviceType;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}

}