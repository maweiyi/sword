package me.maweiyi.sword.service.impl;


import me.maweiyi.sword.model.dao.UsersMapper;
import me.maweiyi.sword.model.entity.User;
import me.maweiyi.sword.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UsersMapper usersMapper;

    @Override
    public User findUserByName(String userName) {
        return usersMapper.findUserByName(userName);
    }
}
