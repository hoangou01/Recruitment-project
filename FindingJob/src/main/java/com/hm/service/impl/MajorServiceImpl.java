/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hm.service.impl;

import com.hm.pojo.Major;
import com.hm.repository.MajorRepository;
import com.hm.service.MajorService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author ANHMINH
 */
@Service
public class MajorServiceImpl implements MajorService {

    @Autowired
    private MajorRepository majorRepository;

    @Override
    public List<Major> getListMajor() {
        return this.majorRepository.getListMajor();
    }

    @Override
    public List<Object[]> getnameOfMajorByJob(int i) {

        return this.majorRepository.getnameOfMajorByJob(i);
    }

    @Override
    public Major getnameOfMajor(int majorId) {
        return this.majorRepository.getnameOfMajor(majorId);
    }
}
