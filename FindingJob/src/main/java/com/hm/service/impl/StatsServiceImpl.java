/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hm.service.impl;

import com.hm.repository.StatsRepository;
import com.hm.service.StatsService;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author ANHMINH
 */
@Service
public class StatsServiceImpl implements StatsService{
    @Autowired
    private StatsRepository statsrepository;

    @Override
    public List<Object[]> getStatsJobApplyOfMajor() {
        return this.statsrepository.getStatsJobApplyOfMajor();
    }

    @Override
    public List<Object[]> getStatsJobOfMajor() {
        return this.statsrepository.getStatsJobOfMajor();
    }

    @Override
    public List<Object[]> getStatsJobOfMajorByMonthYear(Date d1, Date d2) {
        return this.getStatsJobOfMajorByMonthYear(d1, d2);
    }
}
