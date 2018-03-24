package me.maweiyi.sword.service.impl;

import me.maweiyi.sword.model.dao.LogMapper;
import me.maweiyi.sword.model.entity.Log;
import me.maweiyi.sword.service.LogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author MWY
 * @date 3/24/18
 */
@Service
public class LogServiceImpl implements LogService {

    @Autowired
    private LogMapper logMapper;
    @Override
    public List<Log> findRecentLog() {

        return logMapper.findRecentLog();
    }
}
