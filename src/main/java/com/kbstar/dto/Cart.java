package com.kbstar.dto;

import lombok.*;


@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Cart {
    private Integer id;
    private String studentId;
    private Integer lectureId;
    private String rdate;


    private String student_name;
    private String lecture_title;
    private String lecture_topic;
    private int lecture_price;
    private String lecture_target;
    private String lecture_img;
    private int cnt;


    public Cart(Integer id, String studentId, Integer lectureId, String rdate) {
        this.id = id;
        this.studentId = studentId;
        this.lectureId = lectureId;
        this.rdate = rdate;
    }

    public Cart(String studentId, Integer lectureId) {
        this.studentId = studentId;
        this.lectureId = lectureId;
    }

    public Cart(Integer id, String studentId, Integer lectureId) {
        this.id = id;
        this.studentId = studentId;
        this.lectureId = lectureId;
    }
}
