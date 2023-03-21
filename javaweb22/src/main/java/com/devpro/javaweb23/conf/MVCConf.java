package com.devpro.javaweb23.conf;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;



//Bước số 2 khi tích một spring module vào spring-boot project đó là cấu hình module đó
//1. Báo cho spring biết đây là một file cấu hình
//2. Tạo ra một Bean(Object/Instance) của cấu hình này <=> MVCConf mvc = new MVCConf()
// sau đó instance đó sẽ được lưu vào trong spring-container (Kiểu dữ liêu List,Map)
@Configuration
public class MVCConf implements WebMvcConfigurer {
	
	//Sẽ được xử lý trước khi controller nhận ra được request.
	//Classpath: tương đương với thư mục src/main/resource.
	
	@Override
	public void addResourceHandlers(final ResourceHandlerRegistry registry) {
		
		//ERROR: http://localhost:8080/css/styles.css 404
		//bất cứ request nào có dạng: http://localhost:8080/css/thumuccon/dcf.css sẽ vào folder src/main/resources/css
		//classpath: = /src/main/resources
		registry.addResourceHandler("/css/**").addResourceLocations("classpath:/css/");
		
		//ERROR: http://localhost:8080/js/scripts.js 404
		//bất cứ request nào có dạng: http://localhost:8080/js/thumuccon/dcf.js sẽ vào folder src/main/resources/js
		registry.addResourceHandler("/js/**").addResourceLocations("classpath:/js/");		
		registry.addResourceHandler("/img/**").addResourceLocations("classpath:/img/");
		registry.addResourceHandler("/font/**").addResourceLocations("classpath:/font/");
		registry.addResourceHandler("/assets/**").addResourceLocations("classpath:/assets/");
		registry.addResourceHandler("/summernote-0.8.18-dist/**").addResourceLocations("classpath:/summernote-0.8.18-dist/");
		//Đăng ký thêm folder upload
		registry.addResourceHandler("/upload/**").addResourceLocations("file:" + "C:/upload/");		
	}

	//@Bean đang đc sd trên 1 method, khi spring nhận biết dc đây là 1 file cấu hình khi nó quét mà gặp
	//hàm bean, hàm bean này có kiểu class là ViewResolver
	@Bean
	public ViewResolver viewResolver() {

		// Class InternalResourceViewResolver implements ViewResolver
		InternalResourceViewResolver bean = new InternalResourceViewResolver();

		// thiết lập view engine
		bean.setViewClass(JstlView.class);

		// Đường dẫn thư mục gốc chưa view
		bean.setPrefix("/WEB-INF/views/"); //là thư mục gốc chứa VIew

		// cấu hình đuôi của view .jsp, trong file này chứa các mã html của FE
		bean.setSuffix(".jsp");

		return bean;

	}
	
}
