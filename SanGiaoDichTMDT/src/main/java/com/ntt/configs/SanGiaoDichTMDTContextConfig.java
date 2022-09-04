/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ntt.configs;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

/**
 *
 * @author trant
 */
@Configuration
@EnableWebMvc
@ComponentScan(basePackages = {
    "com.ntt.controllers"})
public class SanGiaoDichTMDTContextConfig implements WebMvcConfigurer {

    @Override
    public void configureDefaultServletHandling(DefaultServletHandlerConfigurer conf) {
        conf.enable();
    }

//    @Override
//    public void addResourceHandlers(ResourceHandlerRegistry registry) {
//        registry.addResourceHandler("/img/").addResourceLocations("/resources/images/");
//        registry.addResourceHandler("/css/").addResourceLocations("/resources/css/");
//        registry.addResourceHandler("/js/").addResourceLocations("/resources/js/");
//        registry.addResourceHandler("/assets/").addResourceLocations("/resources/assets/");
//        registry.addResourceHandler("/fonts/**").addResourceLocations("/resources/assets/fonts/");
//    }
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
        registry.addResourceHandler("/js/**").addResourceLocations("/resources/js/");
        registry.addResourceHandler("/css/**").addResourceLocations("/resources/css/");
    }
}
