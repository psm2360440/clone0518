package com.kbstar.mapper;

import com.kbstar.dto.Cart;
import com.kbstar.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface CartMapper extends KBMapper<Integer, Cart> {
    public List<Cart> getMyCart(String studentId);

    public Cart thisCart(Integer lectureId, String studentId);

    public Integer cntMyCart(String studentId);
}
