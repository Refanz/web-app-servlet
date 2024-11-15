package com.refanzzzz.dynamicwebapplication.src;

import com.refanzzzz.dynamicwebapplication.src.data.Data;

public class Auth {
    public static Boolean authLogin(String userId, String password) {
        return userId.equals(Data.USER_ID) && password.equals(Data.PASSWORD);
    }
}
