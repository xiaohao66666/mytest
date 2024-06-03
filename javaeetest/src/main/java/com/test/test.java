package com.test;

import com.Utils.SqlSessionUtil;
import com.bean.Clazz;
import com.bean.Data;
import com.bean.Student;
import com.bean.User;
import com.dao.ClassDao;
import com.dao.StudentDao;
import com.dao.UserDao;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class test {
    public static void main(String[] args) {
        SqlSession sqlSession = SqlSessionUtil.getSqlSession();
        StudentDao mapper = sqlSession.getMapper(StudentDao.class);
        int all = mapper.getAll();

        List<Student> students = mapper.page(0, 5);
        for (Student student : students) {
            System.out.println(student);
        }

    }
}
