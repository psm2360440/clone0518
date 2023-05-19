package com.kbstar.mapper;

import com.github.pagehelper.Page;
import com.kbstar.dto.Anc;
import com.kbstar.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;


@Mapper
@Repository
public interface AncMapper extends KBMapper<Integer, Anc> {
    Page<Anc> getpage() throws Exception;
}
