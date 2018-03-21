package me.maweiyi.sword.controller.admin;

import me.maweiyi.sword.controller.IndexController;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author MWY
 * @date 3/13/18
 */
@Controller
@RequestMapping("/admin")
public class HomeController {
    private static final Logger LOGGER = LoggerFactory.getLogger(IndexController.class);
    private static final String INDEX = "admin/index";

    @RequestMapping("/home")
    public String home() {
        return INDEX;
    }

    @RequestMapping("/staticarticle")
    public Integer staticArticle() {

    }
}
