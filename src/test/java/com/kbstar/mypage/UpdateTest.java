package com.kbstar.mypage;

import com.kbstar.dto.Mypage;
import com.kbstar.service.MypageService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;


import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@Slf4j
@SpringBootTest
class UpdateTest {

    @Autowired
    MypageService service;

    @Test
    void contextLoads() throws ParseException {

//        String com_sdateString = "19/12/25";
//        String digi_sdateString = "19/12/25";
//
//        // SimpleDateFormat을 사용하여 문자열을 Date로 변환
//        SimpleDateFormat dateFormat = new SimpleDateFormat("yy/MM/dd");
//        Date com_sdate = dateFormat.parse(com_sdateString);
//        Date digi_sdate = dateFormat.parse(digi_sdateString);

        Mypage page = new Mypage("rlawls2422", "INFP", "191201", "191225");

        try {
            service.modify(page);
            log.info("update OK--------------------------------");
            service.get("rlawls2422");
        } catch (Exception e) {
            log.info("update error-----------------------------");
        }
    }
}





