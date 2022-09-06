/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hm.repository;

import com.hm.pojo.CandidateCompany;
import com.hm.pojo.Company;
import java.util.List;

/**
 *
 * @author HP
 */
public interface CompanyRepository {
    List<Object[]> getListCompany(int page);
    boolean addCompany(Company c);
    Company getDetailCompany(int companyId);
    Company getCompany(int companyId);
    List<Object[]> getListCompanyByCity(String city);
    // hoang
    List<Company> getListCompany();
    List<Company> getListCompanyByCheckAdmin();
   
    
    List<Object[]> getListCompanyBycityAndCompany(String  company , String city);
    List<Object[]> getListCompanyByCompany(String company);
    long countCompany();
    void checkCompany(int companyID);
    
    
}
