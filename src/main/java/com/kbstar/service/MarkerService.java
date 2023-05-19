package com.kbstar.service;

import com.kbstar.dto.Marker;
import com.kbstar.frame.KBService;
import com.kbstar.mapper.MarkerMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MarkerService implements KBService<Integer, Marker> {

    @Autowired
    MarkerMapper mapper;

    @Override
    public void register(Marker marker) throws Exception {
        mapper.insert(marker);
    }

    @Override
    public void remove(Integer k) throws Exception {
        mapper.delete(k);
    }

    @Override
    public void modify(Marker marker) throws Exception {
        mapper.update(marker);
    }

    @Override
    public Marker get(Integer k) throws Exception {
        return mapper.select(k);
    }

    @Override
    public List<Marker> get() throws Exception {
        return mapper.selectall();
    }

    public List<Marker> getMyMarker(String studentId){
        return mapper.getMyMarker(studentId);
    }

    public List<Marker> getKeyword(String keyword){
        return mapper.getKeyword(keyword);
    }

    public List<Marker> getRecent(){
        return mapper.getRecent();
    }

}
