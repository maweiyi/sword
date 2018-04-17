package me.maweiyi.sword.service;

import me.maweiyi.sword.model.entity.User;

public interface UserService {

    User findUserByName(String userName);
}
