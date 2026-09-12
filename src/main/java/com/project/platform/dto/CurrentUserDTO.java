package com.project.platform.dto;

import lombok.Data;

@Data
public class CurrentUserDTO {
    private Integer id;
    private String type;
    private String username;
    private String nickname;
    private String avatarUrl;
    private String tel;
    private String email;

    /**
     * 余额
     */
    private Float balance;

    /**
     * 名称（店铺）
     */
    private String name;
    /**
     * 资质（店铺）
     */
    private String aptitudeImgs;

}
