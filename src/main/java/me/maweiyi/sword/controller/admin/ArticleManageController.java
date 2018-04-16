package me.maweiyi.sword.controller.admin;

import me.maweiyi.sword.controller.BaseController;
import me.maweiyi.sword.controller.IndexController;
import me.maweiyi.sword.model.dao.ContentMapper;
import me.maweiyi.sword.model.entity.Content;
import me.maweiyi.sword.model.entity.ContentPagination;
import me.maweiyi.sword.service.ContentService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author MWY
 * @date 3/25/18
 */

@Controller
@RequestMapping("/manage")
public class ArticleManageController extends BaseController {

    private static final Logger LOGGER = LoggerFactory.getLogger(IndexController.class);
    private static final String INDEX = "admin/article_manage";

    @Autowired
    private ContentService contentService;
    @RequestMapping("/index")
    public String manageindex() {
        return INDEX;
    }

    @RequestMapping("/search")
    @ResponseBody
    public ContentPagination paginationSearch(Integer pageSize, Integer pageNumber) {
            return contentService.findContentPagination((pageNumber - 1) * 10, pageSize);

    }

    @RequestMapping(value = "/delete", method = RequestMethod.DELETE)
    @ResponseBody
    public Map<String, Object> deleteContent(Integer id) {
        Map<String, Object> json = new HashMap<>();
        try {
            contentService.deleteContent(id);
            json = this.setJSON(true, "删除文章成功", null);
        } catch (Exception e) {
            LOGGER.error("删除文章失败");
            json = this.setJSON(false, "删除文章失败", null);
        }

        return json;
    }

}
