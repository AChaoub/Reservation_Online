package com.achaoub.test;


import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.achaoub.dao.PersonneDAO;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ApplicationContext appContext  = new ClassPathXmlApplicationContext("com/achaoub/test/dispatcher-servlet.xml");
		PersonneDAO bean = (PersonneDAO) appContext.getBean("PersonneDAO");
		System.out.println(bean.getPersonne(1));
		

	}

}
