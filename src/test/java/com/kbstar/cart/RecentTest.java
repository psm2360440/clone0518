package com.kbstar.cart;

import com.kbstar.service.CartService;
import com.kbstar.service.MarkerService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class RecentTest {

    @Autowired
    MarkerService markerService;
    @Test
    void contextLoads() {
        try {
            markerService.getRecent();
        } catch (Exception e) {
            log.info("select error-----------------------------");
            e.printStackTrace();
        }
        }
    }

