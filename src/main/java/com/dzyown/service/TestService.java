package com.dzyown.service;

import com.dzyown.pojo.Test;

import java.util.List;

/**
 * 业务层接口
 */
public interface TestService {
    //查询测试类
    public List<Test> listTest();
}
