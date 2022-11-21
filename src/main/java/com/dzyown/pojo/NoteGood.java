package com.dzyown.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class NoteGood {


    private int id ;
    private int noteId;
    private int userId;
    private String goodTime;
    private String memo;
    private int del;

}
