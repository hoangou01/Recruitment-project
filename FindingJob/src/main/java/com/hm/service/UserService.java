/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.hm.service;

import com.hm.pojo.User;
import java.util.List;
import org.springframework.security.core.userdetails.UserDetailsService;

/**
 *
 * @author ANHMINH
 */
public interface UserService extends UserDetailsService {

    boolean addUser(User user);
    List<User> getUserByUsername(String username);
    List<User> getUserByUserID(int id);
}
