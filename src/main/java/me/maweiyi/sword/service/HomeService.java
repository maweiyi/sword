package me.maweiyi.sword.service;

import me.maweiyi.sword.model.entity.Content;
import java.util.List;

/**
 * @author MWY
 * @date 3/21/18
 */
public interface HomeService {

    Integer findContent();

    List<Content> findRecentContent();
}
