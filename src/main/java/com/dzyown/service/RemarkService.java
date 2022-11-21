package com.dzyown.service;

import com.dzyown.pojo.Remark;

import java.util.List;

public interface RemarkService {

    //1.查询此课程的所有评论 2.查询此用户的对此课程的所有评论
    List<Remark> getAllNotesByRemark(Remark remark);

    //添加评论到此课程
    int addRemark(Remark remark);

    //删除评论
    int deleteRemark(Remark remark);
}
