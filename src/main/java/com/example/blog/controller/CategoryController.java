package com.example.blog.controller;

import com.example.blog.dto.projection.BlogPublic;
import com.example.blog.dto.projection.CategoryPublic;
import com.example.blog.request.UpsertCategoryRequest;
import com.example.blog.service.CategoryService;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@AllArgsConstructor
public class CategoryController {
    private final CategoryService categoryService;

    // Danh sách tất cả bài viết
    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @GetMapping("/admin/categories")
    public String getBlogPage(@RequestParam(required = false, defaultValue = "1") Integer page,
                              @RequestParam(required = false, defaultValue = "5") Integer pageSize,
                              Model model) {
        Page<CategoryPublic> pageInfo = categoryService.getAllCategory(page, pageSize);
        model.addAttribute("page", pageInfo);
        model.addAttribute("currentPage", page);
        return "admin/category/category-list";
    }

    // Danh sách API
    // 3. Tạo mới category
    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @PostMapping("api/v1/admin/categories")
    public ResponseEntity<?> createCategory(@RequestBody UpsertCategoryRequest request) {
        CategoryPublic category = categoryService.createCategory(request);
        return new ResponseEntity<>(category, HttpStatus.CREATED);
    }

    // 4. Cập nhật category
    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @PutMapping("api/v1/admin/categories/{id}")
    public ResponseEntity<?> updateCategory(@RequestBody UpsertCategoryRequest request, @PathVariable Integer id) {
        CategoryPublic category = categoryService.updateCategory(id, request);
        return ResponseEntity.ok(category);
    }

    // 5. Xóa category
    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @DeleteMapping("api/v1/admin/categories/{id}")
    public ResponseEntity<?> deleteCategory(@PathVariable Integer id) {
        categoryService.deleteCategory(id);
        return ResponseEntity.noContent().build();
    }
}
