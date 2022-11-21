package com.dzyown.controller;

import com.dzyown.pojo.Course;
import com.dzyown.pojo.MyCourse;
import com.dzyown.pojo.Note;
import com.dzyown.pojo.NoteCollect;
import com.dzyown.service.NoteService;
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
public class NoteController {

    @Autowired
    NoteService noteService;

    //给此课程添加笔记
    @ResponseBody
    @RequestMapping(value="/addNote")
    public Map<String, Object> addNote(Note note, HttpSession session) {

        //获取当前修改更新时间
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String time = (String) df.format(new Date());

        int userId = (int) session.getAttribute("loginUser");
        note.setUserId(userId);
        note.setNoteTime(time);

        //没有学习，添加到学习
        int result = noteService.addNote(note);
        if (result>0){
            return LayuiUtil.setResultMap(0, "笔记添加成功", "", 0);
        }else{
            return LayuiUtil.setResultMap(1, "发生错误，操作失败", "", 0);
        }

    }

    //获得此课程的我的笔记
    @ResponseBody
    @RequestMapping(value="/getMyNotes")
    public Map<String, Object> getMyNotes(Note note, HttpSession session) {

        int userId = (int) session.getAttribute("loginUser");
        note.setUserId(userId);
        List<Note> notes = noteService.getAllNotesByCourse(note);
        return LayuiUtil.setResultMap(0, "操作成功", notes, notes.size());


    }

    //获得此课程的我的笔记
    @ResponseBody
    @RequestMapping(value="/getMyAllNotes")
    public Map<String, Object> getMyAllNotes(HttpSession session) {

        int userId = (int) session.getAttribute("loginUser");
        List<Note> notes = noteService.getAllNotesUser(userId);
        return LayuiUtil.setResultMap(0, "操作成功", notes, notes.size());


    }

    //获得此课程的我的收藏的笔记
    @ResponseBody
    @RequestMapping(value="/getCollectNotes")
    public Map<String, Object> getCollectNotes(HttpSession session) {

        int userId = (int) session.getAttribute("loginUser");
        List<Note> notes = noteService.getCollectNotesUser(userId);
        return LayuiUtil.setResultMap(0, "操作成功", notes, notes.size());


    }

    //获得此课程的所有笔记
    @ResponseBody
    @RequestMapping(value="/getCourseNotes")
    public Map<String, Object> getCourseNotes(Note note, HttpSession session) {
        int userId = (int) session.getAttribute("loginUser");
        note.setDel(userId);//小瑕疵，利用del传数据
        note.setUserId(-1);
        List<Note> notes = noteService.getAllNotesByCourse(note);
        return LayuiUtil.setResultMap(0, "操作成功", notes, notes.size());


    }

    //删除笔记
    @ResponseBody
    @RequestMapping(value="/deleteNote")
    public Map<String, Object> deleteNote(Note note) {

        int result = noteService.deleteNote(note);
        if (result >0){
            return LayuiUtil.setResultMap(0, "删除成功", "",0);
        }else{
            return LayuiUtil.setResultMap(1, "请求出错，操作失败", "",0);
        }

    }

    //收藏笔记
    @ResponseBody
    @RequestMapping(value="/collectNote")
    public Map<String, Object> collectNote(NoteCollect noteCollect,HttpSession session) {
        //获取当前修改更新时间
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String time = (String) df.format(new Date());

        int userId = (int) session.getAttribute("loginUser");
        noteCollect.setUserId(userId);
        noteCollect.setCollectTime(time);
        int result = noteService.collectNote(noteCollect);
        if (result >0){
            return LayuiUtil.setResultMap(0, "成功收藏此笔记", "",0);
        }else{
            return LayuiUtil.setResultMap(1, "请求出错，操作失败", "",0);
        }

    }

    //取消收藏笔记
    @ResponseBody
    @RequestMapping(value="/noCollectNote")
    public Map<String, Object> noCollectNote(NoteCollect noteCollect ,HttpSession session) {

        int userId = (int) session.getAttribute("loginUser");
        noteCollect.setUserId(userId);
        int result = noteService.NoCollectNote(noteCollect);
        if (result >0){
            return LayuiUtil.setResultMap(0, "取消了收藏此笔记", "",0);
        }else{
            return LayuiUtil.setResultMap(1, "请求出错，操作失败", "",0);
        }

    }

}
