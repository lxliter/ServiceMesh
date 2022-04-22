package cn.itcast.douban.pojo;

import lombok.Data;
import org.neo4j.ogm.annotation.Property;
import org.springframework.data.neo4j.annotation.QueryResult;

@QueryResult //标记这是一个查询结果对象
@Data
public class PersonResult {

    private Long personId;
    private String name;
    @Property("c")
    private Integer count;
    private String logo;

}
