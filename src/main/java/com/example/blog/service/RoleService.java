package com.example.blog.service;

import com.example.blog.dto.projection.RolePublic;
import com.example.blog.entity.Role;
import com.example.blog.repository.RoleRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class RoleService {
    private final RoleRepository roleRepository;

    public List<RolePublic> getAllRole() {
        return roleRepository.findAll()
                .stream()
                .map(role -> RolePublic.of(role))
                .toList();
    }
}
