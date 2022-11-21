package com.dzyown.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Course {

    private int id ;
    private String title ;
    private String info ;
    private String school;
    private String author;
    private String type ;
    private int uploadId;
    private String uploadTime;
    private int permission;
    private String path;
    private String coverPath;
    private String url ;
    private int studyingCount;
    private String memo ;
    private int del ;
    private String reason;


    /**
     * 正在学习课程的添加参数
     */
    private int learnId;//正在学习课程的id
}
