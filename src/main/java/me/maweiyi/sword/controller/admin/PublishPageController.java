package me.maweiyi.sword.controller.admin;

import com.fasterxml.jackson.databind.ser.Serializers;
import me.maweiyi.sword.controller.BaseController;
import me.maweiyi.sword.controller.IndexController;
import me.maweiyi.sword.model.entity.Content;
import me.maweiyi.sword.model.entity.Tags;
import me.maweiyi.sword.service.ContentService;
import me.maweiyi.sword.service.ContentTagService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

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

    @Autowired
    private ContentService contentService;

    @RequestMapping("/index")
    public ModelAndView index(Integer id) {
        ModelAndView mv = new ModelAndView();
        mv.addObject("id", id);
        mv.setViewName(INDEX);
        return mv;

        /*if (id == null) {
            mv.addObject("title", null);
            mv.addObject("path", null);
            mv.addObject("tag", null);
            mv.addObject("content", null);
            return mv;

        } else {
            Content content = contentService.findContentById(id);
            mv.addObject("title", content.getTitle());
            mv.addObject("path", content.getPath());
            mv.addObject("tag", contentTagService.findTagById(id));
            mv.addObject("content", content.getContent());
            return mv;
        }*/

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
            LOGGER.error("插入文章内容以及标签错误");
            json = this.setJSON(false, "插入文章和标签错误", null);
            return json;
        }
        return this.setJSON(true, "插入成功", null);
    }

    @RequestMapping(value = "/content", method = RequestMethod.GET)
    @ResponseBody
    public Map<String, Object> getContentAndTag(Integer id) {
        Map<String, Object> map = new HashMap<>();
        Map<String, Object> json = new HashMap<>();

        try {
            Content content = contentService.findContentById(id);
            String tag = contentTagService.findTagById(id);
            map.put("content", content);
            map.put("tag", tag);
            json = this.setJSON(true, "返回内容成功", map);
        } catch (Exception e) {
            LOGGER.error("返回文章内容错误");
            json = this.setJSON(false, "返回文章内容错误", null);
            return json;
        }

        return json;
    }
}
