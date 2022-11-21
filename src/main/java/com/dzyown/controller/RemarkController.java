package com.dzyown.controller;

import com.dzyown.pojo.Note;
import com.dzyown.pojo.Remark;
import com.dzyown.service.RemarkService;
import com.dzyown.util.LayuiUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
public class RemarkController {


    @Autowired
    RemarkService remarkService;

    //给此课程评论
    @ResponseBody
    @RequestMapping(value="/addRemark")
    public Map<String, Object> addRemark(Remark remark, HttpSession session) {

        //获取当前修改更新时间
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String time = (String) df.format(new Date());

        int userId = (int) session.getAttribute("loginUser");
        remark.setUserId(userId);
        remark.setRemarkTime(time);

        //没有学习，添加到学习
        int result = remarkService.addRemark(remark);
        if (result>0){
            return LayuiUtil.setResultMap(0, "评论成功", "", 0);
        }else{
            return LayuiUtil.setResultMap(1, "发生错误，操作失败", "", 0);
        }

    }

    //获得此课程的所有评论
    @ResponseBody
    @RequestMapping(value="/getCourseRemarks")
    public Map<String, Object> getCourseRemarks(Remark remark, HttpSession session) {
        int userId = (int) session.getAttribute("loginUser");
        remark.setDel(userId);//小瑕疵，利用del传数据
        remark.setUserId(-1);
        List<Remark> remarks = remarkService.getAllNotesByRemark(remark);
        return LayuiUtil.setResultMap(0, "操作成功", remarks, remarks.size());


    }

    //删除评论
    @ResponseBody
    @RequestMapping(value="/deleteRemarks")
    public Map<String, Object> deleteRemarks(Remark remark) {

        int result = remarkService.deleteRemark(remark);
        if (result >0){
            return LayuiUtil.setResultMap(0, "删除成功", "",0);
        }else{
            return LayuiUtil.setResultMap(1, "请求出错，操作失败", "",0);
        }

    }

}
