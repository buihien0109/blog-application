package com.example.blog.repository;

import com.example.blog.dto.projection.CategoryPublic;
import com.example.blog.entity.Category;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;
import java.util.Optional;

public interface CategoryRepository extends JpaRepository<Category, Integer> {
    List<Category> findByIdIn(List<Integer> ids);

    Optional<Category> findByName(String name);

    @Query(
            value = "select c from Category c"
    )
    Page<CategoryPublic> findCategories(Pageable pageable);
}