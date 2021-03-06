package cn.lxl.movie.controller;

import cn.lxl.movie.service.MovieService;
import cn.lxl.movie.vo.MovieResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MovieController {

    @Autowired
    private MovieService movieService;

    @RequestMapping("movie")
    public MovieResult index(@RequestParam(value = "id", defaultValue = "3742360") Long movieId) {
        return this.movieService.queryByMovieId(movieId);
    }
}