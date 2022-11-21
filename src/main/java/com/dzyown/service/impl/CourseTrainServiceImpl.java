package com.dzyown.service.impl;

import com.dzyown.dao.CourseTrainDao;
import com.dzyown.pojo.CourseTrain;
import com.dzyown.service.CourseTrainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CourseTrainServiceImpl implements CourseTrainService {

    @Autowired
    CourseTrainDao courseTrainDao;


    @Override
    public int addCourseTrain(CourseTrain courseTrain) {
        return courseTrainDao.addCourseTrain(courseTrain);
    }

    @Override
    public List<CourseTrain> getAllTrain(CourseTrain courseTrain) {
        return courseTrainDao.getAllTrain(courseTrain);
    }

    @Override
    public int updateTrain(CourseTrain courseTrain) {
        return courseTrainDao.updateTrain(courseTrain);
    }

    @Override
    public int deleteTrain(CourseTrain courseTrain) {
        return courseTrainDao.deleteTrain(courseTrain);
    }
}
