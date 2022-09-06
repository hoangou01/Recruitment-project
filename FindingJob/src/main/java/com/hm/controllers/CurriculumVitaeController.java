/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hm.controllers;

import com.hm.pojo.CurriculumVitae;
import com.hm.pojo.Job;
import com.hm.pojo.User;
import com.hm.service.CandidateService;
import com.hm.service.CurriculumVitaeService;
import com.hm.service.UserService;
import java.security.Principal;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

/**
 *
 * @author ANHMINH
 */
@Controller
public class CurriculumVitaeController {


    @Autowired
    private CurriculumVitaeService curriculumVitaeService;
    @Autowired
    private UserService userDetailService;

    @GetMapping("/candidate/create-cv")
    public String creatCvView(Model model, Principal principal) {
        if(principal == null){
            return "login";
        }
        User u = this.userDetailService.getUserByUsername(principal.getName()).get(0);
        model.addAttribute("candidate", u.getCandidate());
        model.addAttribute("cv", new CurriculumVitae());
        return "createCV";
    }

    @PostMapping("/candidate/create-cv")
    public String creatCv(Model model, @ModelAttribute(value = "cv") @Valid CurriculumVitae cv, 
            BindingResult r) {
        if (r.hasErrors()) {
            return "createCV";
        }

        if (curriculumVitaeService.addCV(cv) ==true) {
            return ("index");
        }

        return "createCV";
    }

}
