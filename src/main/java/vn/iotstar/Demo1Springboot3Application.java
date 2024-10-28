package vn.iotstar;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;

import vn.iotstar.configs.CustomSiteMeshFilter;

@SpringBootApplication
public class Demo1Springboot3Application {

	public static void main(String[] args) {
		SpringApplication.run(Demo1Springboot3Application.class, args);
	}
	
	 @Bean
	    public FilterRegistrationBean<CustomSiteMeshFilter> siteMeshFilter() {
	        FilterRegistrationBean<CustomSiteMeshFilter> filterRegistrationBean = new FilterRegistrationBean<>();
	        
	        filterRegistrationBean.setFilter(new CustomSiteMeshFilter()); // Thêm bộ lọc SiteMesh tùy chỉnh
	        filterRegistrationBean.addUrlPatterns("/*"); // Áp dụng cho tất cả các URL
	        
	        return filterRegistrationBean;
	    }

}
