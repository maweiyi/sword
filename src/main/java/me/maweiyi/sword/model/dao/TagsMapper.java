package me.maweiyi.sword.model.dao;

import me.maweiyi.sword.model.entity.Tags;
import org.springframework.stereotype.Repository;

/**
 * @author MWY
 * @date 3/21/18
 */

@Repository
public interface TagsMapper {

    Integer insertTags(Tags tags);
}
