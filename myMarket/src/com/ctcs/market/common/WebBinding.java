package com.ctcs.market.common;

import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.support.WebBindingInitializer;
import org.springframework.web.context.request.WebRequest;

public class WebBinding implements WebBindingInitializer {

	@Override
	public void initBinder(WebDataBinder binder, WebRequest request) {
		// TODO Auto-generated method stub
		binder.registerCustomEditor(java.util.Date.class, new DateConverter());
	}

}
