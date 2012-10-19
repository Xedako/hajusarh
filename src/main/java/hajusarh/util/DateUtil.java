package hajusarh.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {
	private DateUtil() {
	}

	public static final SimpleDateFormat DATE_FORMAT = new SimpleDateFormat(
			"dd.MM.yyyy");

	static {
		DATE_FORMAT.setLenient(false);
	}

	public static Date parse(String dateStr) {
		try {
			return DATE_FORMAT.parse(dateStr);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return null;
	}

	public static String format(Date date) {
		return DATE_FORMAT.format(date);
	}

	public static String formatCurrent() {
		return format(new Date());
	}
}
