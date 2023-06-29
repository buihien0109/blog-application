package com.example.blog.controller;

import com.example.blog.dto.projection.BlogPublic;
import com.example.blog.dto.projection.CategoryWebPublic;
import com.example.blog.service.WebService;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@AllArgsConstructor
public class WebController {
    private final WebService webService;

    @GetMapping("/")
    public String getHome(Model model) {
        Page<BlogPublic> publicPage = webService.getAllBlog(0, 5);
        List<CategoryWebPublic> categoryList = webService.getTop5Category();

        model.addAttribute("page", publicPage);
        model.addAttribute("categoryList", categoryList);
        return "web/main";
    }

    @GetMapping("/page/{page}")
    public String getPageBlog(@PathVariable Integer page, Model model) {
        if(page.equals(1)) {
            return "redirect:/";
        }
        Page<BlogPublic> publicPage = webService.getAllBlog(page - 1, 5);
        List<CategoryWebPublic> categoryList = webService.getTop5Category();

        model.addAttribute("page", publicPage);
        model.addAttribute("categoryList", categoryList);
        model.addAttribute("currentPage", page);
        return "web/page";
    }

    @GetMapping("search")
    public String searchBlog() {
        return "web/search";
    }

    @GetMapping("categories")
    public String getAllCategory(Model model) {
        List<CategoryWebPublic> categoryList = webService.getAllCategory();
        model.addAttribute("categoryList", categoryList);
        return "web/tag";
    }

    @GetMapping("categories/{categoryName}")
    public String getBlogsOfCategory(@PathVariable String categoryName, Model model) {
        List<BlogPublic> blogList = webService.getBlogsOfCategory(categoryName);
        model.addAttribute("categoryName", categoryName);
        model.addAttribute("blogList", blogList);
        return "web/tagDetail";
    }

    @GetMapping("blogs/{blogId}/{blogSlug}")
    public String getBlogDetail(@PathVariable Integer blogId, @PathVariable String blogSlug, Model model) {
        BlogPublic blogPublic = webService.getBlogDetail(blogId, blogSlug);
        model.addAttribute("blog", blogPublic);
        return "web/blogdetail";
    }

    @GetMapping("/api/v1/public/blogs/search")
    public ResponseEntity<?> searchBlog(@RequestParam String term) {
        List<BlogPublic> blogPublicList = webService.searchBlog(term);
        return ResponseEntity.ok(blogPublicList);
    }
}
