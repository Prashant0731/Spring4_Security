package com.yash.util;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class QuickPasswordEncodingGenerator {

	public static void main(String[] args) {
		String password = "abc125";
		
        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        System.out.println(passwordEncoder.encode(password));
        System.out.println("Test"+"\n"+"Ok");
	}

}
