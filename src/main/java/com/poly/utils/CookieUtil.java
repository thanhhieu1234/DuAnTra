package com.poly.utils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class CookieUtil {
	@Autowired
	HttpServletRequest request;

	@Autowired
	HttpServletResponse response;

	public String getValue(String name) {
		Cookie[] cookie = request.getCookies();
		if (cookie != null) {
			for (Cookie cookie2 : cookie) {
				if (cookie2.getName().equals(name)) {
					return cookie2.getValue();
				}
			}
		}
		return null;
	}

	public Cookie add(String name, String value, int house) {
		Cookie cookie = new Cookie(name, value);
		cookie.setMaxAge(house * 60 * 60);
		cookie.setPath("/");
		response.addCookie(cookie);
		return cookie;
	}
	
	public void remove(String name) {
		Cookie[] cookie = request.getCookies();
		if (cookie != null) {
			for (Cookie cookie2 : cookie) {
				if (cookie2.getName().equals(name)) {
					cookie2.setMaxAge(0);
				}
			}
		}
	}
}
