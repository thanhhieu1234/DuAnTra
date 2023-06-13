package com.poly.utils;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class SessionUtil {

	@Autowired
	HttpSession session;

	public void add(String name, Object value) {
		session.setAttribute(name, value);
	}

	public void remove(String name) {
		session.removeAttribute(name);
	}

	public Object get(String name) {
		return session.getAttribute(name);
	}

}
