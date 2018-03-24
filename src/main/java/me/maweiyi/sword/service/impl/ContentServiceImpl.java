package me.maweiyi.sword.service.impl;

import me.maweiyi.sword.model.dao.ContentMapper;
import me.maweiyi.sword.model.entity.Content;
import me.maweiyi.sword.service.ContentService;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * @author MWY
 * @date 3/24/18
 */
public class ContentServiceImpl implements ContentService {

    @Autowired
    private ContentMapper contentMapper;


    @Override
    public void insertContent(Content content) {
        contentMapper.insertContent(content);
    }
}
