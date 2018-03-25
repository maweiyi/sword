package me.maweiyi.sword.model.dao;

import me.maweiyi.sword.model.entity.ContentTag;
import org.springframework.stereotype.Repository;

/**
 * @author MWY
 * @date 3/21/18
 */
@Repository
public interface ContentTagMapper {

    void insertContentTag(ContentTag contentTag);
}
