package com.dzyown.service;

import com.dzyown.pojo.ChartCourse;
import com.dzyown.pojo.ChartLearnCourse;
import com.dzyown.pojo.Course;
import com.dzyown.pojo.MyCourse;
import org.apache.ibatis.annotations.Param;


import java.util.List;

public interface CourseService {

    //添加课程
    int addCourse(Course course);

    //查询所有课程 1.根据热度查询，2.根据搜索查询 3.根据状态查询
    List<Course> getAllCourse(String hot, String keyWord, String check ,int userId);

    //类型type专栏
    List<Course> getCourseByType(String type);

    //修改课程信息 1.批准 2.拒绝 3.修改信息 根据memo改变
    int updateCourse(Course course);

    //删除课程信息
    int deleteCourse(Course course);

    //访问一个课程
    Course getOneCourse(int id);

    //课程的学习数自加1
    int addOneStudy(int id);

    //添加我要学习课程
    int addMyLearnCourse(MyCourse myCourse);

    //获取我正在学习的课程
    List<Course> getMyLearnCourse(int userId);

    //移除我要学习课程
    int deleteMyLearnCourse(MyCourse myCourse);

    //核实是否已对此课程进行学习
    MyCourse checkLearnCourse(MyCourse myCourse);

    //图表统计
    List<ChartCourse> chartCourse();

    //图表统计
    List<ChartLearnCourse> chartLearnCourse(int userId);

}
