package cn.lxl.movie.service;

import cn.lxl.movie.pojo.Movie;
import cn.lxl.movie.repository.MovieRepository;
import cn.lxl.movie.vo.RecommendMovie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import java.util.ArrayList;
import java.util.List;

@Service
public class MovieService {

    @Autowired
    private MovieRepository movieRepository;


    public List<RecommendMovie> recommendMovies(Long movieId) {
        List<Movie> movieList = this.movieRepository.recommentMovie(movieId);
        if (CollectionUtils.isEmpty(movieList)) {
            return new ArrayList<>(0);
        }

        List<RecommendMovie> list = new ArrayList<>();
        for (Movie movie : movieList) {
            RecommendMovie recommendMovie = new RecommendMovie();
            recommendMovie.setMovieId(movie.getMovieId());
            recommendMovie.setPic(movie.getPic());
            recommendMovie.setTitle(movie.getTitle());

            list.add(recommendMovie);
        }

        return list;
    }

}