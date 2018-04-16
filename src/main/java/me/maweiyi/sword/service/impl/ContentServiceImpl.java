package me.maweiyi.sword.service.impl;

import me.maweiyi.sword.model.dao.ContentMapper;
import me.maweiyi.sword.model.entity.Content;
import me.maweiyi.sword.model.entity.ContentPagination;
import me.maweiyi.sword.service.ContentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
    public ContentPagination findContentPagination(Integer currentPage, Integer row) {
        ContentPagination contentPagination = new ContentPagination();
        contentPagination.setTotal(contentMapper.findContentAll());
        contentPagination.setRows(contentMapper.findContentPagination(currentPage, row));
        //return contentMapper.findContentPagination(currentPage, row);
        return contentPagination;

    }

    @Override
    public Content findContentById(Integer id) {
        return contentMapper.findContentById(id);
    }

    @Override
    public void updateContent(Content content) {
        contentMapper.updateContent(content);
    }

    @Override
    public void deleteContent(Integer id) {
        contentMapper.deleteContent(id);
    }
}
