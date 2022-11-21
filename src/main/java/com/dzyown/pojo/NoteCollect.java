package com.dzyown.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class NoteCollect {

    private int id ;
    private int noteId;
    private int userId;
    private String collectTime;
    private String memo;
    private int del;

}
