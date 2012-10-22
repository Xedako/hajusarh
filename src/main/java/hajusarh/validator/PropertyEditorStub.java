package hajusarh.validator;

import java.awt.Component;
import java.awt.Graphics;
import java.awt.Rectangle;
import java.beans.PropertyChangeListener;
import java.beans.PropertyEditor;

/**
 * Stub for {@link PropertyEditor} interface
 * 
 * @author Maksim Pristsepov
 * 
 */
public class PropertyEditorStub implements PropertyEditor {

	public void addPropertyChangeListener(PropertyChangeListener listener) {
	}

	public String getAsText() {
		return null;
	}

	public Component getCustomEditor() {
		return null;
	}

	public String getJavaInitializationString() {
		return null;
	}

	public String[] getTags() {
		return null;
	}

	public Object getValue() {
		return null;
	}

	public boolean isPaintable() {
		return false;
	}

	public void paintValue(Graphics gfx, Rectangle box) {
	}

	public void removePropertyChangeListener(PropertyChangeListener listener) {
	}

	public void setAsText(String text) throws IllegalArgumentException {
	}

	public void setValue(Object value) {
	}

	public boolean supportsCustomEditor() {
		return false;
	}

}
