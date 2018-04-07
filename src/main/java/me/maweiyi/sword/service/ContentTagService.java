package me.maweiyi.sword.service;

import me.maweiyi.sword.model.entity.Content;
import me.maweiyi.sword.model.entity.ContentTag;
import me.maweiyi.sword.model.entity.Tags;

/**
 * @author MWY
 * @date 3/25/18
 */
public interface ContentTagService {

    void insertContentTag(Content content);

    String findTagById(Integer id);

}
