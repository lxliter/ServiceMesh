package cn.lxl.douban.repository;

import cn.lxl.douban.pojo.Movie;
import org.springframework.data.neo4j.annotation.Query;
import org.springframework.data.neo4j.repository.Neo4jRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface MovieRepository extends Neo4jRepository<Movie, Long> {


    /**根据业务id查询数据
     *
     * @param movieId
     * @return
     */
    Movie findByMovieId(Long movieId);

    /**
     * 喜欢这部电影的人也喜欢
     *
     * @param movieId
     * @return
     */
    @Query("match (m:Movie) <-- (User) --> (x:Movie)\n" +
            "where m.movieId =  $movieId and m.movieId <> x.movieId\n" +
            "return x")
    List<Movie> commentMovie(@Param("movieId") Long movieId);
}
