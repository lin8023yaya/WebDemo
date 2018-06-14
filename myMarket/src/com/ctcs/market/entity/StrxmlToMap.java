package com.ctcs.market.entity;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class StrxmlToMap {

	/**
     * @description解析xml返回map
     * @param xml
     * @return Map
     */
    public Map<String, String> readStringXmlOut(String xml) {
    	Map<String, String> map=new HashMap<String, String>();;
        Document doc = null;
        int num=0;
        try {
        	
            doc = DocumentHelper.parseText(xml);
        	Element employees=doc.getRootElement();
//        	for(Iterator i = employees.elementIterator(); i.hasNext();){   
//	        	Element employee = (Element) i.next();   
	        	for(Iterator j = employees.elementIterator(); j.hasNext();){   
		        	Element node=(Element) j.next();
//		        	System.out.println(node.getName()+":"+node.getText());   
		        	if(map.size()>0 && null!=map.get(node.getName())){
		        		map.put(node.getName()+String.valueOf(num), node.getText());
		        		System.out.println(node.getName()+String.valueOf(num)+":"+node.getText());   
		        	}else{
		        		map.put(node.getName(), node.getText());
		        		System.out.println(node.getName()+":"+node.getText());   
		        	}
//	        	}   
	        	num++;
        	}   
        } catch (DocumentException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return map;
    }
}
