package cn.lxl.movie.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@ComponentScan(basePackages = "cn.itcast")
@Configuration
public class MyConfig implements WebMvcConfigurer {

}