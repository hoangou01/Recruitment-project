/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hm.controllers;

import com.hm.service.CompanyService;
import com.hm.service.JobService;
import com.hm.service.StatsService;
import java.security.Principal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author HP
 */
@Controller

public class AdminController {
    @Autowired
    private JobService jobservice;
    @Autowired
    private CompanyService companyService;
    @Autowired
    private StatsService statsservice;
    @GetMapping("/admin/manage")
    public String AdminView(Model model , @RequestParam(required = false) Map<String , String> params, Principal principal) throws ParseException{
//      
        if (principal == null) {
            return "redirect:/login";
        }
        model.addAttribute("listJobCheck", this.jobservice.getListJobByCheckAdmin());
        model.addAttribute("listCompanyCheck", this.companyService.getListCompanyByCheckAdmin());
        model.addAttribute("statsJobMajorA", this.statsservice.getStatsJobApplyOfMajor());
        model.addAttribute("statsJobMajor", this.statsservice.getStatsJobOfMajor());
        
//        model.addAttribute("statsJobMajorBydate", this.statsservice.getStatsJobOfMajorByMonthYear(fD, TD));
        return "admin_page";
    }
}
