package cn.lxl.douban.service;

import cn.lxl.douban.pojo.Person;
import cn.lxl.douban.pojo.PersonResult;
import cn.lxl.douban.repository.PersonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import java.util.List;

@Service
public class PersonService {

    @Autowired
    private PersonRepository personRepository;

    public Person queryByPersonId(Long personId) {
        return this.personRepository.findByPersonId(personId);
    }

    public Object findTwoCooperationPerson(Long personId) {
        List<PersonResult> personResultList = this.personRepository.findTwoCooperationPerson(personId);
        if(CollectionUtils.isEmpty(personResultList)){
            return "";
        }

        StringBuilder sb = new StringBuilder();
        for (PersonResult personResult : personResultList) {
            sb.append("<li class=\"\">\n" +
                    "                                <div class=\"pic\">\n" +
                    "                                    <a href=\"/index?id="+personResult.getPersonId()+"\">\n" +
                    "                                        <img src=\"/image/movie/"+personResult.getLogo()+"\"/>\n" +
                    "                                    </a>\n" +
                    "                                </div>\n" +
                    "                                <div class=\"info\">\n" +
                    "                                    <a href=\"/index?id="+personResult.getPersonId()+"\">"+personResult.getName()+"</a>\n" +
                    "                                    <span class=\"pl\">合作作品("+personResult.getCount()+")</span>\n" +
                    "                                </div>\n" +
                    "                            </li>");
        }

        return sb.toString();
    }
}
