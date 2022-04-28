package cn.lxl.movie.repository;

import cn.lxl.movie.pojo.Movie;
import org.springframework.data.neo4j.annotation.Query;
import org.springframework.data.neo4j.repository.Neo4jRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface MovieRepository extends Neo4jRepository<Movie, Long> {


    /**
     * 喜欢这部电影的人也喜欢
     *
     * @param movieId
     * @return
     */
    @Query("match (m:Movie) <-- (User) --> (x:Movie)\n" +
            "where m.movieId =  $movieId and m.movieId <> x.movieId\n" +
            "return x")
    List<Movie> recommentMovie(@Param("movieId") Long movieId);

}