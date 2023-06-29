package com.example.blog.service;

import com.example.blog.dto.projection.UserPublic;
import com.example.blog.entity.Image;
import com.example.blog.entity.Role;
import com.example.blog.entity.User;
import com.example.blog.exception.BadRequestException;
import com.example.blog.exception.NotFoundException;
import com.example.blog.repository.RoleRepository;
import com.example.blog.repository.UserRepository;
import com.example.blog.request.CreateUserRequest;
import com.example.blog.request.UpdateUserRequest;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Service
@AllArgsConstructor
public class UserService {
    private final UserRepository userRepository;
    private final RoleRepository roleRepository;
    private final ImageService imageService;
    private final PasswordEncoder passwordEncoder;

    public Page<UserPublic> getAllUser(Integer page, Integer pageSize) {
        Page<UserPublic> pageInfo = userRepository.findUsers(PageRequest.of(page - 1, pageSize));
        return pageInfo;
    }

    // Lấy chi tiết user theo id
    public UserPublic getUserById(Integer id) {
        User user = userRepository.findById(id).orElseThrow(() -> {
            throw new NotFoundException("Not found user with id = " + id);
        });

        return UserPublic.of(user);
    }

    // Tạo user
    public UserPublic createUser(CreateUserRequest request) {
        if (userRepository.findByEmail(request.getEmail()).isPresent()) {
            throw new BadRequestException("Email = " + request.getEmail() + " is existed");
        }

        // List Role
        List<Role> roleList = roleRepository.findByIdIn(request.getRoleIds());

        User user = User.builder()
                .name(request.getName())
                .email(request.getEmail())
                .password(passwordEncoder.encode(request.getPassword()))
                .roles(roleList)
                .build();

        userRepository.save(user);
        return UserPublic.of(user);
    }

    // Cập nhật thông tin user
    public UserPublic updateUser(Integer id, UpdateUserRequest request) {
        User user = userRepository.findById(id).orElseThrow(() -> {
            throw new NotFoundException("Not found user with id = " + id);
        });

        // List Role
        List<Role> roleList = roleRepository.findByIdIn(request.getRoleIds());

        user.setName(request.getName());
        user.setRoles(roleList);

        userRepository.save(user);
        return UserPublic.of(user);
    }

    // Thay đổi avatar
    public Image uploadAvatar(Integer id, MultipartFile file) {
        User user = userRepository.findById(id).orElseThrow(() -> {
            throw new NotFoundException("Not found user with id = " + id);
        });

        // Upload file
        Image image = imageService.uploadFile(file);

        user.setAvatar("/api/v1/files/" + image.getId());
        userRepository.save(user);

        return image;
    }
}
