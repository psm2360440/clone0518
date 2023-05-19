package com.kbstar.service;

import com.kbstar.dto.Cart;
import com.kbstar.frame.KBService;
import com.kbstar.mapper.CartMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CartService implements KBService<Integer, Cart> {

    @Autowired
    CartMapper mapper;

    @Override
    public void register(Cart cart) throws Exception {
        mapper.insert(cart);
    }

    @Override
    public void remove(Integer k) throws Exception {
        mapper.delete(k);
    }

    @Override
    public void modify(Cart cart) throws Exception {
        mapper.update(cart);
    }

    @Override
    public Cart get(Integer k) throws Exception {
        return mapper.select(k);
    }

    @Override
    public List<Cart> get() throws Exception {
        return mapper.selectall();
    }

    public List<Cart> getMyCart(String studentId){
        return mapper.getMyCart(studentId);
    }

    public Cart thisCart(Integer lectureId, String studentId){
        return mapper.thisCart(lectureId, studentId);
    }

    public Integer cntMyCart(String studentId) {
        return mapper.cntMyCart(studentId);
    }

}
