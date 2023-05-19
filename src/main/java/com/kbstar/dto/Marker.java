package com.kbstar.dto;

import lombok.*;
import org.springframework.web.multipart.MultipartFile;


@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Marker {
    private int id;
    private String writer;
    private String keyword;
    private String title;
    private Double lat;
    private Double lng;
    private String img;
    private int star;
    private String detail;


    private MultipartFile imgfile;

    public Marker(int id, String writer, String keyword, String title, Double lat, Double lng, String img, int star, String detail) {
        this.id = id;
        this.writer = writer;
        this.keyword = keyword;
        this.title = title;
        this.lat = lat;
        this.lng = lng;
        this.img = img;
        this.star = star;
        this.detail = detail;
    }
}
