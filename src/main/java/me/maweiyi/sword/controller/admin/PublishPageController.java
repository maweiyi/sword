package me.maweiyi.sword.controller.admin;

import me.maweiyi.sword.controller.IndexController;
import me.maweiyi.sword.model.entity.Content;
import me.maweiyi.sword.model.entity.Tags;
import me.maweiyi.sword.service.ContentTagService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

/**
 * @author MWY
 * @date 3/17/18
 */
@Controller
@RequestMapping("/editpage")
public class PublishPageController {

    private static final Logger LOGGER = LoggerFactory.getLogger(IndexController.class);
    private static final String INDEX = "admin/publish_page";

    @Autowired
    private ContentTagService contentTagService;

    @RequestMapping("/index")
    public String index() {
        return INDEX;
    }

    @RequestMapping(value = "/publish", method = RequestMethod.POST)
    @ResponseBody
    public void publishContent(@RequestBody Content content) {
        try {
            content.setUser_id(1);
            content.setStatus("post");
            contentTagService.insertContentTag(content);
        } catch (Exception e) {
            System.out.println(e);
            LOGGER.error("插入文章内容以及标签错误");
        }
    }
}
