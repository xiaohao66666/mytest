package com.controllers;

import com.Utils.SqlSessionUtil;
import com.bean.Clazz;
import com.bean.Data;
import com.dao.ClassDao;
import com.dao.StudentDao;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/class")
public class ClassController {
    @RequestMapping("/gettotal")
    public String gettotal(Model model){
        SqlSession sqlSession = SqlSessionUtil.getSqlSession();
        StudentDao mapper = sqlSession.getMapper(StudentDao.class);
        List<Data> gettotal = mapper.gettotal();
        ClassDao mapper1 = sqlSession.getMapper(ClassDao.class);
        List<Clazz> classes = mapper1.findAll();
        for (int i = 0; i < gettotal.size(); i++) {
            classes.get(i).setTotal(gettotal.get(i).getTotal());
        }
        model.addAttribute("classes",classes);
        return "/class.jsp";
    }
}
