package com.dzyown.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.web.servlet.MultipartConfigFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

import javax.servlet.MultipartConfigElement;

/**
 * 上传文件配置类
 */
@Configuration
public class WebAppConfig extends WebMvcConfigurerAdapter {

    /**
     * 在配置文件中配置的文件保存路径
     */
    @Value("${uploadPath.fileVideo}")
    private String fileVideoPath;

    @Bean
    public MultipartConfigElement multipartConfigElement(){
        MultipartConfigFactory factory = new MultipartConfigFactory();

        return factory.createMultipartConfig();
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        if(fileVideoPath.equals("") || fileVideoPath.equals("${uploadPath.fileVideo}")){
            String imagesPath = WebAppConfig.class.getClassLoader().getResource("").getPath();

            if(imagesPath.indexOf(".jar")>0){
                imagesPath = imagesPath.substring(0, imagesPath.indexOf(".jar"));
            }else if(imagesPath.indexOf("classes")>0){
                imagesPath = "file:"+imagesPath.substring(0, imagesPath.indexOf("classes"));
            }
            imagesPath = imagesPath.substring(0, imagesPath.lastIndexOf("/"))+"/images/";
            fileVideoPath = imagesPath;
        }
        registry.addResourceHandler("/images/**").addResourceLocations(fileVideoPath);
        // TODO Auto-generated method fileVideoPath

        super.addResourceHandlers(registry);
    }

}
