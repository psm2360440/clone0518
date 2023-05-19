package com.kbstar.cart;

import com.kbstar.dto.Cart;
import com.kbstar.dto.Study;
import com.kbstar.service.CartService;
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
    CartService service;

    @Test
    void contextLoads() {

       Cart cart = new Cart(1003,"id001", 100020);
        try {
            service.register(cart);
            log.info("register OK--------------------------------");
        } catch (Exception e)  {
            e.printStackTrace();
            log.info("시스템 장애--------------------------------");
        }
    }

}
