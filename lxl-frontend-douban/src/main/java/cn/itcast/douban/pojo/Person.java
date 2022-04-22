package cn.itcast.douban.pojo;

import lombok.Getter;
import lombok.Setter;
import org.apache.commons.lang3.StringUtils;
import org.neo4j.ogm.annotation.GeneratedValue;
import org.neo4j.ogm.annotation.Id;
import org.neo4j.ogm.annotation.NodeEntity;
import org.neo4j.ogm.annotation.Relationship;
import org.springframework.util.CollectionUtils;

import java.util.List;

@NodeEntity(label = "Person")
@Getter
@Setter
public class Person {

    @Id
    @GeneratedValue
    private Long id;

    private Long personId; //编号
    private String name; //姓名
    private String sex; //性别
    private String born; //出生日期: 1963-01-05
    private String birthCity; //出生地: 中国,河北,唐山
    private String[] ocupations; //职业: 演员 / 导演 / 制片人 / 编剧 / 配音
    private String foreignName; //外文名
    private String oldName; //曾用名
    private String logo;
    private String desc; //描述

    //指定关系
    @Relationship(type = "ACTED_IN")
    private List<ActedIn> actedIns;

    //导演关系
    @Relationship(type = "DIRECTED")
    private List<Movie> directedMovies;

    //写作关系
    @Relationship(type = "WROTE")
    private List<Movie> wroteMovies;

    //家庭成员关系
    @Relationship(type = "FAMILY")
    private List<Family> familyPersons;

    //格式化职业数据
    public String getFormatOcupations() {
        return StringUtils.join(this.ocupations, " / ");
    }

    //格式化家庭成员数据
    public String getFormatFamilyPersons() {
        StringBuilder sb = new StringBuilder();

        if (!CollectionUtils.isEmpty(this.familyPersons)) {
            for (Family familyPerson : this.familyPersons) {
                sb.append("<a href=\"/index?id=" + familyPerson.getEndPerson().getPersonId() + "\">");
                sb.append(familyPerson.getEndPerson().getName() + "</a>");
                sb.append("(" + familyPerson.getRoles()[0] + ") / ");
            }
        }

        return sb.toString();
    }

    //格式化参演或导演的电影数据
    public String getFormatMovies() {
        StringBuilder sb = new StringBuilder();

        //参演的电影
        if (!CollectionUtils.isEmpty(this.getActedIns())) {
            for (ActedIn actedIn : this.getActedIns()) {
                Movie movie = actedIn.getMovie();
                sb.append("<li class=\"\">\n" +
                        " <h3>" + StringUtils.substring(movie.getReleased(), 0, 4) + "</h3>\n" +
                        "  <div class=\"pic\">\n" +
                        "   <a href=\"/movie?id=" + movie.getMovieId() + "\">\n" +
                        "    <img src=\"/image/movie/" + movie.getPic() + "\"/>\n" +
                        "     </a>\n" +
                        "     </div>\n" +
                        "     <div class=\"info\">\n" +
                        "     <a href=\"/movie?id=" + movie.getMovieId() + "\" \n" +
                        "     class=\"\">" + movie.getTitle() + "</a>\n" +
                        "     <em>6.4</em>\n" +
                        "     </div>\n" +
                        "  </li>");
            }
        }

        //导演的电影
        if (!CollectionUtils.isEmpty(this.getDirectedMovies())) {
            for (Movie movie : this.getDirectedMovies()) {
                sb.append("<li class=\"\">\n" +
                        "  <h3>" + StringUtils.substring(movie.getReleased(), 0, 4) + "</h3>\n" +
                        "   <div class=\"pic\">\n" +
                        "     <a href=\"/movie?id=" + movie.getMovieId() + "\">\n" +
                        "       <img src=\"/image/movie/" + movie.getPic() + "\"/>\n" +
                        "     </a>\n" +
                        "   </div>\n" +
                        "   <div class=\"info\">\n" +
                        "   <a href=\"/movie?id=" + movie.getMovieId() + "\" \n" +
                        "     class=\"\">" + movie.getTitle() + "</a>\n" +
                        "   <em>6.4</em>\n" +
                        "   </div>\n" +
                        "  </li>");
            }
        }

        return sb.toString();
    }

}
