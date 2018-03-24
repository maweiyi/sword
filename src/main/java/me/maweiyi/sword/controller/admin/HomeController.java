package me.maweiyi.sword.controller.admin;

import me.maweiyi.sword.controller.IndexController;
import me.maweiyi.sword.model.entity.Content;
import me.maweiyi.sword.service.HomeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @author MWY
 * @date 3/13/18
 */
@Controller
@RequestMapping("/admin")
public class HomeController {
    private static final Logger LOGGER = LoggerFactory.getLogger(IndexController.class);
    private static final String INDEX = "admin/index";

    @Autowired
    private HomeService homeService;

    @RequestMapping("/home")
    public String home() {
        return INDEX;
    }

    @RequestMapping("/staticarticle")
    @ResponseBody
    public Integer staticArticle() {
        Integer articleNumber = null;
        try {
            articleNumber = homeService.findContent();
        } catch (Exception e) {
            LOGGER.error("统计文章数量错误！");
        }
        return articleNumber;
    }

    @RequestMapping("/recentcontent")
    @ResponseBody
    public List<Content> findRecentContent() {
        return homeService.findRecentContent();
    }
}
