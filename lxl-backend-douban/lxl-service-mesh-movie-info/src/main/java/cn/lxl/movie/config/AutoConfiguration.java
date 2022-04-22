package cn.lxl.movie.config;

import lombok.Setter;
import org.springframework.boot.autoconfigure.data.neo4j.Neo4jProperties;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.neo4j.repository.config.EnableNeo4jRepositories;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@EnableNeo4jRepositories(basePackages = "cn.itcast.movie.repository")
@EntityScan("cn.itcast.movie.pojo") //配置实体扫描包
@EnableTransactionManagement //激活事务管理
@ConfigurationProperties(prefix = "spring.data.neo4j")
@Setter //设置set方法，如果不设置，值不会被注入
public class AutoConfiguration {

    private Integer connectionPoolSize;
    private Integer connectionLivenessCheckTimeout;


    /**
     * 自定义配置
     *
     * @param neo4jProperties
     * @return
     */
    @Bean
    public org.neo4j.ogm.config.Configuration configuration(Neo4jProperties neo4jProperties) {
        org.neo4j.ogm.config.Configuration.Builder builder = new org.neo4j.ogm.config.Configuration.Builder();
        builder.uri(neo4jProperties.getUri())
                .credentials(neo4jProperties.getUsername(), neo4jProperties.getPassword())
                .connectionPoolSize(connectionPoolSize)
                .connectionLivenessCheckTimeout(connectionLivenessCheckTimeout);

        return builder.build();
    }
}