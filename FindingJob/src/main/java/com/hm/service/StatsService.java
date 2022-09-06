/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hm.service;

import java.util.Date;
import java.util.List;

/**
 *
 * @author ANHMINH
 */
public interface StatsService {
    List<Object[]> getStatsJobApplyOfMajor();
    List<Object[]> getStatsJobOfMajor();
    List<Object[]> getStatsJobOfMajorByMonthYear(Date d1 , Date d2);
}
