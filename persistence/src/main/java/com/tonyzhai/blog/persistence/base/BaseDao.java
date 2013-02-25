package com.tonyzhai.blog.persistence.base;import com.tonyzhai.blog.domain.base.domain.support.DataPage;import com.tonyzhai.blog.domain.base.domain.support.column.OrderBy;import org.hibernate.Criteria;/** * Base dao * * @author Tony Zhai * @since 13-2-24 PM5:17 */public interface BaseDao<T> {    void save(T entity);    void update(T entity);    T findById(Object id);    DataPage<T> pageQuery(Criteria criteria, int start, int size);    DataPage<T> pageQuery(Criteria criteria, int start, int size, OrderBy orderBy);}