package me.maweiyi.sword.controller.admin;

import com.fasterxml.jackson.databind.ser.Serializers;
import me.maweiyi.sword.controller.BaseController;
import me.maweiyi.sword.controller.IndexController;
import me.maweiyi.sword.model.entity.Content;
import me.maweiyi.sword.model.entity.Tags;
import me.maweiyi.sword.service.ContentTagService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

/**
 * @author MWY
 * @date 3/17/18
 */
@Controller
@RequestMapping("/editpage")
public class PublishPageController extends BaseController {

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
    public Map<String, Object> publishContent(@RequestBody Content content) {
        Map<String, Object> json = new HashMap<>();
        try {
            content.setUserId(1);
            content.setStatus("post");
            contentTagService.insertContentTag(content);
        } catch (Exception e) {
            System.out.println(e);
            LOGGER.error("插入文章内容以及标签错误");
            json = this.setJSON(false, "插入文章和标签错误", null);
            return json;
        }
        return this.setJSON(true, "插入成功", null);
    }
}
