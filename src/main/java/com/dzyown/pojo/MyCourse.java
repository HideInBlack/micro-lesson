package com.dzyown.pojo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MyCourse {

    private int id ;
    private int userId;
    private int courseId;
    private String startTime;
    private String memo;
    private int del;
}
