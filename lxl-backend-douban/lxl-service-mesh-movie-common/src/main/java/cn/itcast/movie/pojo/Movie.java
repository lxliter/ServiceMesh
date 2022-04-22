package cn.itcast.movie.pojo;


import lombok.Getter;
import lombok.Setter;
import org.apache.commons.lang3.StringUtils;
import org.neo4j.ogm.annotation.GeneratedValue;
import org.neo4j.ogm.annotation.Id;
import org.neo4j.ogm.annotation.NodeEntity;
import org.neo4j.ogm.annotation.Relationship;
import org.springframework.util.CollectionUtils;

import java.util.List;

@NodeEntity(label = "Movie") //标记为neo4j的节点对象
@Setter
@Getter
public class Movie {

    @Id
    @GeneratedValue
    private Long id;

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

    @Relationship(type = "ACTED_IN", direction = Relationship.INCOMING)
    private List<ActedIn> actedIns; //演员

    @Relationship(type = "DIRECTED", direction = Relationship.INCOMING)
    private List<Person> directors; //导演

    @Relationship(type = "WROTE", direction = Relationship.INCOMING)
    private List<Person> wrotes; //编剧

    @Relationship(type = "COMMENT", direction = Relationship.INCOMING)
    private List<Comment> comments; //评论

    public String getFormatYear(){ //发行年份
        return StringUtils.substring(this.released, 0, 4);
    }

    public String getFormatDirectors(){ //导演信息
        if(CollectionUtils.isEmpty(this.directors)){
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (Person person : directors) {
            sb.append("<a href=\"/index?id="+person.getPersonId()+"\" rel=\"v:directedBy\">"+person.getName()+"</a> / ");
        }
        return sb.toString();
    }

    public String getFormatWrotes(){ //编剧信息
        if(CollectionUtils.isEmpty(this.wrotes)){
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (Person person : wrotes) {
            sb.append("<a href=\"/index?id="+person.getPersonId()+"\" rel=\"v:directedBy\">"+person.getName()+"</a> / ");
        }
        return sb.toString();
    }

    public String getFormatActedIns(){ //演员信息
        if(CollectionUtils.isEmpty(this.actedIns)){
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (ActedIn actedIn : this.actedIns) {
            Person person = actedIn.getPerson();
            sb.append("<a href=\"/index?id="+person.getPersonId()+"\" rel=\"v:directedBy\">"+person.getName()+"</a> / ");
        }
        return sb.toString();
    }

    public String getFormatTypes(){ //类型
        if(this.types == null){
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (String type : this.types) {
            sb.append("<span property=\"v:genre\">"+type+"</span> /");
        }
        return sb.toString();
    }

    public String getFormatComments(){ //网友评论
        if(CollectionUtils.isEmpty(this.comments)){
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (Comment comment : this.comments) {
            sb.append("<div class=\"comment-item\">\n" +
                    "\t<div class=\"comment\">\n" +
                    "\t\t<h3>\n" +
                    "\t\t\t<span class=\"comment-info\">\n" +
                    "\t\t\t\t<a href=\"https://www.douban.com/people/imagefly/\" class=\"\">"+comment.getUser().getName()+"</a>\n" +
                    "\t\t\t\t<span>看过</span><span class=\"allstar"+comment.getScore()+"0 rating\" title=\"推荐\"></span>\n" +
                    "\t\t\t\t<span class=\"comment-time \">"+comment.getDate()+"</span>\n" +
                    "\t\t\t</span>\n" +
                    "\t\t</h3>\n" +
                    "\t\t<p class=\"\">\n" +
                    "\t\t\t<span class=\"short\">"+comment.getDesc()+"</span>\n" +
                    "\t\t</p>\n" +
                    "\t</div>\n" +
                    "</div>");
        }
        return sb.toString();
    }

    //演职员列表
    public String getFormatPersons(){
        StringBuilder sb = new StringBuilder();
        if(!CollectionUtils.isEmpty(this.directors)){
            for (Person person : this.directors) {
                sb.append("<li class=\"celebrity\">\n" +
                        "\t<a href=\"/index?id="+person.getPersonId()+"\">\n" +
                        "\t\t<div class=\"avatar\" style=\"background-image: url(/image/movie/"+person.getLogo()+")\"></div>\n" +
                        "\t</a>\n" +
                        "\t<div class=\"info\">\n" +
                        "\t\t<span class=\"name\"><a href=\"/index?id="+person.getPersonId()+"\">"+person.getName()+"</a></span>\n" +
                        "\t\t<span class=\"role\" title=\"导演\">导演</span>\n" +
                        "\t</div>\n" +
                        "</li>");
            }
        }
        if(!CollectionUtils.isEmpty(this.actedIns)){
            for (ActedIn actedIn : this.actedIns) {
                Person person = actedIn.getPerson();
                sb.append("<li class=\"celebrity\">\n" +
                        "\t<a href=\"/index?id="+person.getPersonId()+"\">\n" +
                        "\t\t<div class=\"avatar\" style=\"background-image: url(/image/movie/"+person.getLogo()+")\"></div>\n" +
                        "\t</a>\n" +
                        "\t<div class=\"info\">\n" +
                        "\t\t<span class=\"name\"><a href=\"/index?id="+person.getPersonId()+"\">"+person.getName()+"</a></span>\n" +
                        "\t\t<span class=\"role\">饰 "+actedIn.getRoles()[0]+"</span>\n" +
                        "\t</div>\n" +
                        "</li>");
            }
        }
        return sb.toString();
    }
}
