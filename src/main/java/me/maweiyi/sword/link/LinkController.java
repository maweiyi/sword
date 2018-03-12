package me.maweiyi.sword.link;

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
@RequestMapping("/link")
public class LinkController {

    private static final Logger LOGGER = LoggerFactory.getLogger(IndexController.class);
    private static final String INDEX = "link/index";

    @RequestMapping("/index")
    public String index() {
        return INDEX;
    }
}
