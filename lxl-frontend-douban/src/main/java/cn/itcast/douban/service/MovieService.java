package cn.itcast.douban.service;

import cn.itcast.douban.pojo.Movie;
import cn.itcast.douban.repository.MovieRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import java.util.List;

@Service
public class MovieService {

    @Autowired
    private MovieRepository movieRepository;


    public Movie queryByMovieId(Long movieId) {
        return this.movieRepository.findByMovieId(movieId);
    }

    public String commentMovie(Long movieId){
        List<Movie> movieList = this.movieRepository.commentMovie(movieId);
        if(CollectionUtils.isEmpty(movieList)){
            return "";
        }

        StringBuilder sb = new StringBuilder();
        for (Movie movie : movieList) {
            sb.append("<dl class=\"\">\n" +
                    " <dt>\n" +
                    " <a href=\"/movie?id="+movie.getMovieId()+"\">\n" +
                    " <img src=\"/image/movie/"+movie.getPic()+"\"/>\n" +
                    " </a>\n" +
                    " </dt>\n" +
                    " <dd>\n" +
                    " <a href=\"/movie?id="+movie.getMovieId()+"\" class=\"\">"+movie.getTitle()+"</a>\n" +
                    " </dd>\n" +
                    " </dl>");
        }
        return sb.toString();
    }
}
