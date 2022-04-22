package cn.itcast.movie.service;

import cn.itcast.movie.pojo.Movie;
import cn.itcast.movie.repository.MovieRepository;
import cn.itcast.movie.vo.MovieResult;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MovieService {

    @Autowired
    private MovieRepository movieRepository;


    public MovieResult queryByMovieId(Long movieId) {
        MovieResult movieResult = new MovieResult();
        Movie movie = this.movieRepository.findByMovieId(movieId);

        //对象数据的拷贝
        BeanUtils.copyProperties(movie, movieResult);

        return movieResult;
    }

}