package com.example.blog.service;

import com.example.blog.entity.TokenConfirm;
import com.example.blog.repository.TokenConfirmRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

@Service
@AllArgsConstructor
public class TokenConfirmService {
    private final TokenConfirmRepository tokenConfirmRepository;

    public Map<String, Object> checkConfirmToken(String token) {
        Map<String, Object> info = new HashMap<>();
        // Kiểm tra token có hợp lệ hay không
        Optional<TokenConfirm> optionalTokenConfirm = tokenConfirmRepository.findByToken(token);
        if(optionalTokenConfirm.isEmpty()) {
            info.put("isValid", false);
            info.put("message", "Token không hợp lệ");
            return info;
        }
        // Kiểm tra token đã được kích hoạt hay chưa
        TokenConfirm tokenConfirm = optionalTokenConfirm.get();
        if(tokenConfirm.getConfirmedAt() != null) {
            info.put("isValid", false);
            info.put("message", "Token đã được kích hoạt");
            return info;
        }

        // Kiểm tra token đã hết hạn hay chưa
        if(tokenConfirm.getExpiredAt().isBefore(LocalDateTime.now())) {
            info.put("isValid", false);
            info.put("message", "Token đã hết hạn");
            return info;
        }

        tokenConfirm.setConfirmedAt(LocalDateTime.now());
        tokenConfirmRepository.save(tokenConfirm);
        info.put("isValid", true);
        return info;
    }
}
