package com.yash.util;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class QuickPasswordEncodingGenerator {

	public static void main(String[] args) {
		String password = "abc125";
		String password1 ="prashant";
        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        System.out.println(passwordEncoder.encode(password));
        System.out.println(passwordEncoder.encode(password1));
        System.out.println("Test"+"\n"+"Ok");
	}

}
