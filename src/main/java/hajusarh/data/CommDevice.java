package hajusarh.data;

import java.io.Serializable;
import java.util.Date;

import org.apache.commons.lang.builder.ToStringBuilder;

public class CommDevice implements Serializable {

	private static final long serialVersionUID = 1L;
	private Integer commDevice;
	private CommDeviceType commDeviceType;
	private Integer customer;
	private String valueText;
	private Integer orderb;
	private Date created;

	public Integer getCommDevice() {
		return commDevice;
	}

	public void setCommDevice(Integer commDevice) {
		this.commDevice = commDevice;
	}

	public CommDeviceType getCommDeviceType() {
		return commDeviceType;
	}

	public void setCommDeviceType(CommDeviceType commDeviceType) {
		this.commDeviceType = commDeviceType;
	}

	public Integer getCustomer() {
		return customer;
	}

	public void setCustomer(Integer customer) {
		this.customer = customer;
	}

	public String getValueText() {
		return valueText;
	}

	public void setValueText(String valueText) {
		this.valueText = valueText;
	}

	public Integer getOrderb() {
		return orderb;
	}

	public void setOrderb(Integer orderb) {
		this.orderb = orderb;
	}

	public Date getCreated() {
		return created;
	}

	public void setCreated(Date created) {
		this.created = created;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}
}
