/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.hm.repository;

import com.hm.pojo.CandidateJob;
import com.hm.pojo.CurriculumVitae;
import java.util.List;

/**
 *
 * @author ANHMINH
 */
public interface CurriculumVitaeRepository {
    boolean addCV(CurriculumVitae cv);
    List<CurriculumVitae> getListCvForManage(int candidateID);
    boolean applyCV(CandidateJob c);
    CurriculumVitae getCV(int cvID);
    CandidateJob apply(CandidateJob c);
    CandidateJob getApply(int candidateID, int jobID);
    void deleteCV(int cvID);
   
}
