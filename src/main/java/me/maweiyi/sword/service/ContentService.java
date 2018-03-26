package me.maweiyi.sword.service;

import me.maweiyi.sword.model.entity.Content;

import java.util.List;

/**
 * @author MWY
 * @date 3/24/18
 */
public interface ContentService {

    Integer insertContent(Content content);

    List<Content> findContentPagination(Integer currentPage, Integer row);
}
