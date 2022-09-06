/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.hm.service;

import com.hm.pojo.Comment;

/**
 *
 * @author ANHMINH
 */
public interface CommentService {
    Comment addComment(String assessment, int companyID, int userID, int rating);
}
