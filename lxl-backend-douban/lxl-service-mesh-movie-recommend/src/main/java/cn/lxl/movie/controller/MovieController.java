package cn.lxl.movie.controller;

import cn.lxl.movie.service.MovieService;
import cn.lxl.movie.vo.RecommendMovie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class MovieController {

    @Autowired
    private MovieService movieService;

    @RequestMapping("movie/recommend")
    public List<RecommendMovie> index(@RequestParam(value = "id", defaultValue = "3742360") Long movieId) {
        return this.movieService.recommendMovies(movieId);
    }
}