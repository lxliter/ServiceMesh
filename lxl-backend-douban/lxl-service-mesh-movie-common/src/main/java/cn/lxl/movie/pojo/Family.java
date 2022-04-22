package cn.lxl.movie.pojo;

import lombok.Getter;
import lombok.Setter;
import org.neo4j.ogm.annotation.*;

@RelationshipEntity
@Getter
@Setter
public class Family {

    @Id
    @GeneratedValue
    private Long id;

    @StartNode //指定关系中的开始节点
    private Person startPerson;

    @EndNode //指定关系中的结束节点
    private Person endPerson;

    private String[] roles;
}