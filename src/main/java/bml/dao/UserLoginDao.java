package bml.dao;

import bml.entity.UserLogin;

/**
 * User: 月影
 * Date: 2019/12/10 11:27
 */
public interface UserLoginDao {

    UserLogin getpwdbyname(String name);

}
