package com.controllers;

import com.Utils.SqlSessionUtil;
import com.bean.Grade;
import com.dao.GradeDao;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/grade")
public class GradeController {
    @RequestMapping("/findAll")
    public String findAll(Model model)
    {
        SqlSession sqlSession = SqlSessionUtil.getSqlSession();
        GradeDao mapper = sqlSession.getMapper(GradeDao.class);
        List<Grade> grades = mapper.findAll();
        model.addAttribute("grades",grades);
        return "/grade.jsp";
    }
    @RequestMapping("/findByName")
    public String findByName(String name,Model model)
    {
        SqlSession sqlSession = SqlSessionUtil.getSqlSession();
        GradeDao mapper = sqlSession.getMapper(GradeDao.class);
        List<Grade> byName = mapper.findByName(name);
        model.addAttribute("grades",byName);
        return "/grade.jsp";
    }
}
