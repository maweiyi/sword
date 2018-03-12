package me.maweiyi.sword.controller.tag;

import me.maweiyi.sword.controller.IndexController;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author MWY
 * @date 3/12/18
 */
@Controller
@RequestMapping("/tag")
public class TagController {

    private static final Logger LOGGER = LoggerFactory.getLogger(IndexController.class);
    private static final String INDEX = "tag/index";

    @RequestMapping("/index")
    public String index() {
        return INDEX;
    }
}
