package com.example.blog.controller;

import com.example.blog.entity.User;
import com.example.blog.request.ChangePasswordRequest;
import com.example.blog.request.ForgotPasswordRequest;
import com.example.blog.request.LoginRequest;
import com.example.blog.security.ICurrentUser;
import com.example.blog.service.AuthService;
import com.example.blog.service.TokenConfirmService;
import jakarta.servlet.http.HttpSession;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
@AllArgsConstructor
@Slf4j
public class AuthController {
    private final AuthService authService;
    private final ICurrentUser iCurrentUser;
    private final TokenConfirmService tokenConfirmService;

    @GetMapping("/admin/login")
    public String getLoginPage() {
        User user = iCurrentUser.getUser();
        if(user != null) {
            return "redirect:/admin/blogs/own-blogs";
        }
        return "admin/util/login";
    }

    @GetMapping("/admin/forgot-password")
    public String getForgotPasswordPage() {
        User user = iCurrentUser.getUser();
        if(user != null) {
            return "redirect:/admin/blogs/own-blogs";
        }
        return "admin/util/forgot-password";
    }

    @GetMapping("/admin/change-password/{token}")
    public String getUpdatePasswordPage(@PathVariable String token, Model model) {
        model.addAttribute("info", tokenConfirmService.checkConfirmToken(token));
        model.addAttribute("token", token);
        return "admin/util/change-password";
    }

    @PostMapping("/api/v1/admin/auth/login")
    public ResponseEntity<?> login(@RequestBody LoginRequest request, HttpSession session) {
        return ResponseEntity.ok(authService.login(request, session));
    }

    @PostMapping("/api/v1/admin/auth/forgot-password")
    public ResponseEntity<?> forgotPassword(@RequestBody ForgotPasswordRequest request) {
        log.info("ForgotPasswordRequest : {}", request);
        authService.forgotPassword(request);
        return ResponseEntity.ok("Send mail success");
    }

    @PostMapping("/api/v1/admin/auth/change-password")
    public ResponseEntity<?> changePassword(@RequestBody ChangePasswordRequest request) {
        authService.changePassword(request);
        return ResponseEntity.ok("Send mail success");
    }
}
