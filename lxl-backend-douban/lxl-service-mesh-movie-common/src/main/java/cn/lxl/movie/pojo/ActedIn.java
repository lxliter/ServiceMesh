package cn.lxl.movie.pojo;

import com.fasterxml.jackson.annotation.JsonBackReference;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.neo4j.ogm.annotation.*;

/**
 * 关系对象
 */
@RelationshipEntity(type = "ACTED_IN")
@Getter
@Setter
@NoArgsConstructor
public class ActedIn {

    @Id
    @GeneratedValue
    private Long id;

    @StartNode //指定关系中的开始节点
    private Person person;

    @JsonBackReference
    @EndNode //指定关系中的结束节点
    private Movie movie;

    private String[] roles;
}