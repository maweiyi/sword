package me.maweiyi.sword;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * @author MWY
 * @date 3/13/18
 */

@Controller
public class ErrorController {

    @GetMapping("/404")
    public String notFound() {
        return "error/404";
    }
}
