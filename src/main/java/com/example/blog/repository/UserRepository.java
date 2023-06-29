package com.example.blog.repository;

import com.example.blog.dto.projection.UserPublic;
import com.example.blog.entity.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;
import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Integer> {
    List<User> findByRoles_NameIn(List<String> roles);

    Optional<User> findByEmail(String email);

    @Query(
            value = "select u from User u"
    )
    Page<UserPublic> findUsers(Pageable pageable);
}