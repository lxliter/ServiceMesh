package cn.lxl.douban.pojo;

import lombok.Getter;
import lombok.Setter;
import org.neo4j.ogm.annotation.*;

/**
 * 评论
 */
@RelationshipEntity(type = "COMMENT")
@Getter
@Setter
public class Comment {

    @Id
    @GeneratedValue
    private Long id;

    @StartNode //指定关系中的开始节点
    private User user;

    @EndNode //指定关系中的结束节点
    private Movie movie;

    private Integer score; //评分
    private String desc; //评论内容
    private String date; //评论时间
}