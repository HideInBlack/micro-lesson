package com.dzyown.dao;


import com.dzyown.pojo.Note;
import com.dzyown.pojo.NoteCollect;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 持久层
 */
@Mapper
@Repository
public interface NoteDao {

    //1.查询此课程的所有笔记 2.查询此用户的对此课程的所有笔记
    List<Note> getAllNotesByCourse(Note note);

    //查询登录用户的所有笔记
    List<Note> getAllNotesUser(@Param(value = "userId") int userId);

    //查询登录用户的所有收藏的笔记
    List<Note> getCollectNotesUser(@Param(value = "userId") int userId);

    //添加笔记到此课程
    int addNote(Note note);

    //删除笔记
    int deleteNote(Note note);

    //收藏笔记
    int collectNote(NoteCollect noteCollect);

    //取消收藏此笔记
    int NoCollectNote(NoteCollect noteCollect);



}
