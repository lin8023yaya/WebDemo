package com.ctcs.market.common;


import java.beans.PropertyEditorSupport;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateConverter extends PropertyEditorSupport {
	public DateConverter() {
	}

	public void setAsText(String text) throws IllegalArgumentException {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

		try {
			Date d = sdf.parse(text);
			this.setValue(d);
		} catch (ParseException var4) {
			var4.printStackTrace();
			this.setValue((Object)null);
		}

	}
}

