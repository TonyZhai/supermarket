package com.tonyzhai.blog.domain.base.domain.support.column;/** * Add some description * * @author Tony Zhai * @since 13-2-24 PM10:11 */public class OrderBy {    private String	columnName;    private OrderDirection orderDirection ;    public String getColumnName() {        return columnName;    }    public void setColumnName(String columnName) {        this.columnName = columnName;    }    public OrderDirection getOrderDirection() {        return orderDirection;    }    public void setOrderDirection(OrderDirection orderDirection) {        this.orderDirection = orderDirection;    }    public enum OrderDirection {        ASC, DESC;    }    public OrderBy() {        super();    }    public OrderBy(String columnName, OrderDirection orderDirection) {        super();        this.columnName = columnName;        this.orderDirection = orderDirection;    }}