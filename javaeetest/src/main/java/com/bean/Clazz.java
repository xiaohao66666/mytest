package com.bean;

public class Clazz {
    private int id;
    private String name;
    private int total;
    private String teacher;

    public Clazz() {
    }

    public Clazz(int id, String name, int total, String teacher) {
        this.id = id;
        this.name = name;
        this.total = total;
        this.teacher = teacher;
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
     * @return total
     */
    public int getTotal() {
        return total;
    }

    /**
     * 设置
     * @param total
     */
    public void setTotal(int total) {
        this.total = total;
    }

    /**
     * 获取
     * @return teacher
     */
    public String getTeacher() {
        return teacher;
    }

    /**
     * 设置
     * @param teacher
     */
    public void setTeacher(String teacher) {
        this.teacher = teacher;
    }

    public String toString() {
        return "Clazz{id = " + id + ", name = " + name + ", total = " + total + ", teacher = " + teacher + "}";
    }
}
