package bml.service;

import bml.entity.UserLogin;

/**
 * User: 月影
 * Date: 2019/12/10 11:32
 */
public interface UserService {

    UserLogin getpwdbyname(String name);

}
