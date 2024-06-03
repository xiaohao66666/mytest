package com.controllers;

import com.Utils.SqlSessionUtil;
import com.bean.Data;
import com.bean.Student;
import com.dao.StudentDao;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/student")
public class StudentController {
    @RequestMapping("/findAll")
    public String findAll(int start,int end,int size,Model model){
        SqlSession sqlSession = SqlSessionUtil.getSqlSession();
        StudentDao mapper = sqlSession.getMapper(StudentDao.class);
        int all = mapper.getAll();
        if(start<=0)
        {
            start=0;
        }
        if(end>=all)
        {
            end=all;
        }
        List<Student> students = mapper.page(start+size, end+size);
        model.addAttribute("start",start+size);
        model.addAttribute("end",end+size);
        model.addAttribute("students",students);
        return "/student.jsp";
    }
    @RequestMapping("/addStudent")
   public String addStudent(@Param("name") String name, @Param("age") int age, @Param("sex") String sex , @Param("major") String major, @Param("classId") int classId)
   {
       SqlSession sqlSession = SqlSessionUtil.getSqlSession();
       StudentDao mapper = sqlSession.getMapper(StudentDao.class);
       mapper.add(name,age,sex,major,classId);
       sqlSession.commit();
       return "redirect:/student/findAll";
   }
   @RequestMapping("/update")
   public String update(@Param("id") int id,@Param("name") String name,@Param("age") int age,@Param("sex") String sex ,@Param("major") String major,@Param("classId") int classId)
   {
       SqlSession sqlSession = SqlSessionUtil.getSqlSession();
       StudentDao mapper = sqlSession.getMapper(StudentDao.class);
       mapper.update(id,name,age,sex,major,classId);
       sqlSession.commit();
       return "redirect:/student/findAll";
   }
   @RequestMapping("/delete")
    public String delete(@Param("id") int id)
   {
       SqlSession sqlSession = SqlSessionUtil.getSqlSession();
       StudentDao mapper = sqlSession.getMapper(StudentDao.class);
       mapper.delete(id);
       sqlSession.commit();
       return "redirect:/student/findAll";
   }
   @RequestMapping("/findByName")
   public String findByName(@Param("name") String name,Model model)
   {
       SqlSession sqlSession = SqlSessionUtil.getSqlSession();
       StudentDao mapper = sqlSession.getMapper(StudentDao.class);
       List<Student> students = mapper.findByName(name);
       model.addAttribute("students",students);
       return "/student.jsp";
   }

}
