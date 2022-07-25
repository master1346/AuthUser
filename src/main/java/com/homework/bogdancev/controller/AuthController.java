package com.homework.bogdancev.controller;

import com.homework.bogdancev.data.Role;
import com.homework.bogdancev.data.User;
import com.homework.bogdancev.repository.RolesRepository;
import com.homework.bogdancev.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import static com.homework.bogdancev.data.ERole.ROLE_USER;

@RestController
public class AuthController {

    private final UserRepository userRepository;
    private final RolesRepository rolesRepository;

    @Autowired
    public AuthController(UserRepository userRepository, RolesRepository rolesRepository){
        this.userRepository = userRepository;
        this.rolesRepository = rolesRepository;
    }

    @PostMapping("/registration")
    public String addUser(@RequestBody User user){
        User userFind = userRepository.findByUsername(user.getUsername());
        if(userFind != null){
            return "User already registration";
        }

        userRepository.save(user);
        rolesRepository.save(new Role(ROLE_USER));

        return "New user registration success";
    }


}
