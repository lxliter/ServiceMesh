package cn.lxl.movie.controller;

import cn.lxl.movie.service.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * 影片页
 */
@Controller
public class MovieController {

    @Autowired
    private MovieService movieService;

    @RequestMapping("index")
    public ModelAndView index(@RequestParam(value = "id", defaultValue = "3742360") Long movieId) {
        ModelAndView mv = new ModelAndView("index");

        //查询电影信息
        mv.addObject("movie", this.movieService.queryByMovieId(movieId));

        //电影推荐
        mv.addObject("recommendMovie", this.movieService.recommendMovie(movieId));

        //电影评分
        mv.addObject("ratingMovie", this.movieService.ratingMovie(movieId));

        return mv;
    }
}