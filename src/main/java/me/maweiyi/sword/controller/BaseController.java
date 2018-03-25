package me.maweiyi.sword.controller;

import java.util.HashMap;
import java.util.Map;

/**
 * @author MWY
 * @date 3/24/18
 */
public class BaseController {

    protected Map<String, Object> setJSON(boolean success, String message, Object entity) {
        Map<String, Object> json = new HashMap<>();
        json.put("success", success);
        json.put("message", message);
        json.put("entity", entity);

        return json;
    }
}
