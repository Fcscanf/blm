package com.blm.bean;

import java.util.List;

/**
 * @author kris
 * @create 2019-05-29 19:27
 */
public class PageResult<T> {
    private long total;
    private List<T> rows;

    public PageResult(){

    }

    public PageResult(long total, List<T> rows) {
        this.total = total;
        this.rows = rows;
    }

    public long getTotal() {
        return total;
    }

    public void setTotal(long total) {
        this.total = total;
    }

    public List<T> getRows() {
        return rows;
    }

    public void setRows(List<T> rows) {
        this.rows = rows;
    }
}
