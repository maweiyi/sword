package me.maweiyi.sword.controller.blog;

import me.maweiyi.sword.controller.IndexController;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public ModelAndView contentIndex(Integer id) {
        ModelAndView mv = new ModelAndView();
        mv.setViewName(INDEX);
        mv.addObject("id", id);
        return mv;
    }


}
