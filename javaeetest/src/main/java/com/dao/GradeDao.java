package com.dao;

import com.bean.Grade;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface GradeDao {
    public List<Grade> findAll();
    public List<Grade> findByName(@Param("name") String name);
}
