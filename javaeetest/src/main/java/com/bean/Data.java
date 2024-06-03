package com.bean;



public class Data {
    private int cId;
    private int total;

    public Data() {
    }

    public Data(int cId, int total) {
        this.cId = cId;
        this.total = total;
    }

    /**
     * 获取
     * @return cId
     */
    public int getCId() {
        return cId;
    }

    /**
     * 设置
     * @param cId
     */
    public void setCId(int cId) {
        this.cId = cId;
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

    public String toString() {
        return "data{cId = " + cId + ", total = " + total + "}";
    }
}
