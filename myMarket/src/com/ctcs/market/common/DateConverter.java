package com.ctcs.market.common;

import java.beans.PropertyEditorSupport;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateConverter extends PropertyEditorSupport{

	@Override
	public void setAsText(String text) throws IllegalArgumentException {
		// TODO Auto-generated method stub
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		try {
			Date d = sdf.parse(text);
			this.setValue(d);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			this.setValue(null);
		}
	}
	
}
