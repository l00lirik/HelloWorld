package com.pozdeev.HelloWorld.models.system_entities;


public class AuthenticatedRefreshRequest {

    private String refreshToken;

    public AuthenticatedRefreshRequest() { }

    public AuthenticatedRefreshRequest(String refreshToken) {
        this.refreshToken = refreshToken;
    }

    public String getRefreshToken() {
        return refreshToken;
    }

    public void setRefreshToken(String refreshToken) {
        this.refreshToken = refreshToken;
    }
}
