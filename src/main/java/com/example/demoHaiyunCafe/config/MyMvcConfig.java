package com.example.demoHaiyunCafe.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;


@Configuration
public class MyMvcConfig implements WebMvcConfigurer {
    @Value("${file.upload.relative-path}")
    private String fileRelativePath;

    //所有的WebMvcConfigurer组件都会一起起作用
    @Bean //将组件注册在容器
    public WebMvcConfigurer webMvcConfigurer() {
        WebMvcConfigurer configurer = new WebMvcConfigurer() {
            @Override
            public void addInterceptors(InterceptorRegistry registry) {
                registry.addInterceptor(new LoginInterceptor()).addPathPatterns("/**").excludePathPatterns("/regist", "/regist.html", "/login", "/login.html", "/",
                        "/img/**", "/css/**", "/js/**", "/webjars/**");
                WebMvcConfigurer.super.addInterceptors(registry);
                registry.addInterceptor(new AdminInterceptor()).addPathPatterns("/dashboard", "/item**", "/user**", "/upload");
            }

            @Override
            public void addViewControllers(ViewControllerRegistry registry) {
                registry.addViewController("/").setViewName("login");
                registry.addViewController("/login.html").setViewName("login");
                registry.addViewController("/regist.html").setViewName("regist");
                registry.addViewController("/index.html").setViewName("index");
                registry.addViewController("/checkout.html").setViewName("checkout");
            }

            @Override
            public void addResourceHandlers(ResourceHandlerRegistry registry) {
                //System.out.println("file:///"+System.getProperty("user.dir").replace("\\","//")+fileRelativePath.replace("/","//")+"//");
                registry.addResourceHandler("/upload/**").addResourceLocations("file:///" + System.getProperty("user.dir").replace("\\", "/") + fileRelativePath.replace("/", "//") + "//");
            }
        };

        return configurer;
    }

}