package com.kbstar.service;

import com.github.pagehelper.PageHelper;
import com.kbstar.dto.Anc;
import com.kbstar.frame.KBService;
import com.kbstar.mapper.AncMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AncService implements KBService<Integer, Anc> {

    @Autowired
    AncMapper mapper;

    @Override
    public void register(Anc anc) throws Exception {

    }

    @Override
    public void remove(Integer integer) throws Exception {

    }

    @Override
    public void modify(Anc anc) throws Exception {

    }

    @Override
    public Anc get(Integer k) throws Exception {
        return mapper.select(k);
    }

    @Override
    public List<Anc> get() throws Exception {
        return mapper.selectall();
    }

    public List<Anc> getPage(int pageNo) throws Exception {
        PageHelper.startPage(pageNo, 15); //한화면에 출력되는 개수
        return mapper.getpage();
    }

}
