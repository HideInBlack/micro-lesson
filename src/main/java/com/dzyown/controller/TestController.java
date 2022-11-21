package com.dzyown.controller;


import com.dzyown.pojo.Test;
import com.dzyown.service.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

@RestController//这个是正常返回
public class TestController {


    /**
     * 这是mybatis测试整合
     */
    @Autowired//首先要注入业务层得接口调用！！！
    private TestService testService;

    @GetMapping("/listTest")
    public List<Test> listTest(){
        List<Test> list = testService.listTest();
        System.out.println(list);
        return list;
    }

    /**
     * 这是测试jdbc
     */
    @Autowired
    JdbcTemplate jdbcTemplate;

    @GetMapping("/testList")
    public List<Map<String,Object>> testList(){
        String sql = "select * from ml_test";
        List<Map<String,Object>> maps = jdbcTemplate.queryForList(sql);
        return maps;
    }

}
