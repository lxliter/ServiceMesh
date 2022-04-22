package cn.itcast.douban.pojo;

import lombok.Getter;
import lombok.Setter;
import org.neo4j.ogm.annotation.GeneratedValue;
import org.neo4j.ogm.annotation.Id;
import org.neo4j.ogm.annotation.NodeEntity;

@NodeEntity(label = "User") //标记为neo4j的节点对象
@Setter
@Getter
public class User {

    @Id
    @GeneratedValue
    private Long id;

    private Long userId; //用户编号

    private String name; //姓名
    private String logo; //头像

}
