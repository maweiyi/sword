package me.maweiyi.sword.service;

import me.maweiyi.sword.model.entity.Log;

import java.util.List;

/**
 * @author MWY
 * @date 3/24/18
 */
public interface LogService {

    List<Log> findRecentLog();
}
