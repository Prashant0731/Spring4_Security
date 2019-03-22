package com.yash.dao;

import org.springframework.stereotype.Repository;

import com.yash.model.Todo;

@Repository("todoDao")
public class TodoDaoImpl extends AbstractDao<Integer, Todo> implements TodoDao{

    public void saveTodo(Todo todo) {
    	System.out.println("public void saveTodo(Todo todo) {} ");
    	persist(todo);
    }
}
