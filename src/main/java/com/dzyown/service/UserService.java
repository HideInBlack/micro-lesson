package com.dzyown.service;





import com.dzyown.pojo.User;

import java.util.List;

/**
 * 业务层逻辑接口
 */
public interface UserService {
    //查询所有的user用户
    List<User> listUser();

    //核实登录
    User checkUserLogin(User user);

    //根据id查询用户
    User getUserById(int id);

    //用户注册
    int insertUser(User user);

    //修改个人信息
    int updateUser(User user);

    //个人详细信息的修改！
    int updateInfoUser(User user);
}
