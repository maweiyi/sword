package me.maweiyi.sword.service.impl;

import me.maweiyi.sword.model.dao.TagsMapper;
import me.maweiyi.sword.service.TagsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author MWY
 * @date 3/25/18
 */
@Service
public class TagsServiceImpl implements TagsService {

    @Autowired
    private TagsMapper tagsMapper;

}
