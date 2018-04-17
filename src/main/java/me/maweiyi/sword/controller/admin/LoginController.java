package me.maweiyi.sword.controller.admin;

import me.maweiyi.sword.controller.IndexController;
import me.maweiyi.sword.model.entity.Log;
import me.maweiyi.sword.model.entity.User;
import me.maweiyi.sword.service.LogService;
import me.maweiyi.sword.service.UserService;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @author MWY
 * @date 3/13/18
 */

@Controller
@RequestMapping("/admin")
public class LoginController {

    private static final Logger LOGGER = LoggerFactory.getLogger(IndexController.class);
    private static final String INDEX = "admin/login";

    @Autowired
    private LogService logService;

    @Autowired
    private UserService userService;

    @Autowired
    private RedisTemplate redisTemplate;


    @RequestMapping("/login")
    public String loginIndex() {
        return INDEX;
    }

    @RequestMapping(value="/login", method = RequestMethod.POST)
    public String login(HttpServletRequest request, @RequestParam(name = "userName") String userName, @RequestParam(name = "password") String password) {
        //对用户的登陆进行验证，如果验证通过则存储到redis
        if (StringUtils.isNoneBlank(userName) && StringUtils.isNoneBlank(password)) {
            User user = userService.findUserByName(userName);
            if (user != null) {
                if (userName.equals(user.getUsername()) && password.equals(user.getPassword())) {
                    HttpSession session = request.getSession();
                    session.setAttribute("name", user.getUsername());
                    return "/admin/home";
                }
            } else {
                return "/admin/login";
            }

        }
        return "/admin/login";

    }

    @RequestMapping("/logout")
    public String logout(HttpServletRequest request, SessionStatus sessionStatus) {
        request.getSession().removeAttribute("name");
        return "/admin/login";
    }

    @RequestMapping("/recentlog")
    @ResponseBody
    public List<Log> findRecentLog() {
        return logService.findRecentLog();
    }
}
