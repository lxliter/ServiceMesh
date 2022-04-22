package cn.itcast.movie.vo;

import lombok.Data;

/**
 * 编写微服务接口时，通过对Movie对象json序列化时，会出现循环引用问题，
 * 此类就是为了避免该问题，使用时需要进行对象属性值的拷贝
 */
@Data
public class MovieResult {

    private Long movieId; //影片编号
    private String title; //标题
    private String released; //上映日期: 2010-12-16(中国大陆)
    private String[] types; //类型，如：剧情 / 喜剧 / 动作 / 西部
    private String producerCountry; //制片国家/地区
    private String language; //语言
    private String timeLength; //132分钟
    private String alias; //又名: 让子弹飞一会儿 / 火烧云 / Let The Bullets Fly
    private String pic; //图片
    private String desc; //影片介绍

    private String formatDirectors;
    private String formatYear;
    private String formatWrotes;
    private String formatActedIns;
    private String formatTypes;
    private String formatComments;
    private String formatPersons;

}
