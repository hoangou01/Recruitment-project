/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.hm.repository;

import com.hm.pojo.User;
import java.util.List;

/**
 *
 * @author ANHMINH
 */
public interface UserRepository {

    boolean addUser(User user);
    List<User> getUsers(String username);
    List<User> getUsers(int userID);

}
