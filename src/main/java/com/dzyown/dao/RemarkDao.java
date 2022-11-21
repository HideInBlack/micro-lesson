package com.dzyown.dao;

import com.dzyown.pojo.Remark;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 持久层 21点30分
 */
@Mapper
@Repository
public interface RemarkDao {

    //1.查询此课程的所有评论 2.查询此用户的对此课程的所有评论
    List<Remark> getAllNotesByRemark(Remark remark);

    //添加评论到此课程
    int addRemark(Remark remark);

    //删除评论
    int deleteRemark(Remark remark);

    //good评论
    int goodRemark(Remark noteCollect);

    //取消good此评论
    int NoGoogRemark(Remark noteCollect);
}
