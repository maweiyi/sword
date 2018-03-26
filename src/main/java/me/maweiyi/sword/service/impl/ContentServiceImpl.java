package me.maweiyi.sword.service.impl;

import me.maweiyi.sword.model.dao.ContentMapper;
import me.maweiyi.sword.model.entity.Content;
import me.maweiyi.sword.service.ContentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author MWY
 * @date 3/24/18
 */
@Service
public class ContentServiceImpl implements ContentService {

    @Autowired
    private ContentMapper contentMapper;


    @Override
    public Integer insertContent(Content content) {
        return contentMapper.insertContent(content);
    }

    @Override
    public List<Content> findContentPagination(Integer currentPage, Integer row) {
        return contentMapper.findContentPagination(currentPage, row);
    }
}
