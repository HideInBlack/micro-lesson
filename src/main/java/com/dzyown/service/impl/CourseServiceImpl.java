package com.dzyown.service.impl;

import com.dzyown.dao.CourseDao;
import com.dzyown.pojo.ChartCourse;
import com.dzyown.pojo.ChartLearnCourse;
import com.dzyown.pojo.Course;
import com.dzyown.pojo.MyCourse;
import com.dzyown.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 业务层实现类
 */
@Service
public class CourseServiceImpl implements CourseService {


    @Autowired
    CourseDao courseDao;

    @Override
    public int addCourse(Course course) {
        return courseDao.addCourse(course);
    }

    @Override
    public List<Course> getAllCourse(String hot, String keyWord, String check ,int userId) {
        return courseDao.getAllCourse(hot ,keyWord ,check ,userId);
    }

    @Override
    public List<Course> getCourseByType(String type) {
        return courseDao.getCourseByType(type);
    }

    @Override
    public int updateCourse(Course course) {
        return courseDao.updateCourse(course);
    }

    @Override
    public int deleteCourse(Course course) {
        return courseDao.deleteCourse(course);
    }

    @Override
    public Course getOneCourse(int id) {
        return courseDao.getOneCourse(id);
    }

    @Override
    public int addOneStudy(int id) {
        return courseDao.addOneStudy(id);
    }

    @Override
    public int addMyLearnCourse(MyCourse myCourse) {
        return courseDao.addMyLearnCourse(myCourse);
    }

    @Override
    public List<Course> getMyLearnCourse(int userId) {
        return courseDao.getMyLearnCourse(userId);
    }

    @Override
    public int deleteMyLearnCourse(MyCourse myCourse) {
        return courseDao.deleteMyLearnCourse(myCourse);
    }

    @Override
    public MyCourse checkLearnCourse(MyCourse myCourse) {
        return courseDao.checkLearnCourse(myCourse);
    }

    @Override
    public List<ChartCourse> chartCourse() {
        return courseDao.chartCourse();
    }

    @Override
    public List<ChartLearnCourse> chartLearnCourse(int userId) {
        return courseDao.chartLearnCourse(userId);
    }
}
