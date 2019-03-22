package com.yash.service;

import java.util.List;

import com.yash.model.Todo;

public interface TodoService {

    public List<Todo> retrieveTodos(String user);
    
    public Todo retrieveTodo(int id);
    
    public void updateTodo(Todo todo);

    public void saveTodo(Todo todo);

    public void deleteTodo(int id);

}
