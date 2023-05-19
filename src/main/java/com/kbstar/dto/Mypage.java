package com.kbstar.dto;

import lombok.*;
import org.springframework.web.multipart.MultipartFile;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Mypage {
    private String id;
    private String pwd;
    private String name;
    private String detail;
    private String email;
    private String contact;
    private String img;
    private String insta;
    private String facebook;
    private String mbti;
    private String com_sdate;
    private String digi_sdate;


    private MultipartFile imgfile;

    public Mypage(String id, String mbti, String com_sdate, String digi_sdate) {
        this.id = id;
        this.mbti = mbti;
        this.com_sdate = com_sdate;
        this.digi_sdate = digi_sdate;
    }
}
