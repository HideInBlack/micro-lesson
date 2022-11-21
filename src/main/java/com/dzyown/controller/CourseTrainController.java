package com.dzyown.controller;

import com.dzyown.pojo.CourseTrain;
import com.dzyown.service.CourseTrainService;
import com.dzyown.util.LayuiUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import java.util.List;
import java.util.Map;

@Controller
public class CourseTrainController {


    @Autowired
    CourseTrainService courseTrainService;

    //给此课程添加笔记
    @ResponseBody
    @RequestMapping(value="/addTrain")
    public Map<String, Object> addTrain(CourseTrain courseTrain) {

        courseTrain.setType("单选题");//目前系统只实现了单选题
        int result = courseTrainService.addCourseTrain(courseTrain);
        if (result>0){
            return LayuiUtil.setResultMap(0, "习题制作成功", "", 0);
        }else{
            return LayuiUtil.setResultMap(1, "发生错误，操作失败", "", 0);
        }
    }

    //获取此课程的所有习题
    @ResponseBody
    @RequestMapping(value="/getAllTrain")
    public Map<String, Object> getAllTrain(CourseTrain courseTrain) {

        List<CourseTrain> list = courseTrainService.getAllTrain(courseTrain);
        return LayuiUtil.setResultMap(0, "获取成功", list, list.size());

    }

    //修改习题
    @ResponseBody
    @RequestMapping(value="/updateTrain")
    public Map<String, Object> updateTrain(CourseTrain courseTrain) {

        int result = courseTrainService.updateTrain(courseTrain);
        if (result>0){
            return LayuiUtil.setResultMap(0, "操作成功", "", 0);
        }else{
            return LayuiUtil.setResultMap(1, "发生错误，操作失败", "", 0);
        }

    }


    //删除习题
    @ResponseBody
    @RequestMapping(value="/deleteTrain")
    public Map<String, Object> deleteTrain(CourseTrain courseTrain) {

        int result = courseTrainService.deleteTrain(courseTrain);
        if (result >0){
            return LayuiUtil.setResultMap(0, "移除成功", "",0);
        }else{
            return LayuiUtil.setResultMap(1, "请求出错，操作失败", "",0);
        }



    }

}
