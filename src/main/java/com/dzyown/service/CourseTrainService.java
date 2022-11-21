package com.dzyown.service;

import com.dzyown.pojo.CourseTrain;

import java.util.List;

public interface CourseTrainService {

    //添加习题
    int addCourseTrain(CourseTrain courseTrain);

    //查询此课程的所有习题
    List<CourseTrain> getAllTrain(CourseTrain courseTrain);

    //修改习题
    int updateTrain(CourseTrain courseTrain);

    //删除习题
    int deleteTrain(CourseTrain courseTrain);
}
