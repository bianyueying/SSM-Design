package bml.service.impl;

import bml.dao.UserLoginDao;
import bml.entity.UserLogin;
import bml.service.UserService;

import org.springframework.stereotype.Service;

/**
 * User: 月影
 * Date: 2019/12/10 11:33
 */
@Service
public class UserServiceImpl implements UserService {

    final UserLoginDao userLoginDao;
    public UserServiceImpl(UserLoginDao userLoginDao) {
        this.userLoginDao = userLoginDao;
    }

    @Override
    public UserLogin getpwdbyname(String name) {
        return userLoginDao.getpwdbyname(name);
    }
}
