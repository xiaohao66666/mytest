package com.dao;

import com.bean.Data;
import com.bean.Student;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StudentDao {
    public List<Student> findAll();
    public int add(@Param("name") String name,@Param("age") int age,@Param("sex") String sex ,@Param("major") String major,@Param("classId") int classId);
    public int update(@Param("id") int id,@Param("name") String name,@Param("age") int age,@Param("sex") String sex ,@Param("major") String major,@Param("classId") int classId);
    public int delete(@Param("id") int id);
    public List<Data> gettotal();
    public List<Student> findByName(@Param("name") String name);
    public List<Student> page(@Param("start") int start,@Param("end") int end);
    public int getAll();

}
