package cn.lxl.movie.service;

import cn.lxl.movie.pojo.Comment;
import cn.lxl.movie.pojo.Movie;
import cn.lxl.movie.repository.MovieRepository;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.List;
import java.util.Map;

@Service
public class MovieService {

    @Autowired
    private MovieRepository movieRepository;

    public String movieRating(Long movieId) {
        Movie movie = this.movieRepository.findByMovieId(movieId);
        List<Comment> commentList = movie.getComments();
        if(CollectionUtils.isEmpty(commentList)){
            return "";
        }

        int total = 0;
        for (Comment comment : commentList) {
            total+=comment.getScore() * 2;
        }

        //计算评分
        double score = total / commentList.size();

        //计算评分星级
        BigDecimal bg = new BigDecimal(score * 5).setScale(2, RoundingMode.UP);
        int i = bg.intValue();
        String bigstar = "bigstar";
        if(i % 5 ==0){
            bigstar += i;
        }else{
            bigstar += Math.round(i/10D)*10;
        }

        String v2Style = System.getenv("MOVIE_VERSION");
        if(StringUtils.equals(v2Style, "v2")){
            v2Style = "style=\"color: red;\"";
        }else{
            v2Style = "";
        }

        String html = "<div id=\"interest_sectl\">\n" +
                "\t<div class=\"rating_wrap clearbox\" rel=\"v:rating\">\n" +
                "\t\t<div class=\"clearfix\">\n" +
                "\t\t\t<div class=\"rating_logo ll\">黑马评分</div>\n" +
                "\t\t</div>\n" +
                "\t\t<div class=\"rating_self clearfix\" typeof=\"v:Rating\">\n" +
                "\t\t\t<strong class=\"ll rating_num\" property=\"v:average\" "+v2Style+">"+String.format("%.1f", score)+"</strong>\n" +
                "\t\t\t<span property=\"v:best\" content=\"10.0\"></span>\n" +
                "\t\t\t<div class=\"rating_right \">\n" +
                "\t\t\t\t<div class=\"ll bigstar "+bigstar+"\"></div>\n" +
                "\t\t\t\t<div class=\"rating_sum\">\n" +
                "\t\t\t\t\t<a href=\"collections\" class=\"rating_people\">\n" +
                "\t\t\t\t\t\t<span property=\"v:votes\">"+commentList.size()+"</span>人评价\n" +
                "\t\t\t\t\t</a>\n" +
                "\t\t\t\t</div>\n" +
                "\t\t\t</div>\n" +
                "\t\t</div>\n" +
                "\t</div>\n" +
                "</div>";

        return html;
    }

    public static void main(String[] args) {
        Map<String, String> map = System.getenv();
        map.forEach((s, s2) -> System.out.println(s +"  " + s2));
    }

}