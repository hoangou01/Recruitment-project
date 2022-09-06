/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hm.controllers;

import com.hm.pojo.CandidateJob;
import com.hm.service.CompanyService;
import com.hm.service.CurriculumVitaeService;
import com.hm.service.JobService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author ANHMINH
 */
@RestController
@RequestMapping("/api")
public class ApiAdminCheckController {
    @Autowired
    private CompanyService companyService;
    @Autowired
    private JobService jobService;
    @PostMapping(path = "/admin/manage/company", produces = {
        MediaType.APPLICATION_JSON_VALUE
    })
    public void checkCompany(@RequestBody Map<String, String> params){
        try{
            int companyID = Integer.parseInt(params.get("companyID"));
            this.companyService.checkCompany(companyID);
        }catch(Exception ex){
            ex.printStackTrace();
        }
    }
      @PostMapping(path = "/admin/manage/job", produces = {
        MediaType.APPLICATION_JSON_VALUE
    })
    public void checkJob(@RequestBody Map<String, String> params){
        try{
            int jobID = Integer.parseInt(params.get("jobID"));
            this.jobService.checkJob(jobID);
        }catch(Exception ex){
            ex.printStackTrace();
        }
    }
}
