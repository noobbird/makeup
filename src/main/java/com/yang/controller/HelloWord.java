package com.yang.controller;

public class HelloWord {
    public String name;
    public void setName(String name){
        this.name = name;
    }
    public void hello(){
        System.out.println("hello: " + name);
    }
}
