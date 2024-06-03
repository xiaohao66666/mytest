package com.controllers;

import com.Utils.SqlSessionUtil;
import com.bean.User;
import com.dao.UserDao;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {
    @RequestMapping("/login")
    public String login(String username, String password,Model model)
    {
        SqlSession sqlSession = SqlSessionUtil.getSqlSession();
        UserDao mapper = sqlSession.getMapper(UserDao.class);
        User user = mapper.login(username, password);

        if(user!=null){
            model.addAttribute("user",user);
            return "/index.jsp";
        }
        else
        {
            return "redirect:/user_login.jsp";
        }
    }
    @RequestMapping("/register")
    public String register(String username, String password){
        SqlSession sqlSession = SqlSessionUtil.getSqlSession();
        UserDao mapper = sqlSession.getMapper(UserDao.class);
        int register = mapper.register(username, password);
        sqlSession.commit();
        if(register>0)
        {
            return "redirect:/user_login.jsp";
        }
        else
        {
            return "redirect:/user_register.jsp";
        }
    }
}
