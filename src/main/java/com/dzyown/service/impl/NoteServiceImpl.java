package com.dzyown.service.impl;

import com.dzyown.dao.NoteDao;
import com.dzyown.pojo.Note;
import com.dzyown.pojo.NoteCollect;
import com.dzyown.service.NoteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 业务层实现类
 */
@Service
public class NoteServiceImpl implements NoteService {



    @Autowired
    NoteDao noteDao;

    @Override
    public List<Note> getAllNotesByCourse(Note note) {
        return noteDao.getAllNotesByCourse(note);
    }

    @Override
    public List<Note> getAllNotesUser(int userId) {
        return noteDao.getAllNotesUser(userId);
    }

    @Override
    public List<Note> getCollectNotesUser(int userId) {
        return noteDao.getCollectNotesUser(userId);
    }

    @Override
    public int addNote(Note note) {
        return noteDao.addNote(note);
    }

    @Override
    public int deleteNote(Note note) {
        return noteDao.deleteNote(note);
    }

    @Override
    public int collectNote(NoteCollect noteCollect) {
        return noteDao.collectNote(noteCollect);
    }

    @Override
    public int NoCollectNote(NoteCollect noteCollect) {
        return noteDao.NoCollectNote(noteCollect);
    }
}
