package com.example.blog;

import com.example.blog.entity.Role;
import com.example.blog.entity.User;
import com.example.blog.repository.RoleRepository;
import com.example.blog.repository.UserRepository;
import lombok.AllArgsConstructor;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.security.crypto.password.PasswordEncoder;

import java.util.List;
import java.util.Optional;

@SpringBootApplication
@AllArgsConstructor
public class BlogBackendApplication implements CommandLineRunner {
    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;
    private final RoleRepository roleRepository;

    public static void main(String[] args) {
        SpringApplication.run(BlogBackendApplication.class, args);
    }

    @Override
    public void run(String... args) throws Exception {
        String EMAIL_ROOT = "root@gmail.com";
        Optional<User> userOptional = userRepository.findByEmail(EMAIL_ROOT);
        if (userOptional.isEmpty()) {
            Role userRole = roleRepository.findByName("USER").orElse(null);
            Role adminRole = roleRepository.findByName("ADMIN").orElse(null);

            User root = new User(null, "Root Admin", EMAIL_ROOT, passwordEncoder.encode("111"), null, List.of(adminRole, userRole));
            userRepository.save(root);
        }
    }
}
