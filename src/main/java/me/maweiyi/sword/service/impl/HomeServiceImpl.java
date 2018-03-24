package me.maweiyi.sword.service.impl;

import me.maweiyi.sword.model.dao.ContentMapper;
import me.maweiyi.sword.model.entity.Content;
import me.maweiyi.sword.service.HomeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * @author MWY
 * @date 3/21/18
 */
@Service
public class HomeServiceImpl implements HomeService {

    @Autowired
    private ContentMapper contentMapper;

    @Override
    public Integer findContent() {
        return contentMapper.findContentAll();
    }

    @Override
    public List<Content> findRecentContent() {
        return contentMapper.findRecentContent();
    }
}
