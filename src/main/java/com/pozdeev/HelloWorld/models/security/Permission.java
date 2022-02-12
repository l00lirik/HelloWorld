package com.pozdeev.HelloWorld.models.security;

import org.springframework.security.core.authority.SimpleGrantedAuthority;

public enum Permission {
    USERS_READ("users:read"),
    USERS_CREATE("users:create"),
    USERS_UPDATE("users:update"),
    USERS_DELETE("users:delete"),
    TOKEN_REFRESH("token:refresh");

    private final String permission;

    Permission(String permission) {
        this.permission = permission;
    }

    public String getPermission() {
        return permission;
    }

    @Override
    public String toString() {
        return this.name() + " { " + "permission = " + permission + " }";
    }
}