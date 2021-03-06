package me.maweiyi.sword.model.dao;

import me.maweiyi.sword.model.entity.Content;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author MWY
 * @date 3/21/18
 */
@Repository
public interface ContentMapper {

    Integer insertContent(Content content);

    Integer findContentAll();

    List<Content> findRecentContent();

    List<Content> findContentPagination(Integer currentPage, Integer row);

    Content findContentById(Integer id);

    void updateContent(Content content);

    void deleteContent(Integer id);

}
