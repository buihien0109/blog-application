package com.example.blog.security;

import com.example.blog.entity.User;
import com.example.blog.exception.NotFoundException;
import com.example.blog.repository.UserRepository;
import lombok.AllArgsConstructor;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;

@Component
@AllArgsConstructor
public class ICurrentUserImpl implements ICurrentUser {
    private final UserRepository userRepository;

    @Override
    public User getUser() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

        if (!(authentication instanceof AnonymousAuthenticationToken)) {
            return userRepository.findByEmail(authentication.getName())
                    .orElseThrow(() -> {
                        throw new NotFoundException("Not found user");
                    });
        }
        return null;
    }
}
