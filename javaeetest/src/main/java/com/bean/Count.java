package com.bean;

public class Count {
    private int count;

    public Count() {
    }

    public Count(int count) {
        this.count = count;
    }

    /**
     * 获取
     * @return count
     */
    public int getCount() {
        return count;
    }

    /**
     * 设置
     * @param count
     */
    public void setCount(int count) {
        this.count = count;
    }

    public String toString() {
        return "Count{count = " + count + "}";
    }
}
