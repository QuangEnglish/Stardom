package com.devpro.javaweb23;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

//Annotation
//Nhận biết là 1 ứng dụng Spring Boot
@SpringBootApplication
public class JavaWeb23Starter {
	public static void main(String[] args) {
		//chạy ứng dụng Spring-boot với class StartServer
		SpringApplication.run(JavaWeb23Starter.class, args);
	}
}
