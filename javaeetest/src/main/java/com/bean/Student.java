package com.bean;

public class Student {
    private int id;
    private String name;
    private int age;
    private String sex;
    private String major;
    private int classId;


    public Student() {
    }

    public Student(int id, String name, int age, String sex, String major, int classId) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.sex = sex;
        this.major = major;
        this.classId = classId;
    }

    /**
     * 获取
     * @return id
     */
    public int getId() {
        return id;
    }

    /**
     * 设置
     * @param id
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * 获取
     * @return name
     */
    public String getName() {
        return name;
    }

    /**
     * 设置
     * @param name
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 获取
     * @return age
     */
    public int getAge() {
        return age;
    }

    /**
     * 设置
     * @param age
     */
    public void setAge(int age) {
        this.age = age;
    }

    /**
     * 获取
     * @return sex
     */
    public String getSex() {
        return sex;
    }

    /**
     * 设置
     * @param sex
     */
    public void setSex(String sex) {
        this.sex = sex;
    }

    /**
     * 获取
     * @return major
     */
    public String getMajor() {
        return major;
    }

    /**
     * 设置
     * @param major
     */
    public void setMajor(String major) {
        this.major = major;
    }

    /**
     * 获取
     * @return classId
     */
    public int getClassId() {
        return classId;
    }

    /**
     * 设置
     * @param classId
     */
    public void setClassId(int classId) {
        this.classId = classId;
    }

    public String toString() {
        return "Student{id = " + id + ", name = " + name + ", age = " + age + ", sex = " + sex + ", major = " + major + ", classId = " + classId + "}";
    }
}
