package me.maweiyi.sword.service;

import me.maweiyi.sword.model.entity.Content;
import me.maweiyi.sword.model.entity.ContentPagination;

import java.util.List;
import java.util.Map;

/**
 * @author MWY
 * @date 3/24/18
 */
public interface ContentService {

    Integer insertContent(Content content);

    ContentPagination findContentPagination(Integer currentPage, Integer row);

    Content findContentById(Integer id);
}
