package me.maweiyi.sword.controller.archives;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author MWY
 * @date 3/11/18
 */
@Controller
@RequestMapping("/archives")
public class ArchivesIndex {

    @RequestMapping("/index")
    public String archivesIndex() {
        return "archives/index";
    }
}
