package com.kbstar.marker;

import com.kbstar.dto.Marker;
import com.kbstar.service.MarkerService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class UpdateTest {
    @Autowired
    MarkerService service;

    @Test
    void contextLoads() throws Exception {
        Marker marker= new Marker (100002,"id002","C","botbotbot", 37.635227,127.010587,"kuk2.jpg",4,"하존맛");

        try {
            service.modify(marker);
            service.get(100002);
            log.info("수정 정상");
        } catch (Exception e) {
            log.info("수정 에러");
            e.printStackTrace();
        }
    }
}

