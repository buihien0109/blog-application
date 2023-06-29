package com.example.blog.security;

import com.example.blog.entity.User;
import org.springframework.security.core.Authentication;

public interface ICurrentUser {
    User getUser();
}
