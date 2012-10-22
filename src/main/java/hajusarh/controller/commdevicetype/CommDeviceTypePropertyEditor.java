package hajusarh.controller.commdevicetype;

import hajusarh.data.CommDeviceType;
import hajusarh.validator.PropertyEditorStub;

import java.util.List;

public class CommDeviceTypePropertyEditor extends PropertyEditorStub {

	List<CommDeviceType> allItems;
	CommDeviceType selectedItem;

	public CommDeviceTypePropertyEditor(List<CommDeviceType> allItems) {
		this.allItems = allItems;
	}

	@Override
	public Object getValue() {
		return selectedItem;
	}

	@Override
	public void setAsText(String value) throws IllegalArgumentException {
		for (CommDeviceType item : allItems) {
			if (item.getCommDeviceType().equals(Integer.valueOf(value))) {
				selectedItem = item;
				return;
			}
		}
	}
}