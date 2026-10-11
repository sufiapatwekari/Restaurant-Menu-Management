package com.rt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rt.dao.ContactQueryDao;
import com.rt.entity.ContactQuery;

@Service
public class ContactQueryService {

    @Autowired
    private ContactQueryDao contactQueryDao;


    public int saveQuery(ContactQuery query) {

        return contactQueryDao.saveQuery(
                query
        );
    }


    public List<ContactQuery> getAllQueries(
            int adminId) {

        return contactQueryDao.getAllQueries(
                adminId
        );
    }


    public int updateQueryStatus(
            int queryId,
            String status,
            int adminId) {

        return contactQueryDao.updateQueryStatus(
                queryId,
                status,
                adminId
        );
    }


    public List<ContactQuery> getCustomerQueries(
            int customerId) {

        return contactQueryDao.getCustomerQueries(
                customerId
        );
    }
}