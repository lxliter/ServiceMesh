package cn.lxl.douban.repository;

import cn.lxl.douban.pojo.Person;
import cn.lxl.douban.pojo.PersonResult;
import org.springframework.data.neo4j.annotation.Query;
import org.springframework.data.neo4j.repository.Neo4jRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface PersonRepository extends Neo4jRepository<Person, Long> {

    /**
     * 根据personId查询Person对象
     *
     * @param personId
     * @return
     */
    Person findByPersonId(Long personId);

    /**
     * 查询合作2次以上的人
     *
     * @param personId
     * @return
     */
    @Query("match(n:Person) --> (m:Movie) <-- (x:Person)\n" +
            "where n.personId = $personId and n.name <> x.name\n" +
            "with x.name as name,x.personId as personId, x.logo as logo, count(x) as c\n" +
            "where c >=2 \n" +
            "return personId,name,c,logo")
    List<PersonResult> findTwoCooperationPerson(@Param("personId") Long personId);
}
