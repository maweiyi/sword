package me.maweiyi.sword.model.dao;

import me.maweiyi.sword.model.entity.Log;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author MWY
 * @date 3/21/18
 */

@Repository
public interface LogMapper {

    List<Log> findRecentLog();
}
