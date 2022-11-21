package com.dzyown.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Note {

    private int id ;
    private int courseId;
    private int userId;
    private String content;
    private String noteTime;
    private String memo;
    private int del;

    /**
     * 添加笔记作者名字
     */
    private String username;
    private int collect;//是否收藏
    private String title;
    private String coverPath;
    private String author;


}
