package cn.itcast.movie.repository;

import cn.itcast.movie.pojo.Movie;
import org.springframework.data.neo4j.repository.Neo4jRepository;

public interface MovieRepository extends Neo4jRepository<Movie, Long> {


    /**根据电影id查询数据
     *
     * @param movieId
     * @return
     */
    Movie findByMovieId(Long movieId);

}