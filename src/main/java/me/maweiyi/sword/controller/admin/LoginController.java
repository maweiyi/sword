package me.maweiyi.sword.controller.admin;

import me.maweiyi.sword.controller.IndexController;
import me.maweiyi.sword.model.entity.Log;
import me.maweiyi.sword.service.LogService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @author MWY
 * @date 3/13/18
 */

@Controller
@RequestMapping("/admin/log")
public class LoginController {

    private static final Logger LOGGER = LoggerFactory.getLogger(IndexController.class);
    private static final String INDEX = "admin/login";

    @Autowired
    private LogService logService;

    @RequestMapping("/login")
    public String login() {
        return INDEX;
    }

    @RequestMapping("/recentlog")
    @ResponseBody
    public List<Log> findRecentLog() {
        return logService.findRecentLog();
    }
}
