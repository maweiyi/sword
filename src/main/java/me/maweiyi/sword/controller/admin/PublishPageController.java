package me.maweiyi.sword.controller.admin;

import me.maweiyi.sword.controller.IndexController;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author MWY
 * @date 3/17/18
 */
@Controller
@RequestMapping("/editpage")
public class PublishPageController {

    private static final Logger LOGGER = LoggerFactory.getLogger(IndexController.class);
    private static final String INDEX = "admin/publish_page";

    @RequestMapping("/index")
    public String index() {
        return INDEX;
    }
}
