package com.dzyown.dao;

import com.dzyown.pojo.Test;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 持久层
 */
@Mapper
@Repository
public interface TestDao {

    //查询测试类
    public List<Test> listTest();


}
