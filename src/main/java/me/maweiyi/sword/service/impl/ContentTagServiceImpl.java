package me.maweiyi.sword.service.impl;

import me.maweiyi.sword.model.dao.ContentMapper;
import me.maweiyi.sword.model.dao.ContentTagMapper;
import me.maweiyi.sword.model.dao.TagsMapper;
import me.maweiyi.sword.model.entity.Content;
import me.maweiyi.sword.model.entity.ContentTag;
import me.maweiyi.sword.model.entity.Tags;
import me.maweiyi.sword.service.ContentService;
import me.maweiyi.sword.service.ContentTagService;
import me.maweiyi.sword.service.TagsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author MWY
 * @date 3/25/18
 */

@Service
public class ContentTagServiceImpl implements ContentTagService {

    @Autowired
    private ContentMapper contentMapper;

    @Autowired
    private TagsMapper tagsMapper;

    @Autowired
    private ContentTagMapper contentTagMapper;



    @Override
    @Transactional(rollbackFor = Exception.class)
    public void insertContentTag(Content content) {

        //先插入文章内容，然后返回id,再插入tag返回id,再插入content_tag
         contentMapper.insertContent(content);
         Tags tags = new Tags();
         tags.setTag(content.getTags());
         tagsMapper.insertTags(tags);
         ContentTag contentTag = new ContentTag();
         contentTag.setContent_id(content.getId());
         contentTag.setTag_id(tags.getId());
         contentTagMapper.insertContentTag(contentTag);
    }

    @Override
    public String findTagById(Integer id) {
        Integer tadId = contentTagMapper.findTagById(id);
        String tag = contentTagMapper.findTagNameById(tadId);
        return tag;
    }
}
