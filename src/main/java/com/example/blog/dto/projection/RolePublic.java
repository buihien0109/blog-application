package com.example.blog.dto.projection;

import com.example.blog.entity.Role;
import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.RequiredArgsConstructor;

public interface RolePublic {
    Integer getId();

    String getName();

    @RequiredArgsConstructor
    class RolePublicImpl implements RolePublic {
        @JsonIgnore
        private final Role role;

        @Override
        public Integer getId() {
            return this.role.getId();
        }

        @Override
        public String getName() {
            return this.role.getName();
        }
    }

    static RolePublic of(Role role) {
        return new RolePublicImpl(role);
    }
}
