package me.maweiyi.sword.controller.about;

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
@RequestMapping("/about")
public class AboutController {

    private static final Logger LOGGER = LoggerFactory.getLogger(IndexController.class);
    private static final String INDEX = "about/index";

    @RequestMapping("/index")
    public String about() {
        return INDEX;
    }
}
