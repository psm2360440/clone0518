package com.kbstar.dto;

import lombok.*;
import org.springframework.web.multipart.MultipartFile;


@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Anc {
    private int id;
    private String title;
    private String writer;
    private String contents;
    private String rdate;
    private String img;

    public Anc(int id, String title, String writer, String contents, String rdate, String img) {
        this.id = id;
        this.title = title;
        this.writer = writer;
        this.contents = contents;
        this.rdate = rdate;
        this.img = img;
    }

    private MultipartFile imgfile;
}