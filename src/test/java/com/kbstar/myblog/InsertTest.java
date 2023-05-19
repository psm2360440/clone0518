package com.kbstar.myblog;

import com.kbstar.dto.Myblog;
import com.kbstar.dto.Study;
import com.kbstar.service.MyblogService;
import com.kbstar.service.StudyService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.Date;

@Slf4j
@SpringBootTest
class InsertTest {

    @Autowired
    MyblogService service;
    @Test
    void contextLoads() {
        Myblog myblog = new Myblog("rlawls2422","4번째 글","4번쨰 글");

        try {
            service.register(myblog);
            log.info("register OK--------------------------------");
        } catch (Exception e)  {
            e.printStackTrace();
            log.info("시스템 장애--------------------------------");
        }
    }

}
