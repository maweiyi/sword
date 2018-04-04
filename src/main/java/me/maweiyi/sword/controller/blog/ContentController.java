package me.maweiyi.sword.controller.blog;

import me.maweiyi.sword.controller.IndexController;
import me.maweiyi.sword.model.dao.ContentMapper;
import me.maweiyi.sword.model.entity.Content;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author MWY
 * @date 4/3/18
 */

@Controller
@RequestMapping("/content")
public class ContentController {

    private static final Logger LOGGER = LoggerFactory.getLogger(IndexController.class);
    private static final String INDEX = "blog/index";

    @Autowired
    private ContentMapper contentMapper;

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public ModelAndView contentIndex(Integer id) {
        ModelAndView mv = new ModelAndView();
        mv.setViewName(INDEX);
        mv.addObject("id", id);
        return mv;
    }

    @RequestMapping("/detail")
    @ResponseBody
    public Content blogDetail(Integer id) {
        return contentMapper.findContentById(id);
    }


}
