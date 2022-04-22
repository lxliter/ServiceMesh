package cn.itcast.douban.controller;

import cn.itcast.douban.pojo.Person;
import cn.itcast.douban.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * 名人页
 */
@Controller
public class IndexController {

    @Autowired
    private PersonService personService;

    @RequestMapping("index")
    public ModelAndView index(@RequestParam(value = "id", defaultValue = "1274255") Long personId) {
        ModelAndView mv = new ModelAndView("index");

        //查询演员信息
        Person person = this.personService.queryByPersonId(personId);
        mv.addObject("person", person);

        //合作2次以上的人
        mv.addObject("personResultHtml", this.personService.findTwoCooperationPerson(personId));

        return mv;
    }
}