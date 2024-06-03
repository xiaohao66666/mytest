package com.bean;

public class Grade {
    private String name;
    private int math;
    private int english;
    private int computer;

    public Grade() {
    }

    public Grade(String name, int math, int english, int computer) {
        this.name = name;
        this.math = math;
        this.english = english;
        this.computer = computer;
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
     * @return math
     */
    public int getMath() {
        return math;
    }

    /**
     * 设置
     * @param math
     */
    public void setMath(int math) {
        this.math = math;
    }

    /**
     * 获取
     * @return english
     */
    public int getEnglish() {
        return english;
    }

    /**
     * 设置
     * @param english
     */
    public void setEnglish(int english) {
        this.english = english;
    }

    /**
     * 获取
     * @return computer
     */
    public int getComputer() {
        return computer;
    }

    /**
     * 设置
     * @param computer
     */
    public void setComputer(int computer) {
        this.computer = computer;
    }

    public String toString() {
        return "Grade{name = " + name + ", math = " + math + ", english = " + english + ", computer = " + computer + "}";
    }
}
