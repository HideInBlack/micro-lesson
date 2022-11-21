package com.dzyown.service.impl;


import com.dzyown.dao.TestDao;
import com.dzyown.pojo.Test;
import com.dzyown.service.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 业务层实现类
 */
@Service
public class TestServiceImpl implements TestService {

    //要带调用dao层，首先要注入dao
    @Autowired
    private TestDao testDao;

    @Override
    public List<Test> listTest() {
        return testDao.listTest();
    }
}
