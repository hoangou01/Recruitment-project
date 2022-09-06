/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hm.controllers;

import com.hm.pojo.Comment;
import com.hm.pojo.Company;
import com.hm.pojo.User;
import com.hm.service.CandidateService;
import com.hm.service.CompanyService;
import com.hm.service.JobService;
import com.hm.service.UserService;
import java.security.Principal;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author HP
 */
@Controller
public class CompanyController {
    
    @Autowired
    private CompanyService companyService;
    @Autowired
    private UserService userDetailService;
    @Autowired
    private JobService jobService;
    @Autowired
    private CandidateService candidateService;
    @GetMapping(value = "/register/company/info")
    public String registerCompanyView(Model model, @RequestParam(name = "ID", required = false) String ID, Principal principal) {
        if(principal != null)
            return "index";
        model.addAttribute("company", new Company());
        model.addAttribute("user", userDetailService.getUserByUserID(Integer.parseInt(ID)).get(0));
        return "company_register_info";
    }

    @PostMapping(value = "/register/company/info")
    public ModelAndView registerCompany(@ModelAttribute(value = "company") @Valid Company company,
            BindingResult r) {
        if (r.hasErrors()) {
            return new ModelAndView("company_register_info", "ID", company.getUserID().getId());
        }
        company.setIsChecked(0);
        if (companyService.addCompany(company) == true) {
            
            return new ModelAndView("login");
        }
        
        return new ModelAndView("company_register_info", "ID", company.getUserID().getId());
    }
    
    //hoang
// detail company    
     @GetMapping("/company-detail/{companyId}")
    public String companyDetailView(Model model ,@PathVariable(value = "companyId") int companyid, Principal principal) {
        
        model.addAttribute("listJob", this.jobService.getListJobByCompanyId(companyid));
        model.addAttribute("company", this.companyService.getDetailCompany(companyid));
        
        List<Comment> listComment = this.companyService.getDetailCompany(companyid).getCommentList();
        Collections.sort(listComment);
        model.addAttribute("listComment", listComment);
        if(principal != null)
            model.addAttribute("user", this.userDetailService.getUserByUsername(principal.getName()).get(0));
        
        return "company_detail";
    }
  

    //manage company
    @GetMapping("/company/manage")
    public String manageCompany(Model model , Principal principal){
        if (principal == null) {
            return "redirect:/login";
        }
        Company c = this.userDetailService.getUserByUsername(principal.getName()).get(0).getCompany();
        model.addAttribute("company", c);
        model.addAttribute("listC", this.candidateService.getListCandidateByCompany(c.getId()));
        model.addAttribute("listJ", this.jobService.getListJobForManageCompany(c.getId()));
        return "manage_company";
    }
}
