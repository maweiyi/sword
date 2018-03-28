package me.maweiyi.sword.controller.admin;

import me.maweiyi.sword.controller.IndexController;
import me.maweiyi.sword.model.dao.ContentMapper;
import me.maweiyi.sword.model.entity.Content;
import me.maweiyi.sword.model.entity.ContentPagination;
import me.maweiyi.sword.service.ContentService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @author MWY
 * @date 3/25/18
 */

@Controller
@RequestMapping("/manage")
public class ArticleManageController {

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
        System.out.println("AAAAA");
        System.out.println(pageNumber + " " + pageSize);
        return contentService.findContentPagination((pageNumber - 1) * 10, pageSize);
    }

}
