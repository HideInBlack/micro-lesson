package com.dzyown.dao;


import com.dzyown.pojo.User;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 用户持久层接口
 */
@Mapper
@Repository
public interface UserDao {

    //查询所有的user用户
    List<User> listUser();

    //根据email查询此用户是否存在
    User getUserByEmail(User user);

    //根据id查询此用户
    User getUserById(int id);

    //插入用户
    int insertUser(User user);

    //个人权限信息的修改！
    int updateUser(User user);

    //个人详细信息的修改！
    int updateInfoUser(User user);
}
