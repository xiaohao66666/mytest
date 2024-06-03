package com.dao;

import com.bean.User;
import org.apache.ibatis.annotations.Param;

public interface UserDao {
    public User login(@Param("username") String username, @Param("password") String password);
    public int register(@Param("username") String username, @Param("password") String password);
}
