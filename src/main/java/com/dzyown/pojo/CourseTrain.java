package com.dzyown.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CourseTrain {

    private int id;
    private int courseId;
    private String type;
    private String title;
    private String selection;
    private String answer;
    private String memo;
    private int del;
}
