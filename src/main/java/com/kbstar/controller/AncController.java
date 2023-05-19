package com.kbstar.controller;

import com.github.pagehelper.PageInfo;
import com.kbstar.dto.Anc;
import com.kbstar.service.AncService;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;



@Slf4j
@Controller
@RequestMapping("/anc")

public class AncController {
    @Value("${uploadimgdir}")
    String imgpath;

    @Autowired
    AncService ancService;

    String dir = "anc/";

    @RequestMapping("/allpage")
    public String allpage(@RequestParam(required = false, defaultValue = "1") int pageNo, Model model) throws Exception {
        PageInfo<Anc> p;
        try {
            p = new PageInfo<>(ancService.getPage(pageNo), 5);
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception();
        }
        model.addAttribute("cpage", p);
        model.addAttribute("target", "anc");
        model.addAttribute("center", dir + "allpage");
        return "index";
    }

    @RequestMapping("/detail")
    public String detail(Model model,Integer id) throws Exception {
        Anc anc = ancService.get(id);

        model.addAttribute("anc", anc);
        model.addAttribute("center", dir+"detail");
        return "index";
    }

}
