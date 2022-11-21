package com.dzyown.service.impl;

import com.dzyown.dao.RemarkDao;
import com.dzyown.pojo.Remark;
import com.dzyown.service.RemarkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 业务层实现类
 */
@Service
public class RemarkServiceImpl implements RemarkService {

    @Autowired
    RemarkDao remarkDao;

    @Override
    public List<Remark> getAllNotesByRemark(Remark remark) {
        return remarkDao.getAllNotesByRemark(remark);
    }

    @Override
    public int addRemark(Remark remark) {
        return remarkDao.addRemark(remark);
    }

    @Override
    public int deleteRemark(Remark remark) {
        return remarkDao.deleteRemark(remark);
    }
}
