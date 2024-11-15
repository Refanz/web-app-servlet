package com.refanzzzz.dynamicwebapplication.src.data;

public enum Department {
    DEP_1("Dep 1"),
    DEP_2("Dep 2"),
    DEP_3("Dep 3");

    private final String name;

    Department(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }
}
