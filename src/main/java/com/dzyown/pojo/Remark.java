package com.dzyown.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Remark {

    private int id ;
    private int courseId;
    private int userId;
    private String content;
    private String remarkTime;
    private String memo;
    private int del;

    /**
     * 是否是我的评论me
     */
    private int me;
    private String username;
}
