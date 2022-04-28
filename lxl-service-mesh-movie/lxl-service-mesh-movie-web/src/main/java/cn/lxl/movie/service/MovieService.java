package cn.lxl.movie.service;

import cn.lxl.movie.vo.MovieResult;
import cn.lxl.movie.vo.RecommendMovie;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.type.CollectionType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.List;

@Service
public class MovieService {

    @Autowired
    private RestTemplate restTemplate;

    private static final ObjectMapper MAPPER = new ObjectMapper();

    private final static String SERVICES_DOMAIN = System.getenv("SERVICES_DOMAIN") == null ? "" : ("." + System.getenv("SERVICES_DOMAIN"));
    
    //info服务
    private final static String INFO_HOSTNAME = System.getenv("INFO_HOSTNAME") == null ? "movie-info" : System.getenv("INFO_HOSTNAME");
    private final static String INFO_URL = "http://" + INFO_HOSTNAME + SERVICES_DOMAIN + ":18082/movie";

    //recommend服务
    private final static String RECOMMEND_HOSTNAME = System.getenv("RECOMMEND_HOSTNAME") == null ? "movie-recommend" : System.getenv("RECOMMEND_HOSTNAME");
    private final static String RECOMMEND_URL = "http://" + RECOMMEND_HOSTNAME + SERVICES_DOMAIN + ":18083/movie/recommend";

    //rating服务
    private final static String RATING_HOSTNAME = System.getenv("RATING_HOSTNAME") == null ? "movie-rating" : System.getenv("RATING_HOSTNAME");
    private final static String RATING_URL = "http://" + RATING_HOSTNAME + SERVICES_DOMAIN + ":18084/movie/rating";
    
    public MovieResult queryByMovieId(Long movieId) {
        String jsonData = this.restTemplate.getForObject(INFO_URL + "?id=" + movieId, String.class);
        try {
            MovieResult movieResult = MAPPER.readValue(jsonData, MovieResult.class);
            return movieResult;
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        return null;
    }

    public String recommendMovie(Long movieId) {
        String jsonData = this.restTemplate.getForObject(RECOMMEND_URL + "?id=" + movieId, String.class);
        try {
            CollectionType javaType = MAPPER.getTypeFactory().constructCollectionType(List.class, RecommendMovie.class);
            List<RecommendMovie> recommendMovies = MAPPER.readValue(jsonData, javaType);

            StringBuilder sb = new StringBuilder();
            for (RecommendMovie movie : recommendMovies) {
                sb.append("<dl class=\"\">\n" +
                        " <dt>\n" +
                        " <a href=\"/index?id="+movie.getMovieId()+"\">\n" +
                        " <img src=\"/image/movie/"+movie.getPic()+"\"/>\n" +
                        " </a>\n" +
                        " </dt>\n" +
                        " <dd>\n" +
                        " <a href=\"/index?id="+movie.getMovieId()+"\" class=\"\">"+movie.getTitle()+"</a>\n" +
                        " </dd>\n" +
                        " </dl>");
            }
            return sb.toString();

        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        return null;
    }

    public String ratingMovie(Long movieId) {
        return this.restTemplate.getForObject(RATING_URL + "?id=" + movieId, String.class);
    }
}
