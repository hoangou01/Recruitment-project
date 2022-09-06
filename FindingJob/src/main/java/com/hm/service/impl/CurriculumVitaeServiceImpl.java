/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hm.service.impl;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.hm.pojo.Candidate;
import com.hm.pojo.CandidateJob;
import com.hm.pojo.CurriculumVitae;
import com.hm.pojo.Job;
import com.hm.repository.CandidateRepository;
import com.hm.repository.CurriculumVitaeRepository;
import com.hm.repository.JobRepository;
import com.hm.service.CurriculumVitaeService;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author ANHMINH
 */
@Service
public class CurriculumVitaeServiceImpl implements CurriculumVitaeService{
    @Autowired
    private CurriculumVitaeRepository curriculumVitaeRepository;
    @Autowired
    private CandidateRepository candidateRepository;
    @Autowired
    private JobRepository jobRepository;
    @Autowired
    private Cloudinary cloudinary;
    @Override
    public boolean addCV(CurriculumVitae cv) {
       try {
            Map r = this.cloudinary.uploader().upload(cv.getFile().getBytes(), ObjectUtils.asMap("resource_type", "auto"));
            cv.setCvLink((String)r.get("secure_url"));
            return this.curriculumVitaeRepository.addCV(cv);
        } catch (IOException ex) {
            ex.printStackTrace();
        }
       return false;
    }
    @Override
    public List<CurriculumVitae> getListCvForManage(int candidateID) {
        return this.curriculumVitaeRepository.getListCvForManage(candidateID);
    }

    @Override
    public boolean applyCV(CandidateJob cj) {
        cj.setAppliedDate(new Date());
        return this.curriculumVitaeRepository.applyCV(cj);
    }

    @Override
    public CandidateJob applyCV(int jobID, int candidateID, int cvID) {
        Job j = this.jobRepository.getNameJob(jobID);
        Candidate ca = this.candidateRepository.getCandidateByID(candidateID);
        CurriculumVitae cv =this.curriculumVitaeRepository.getCV(cvID);
        CandidateJob cj = new CandidateJob();
        cj.setCandidateID(ca);
        cj.setCvId(cv);
        cj.setJobID(j);
        cj.setIsApplied(1);
        cj.setAppliedDate(new Date());
        return this.curriculumVitaeRepository.apply(cj);
    }

    @Override
    public CandidateJob getApply(int jobID, int candidateID) {
        return curriculumVitaeRepository.getApply(jobID, candidateID);
    }

    @Override
    public void deleteCV(int cvID) {
        this.curriculumVitaeRepository.deleteCV(cvID);
    }
}
