package com.rt.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.rt.entity.ContactQuery;

@Repository
public class ContactQueryDao {

    @Autowired
    private JdbcTemplate jdbcTemplate;


    // =====================================================
    // SAVE QUERY
    // =====================================================

    public int saveQuery(ContactQuery query) {

        String sql =
                "INSERT INTO contact_query "
              + "(customerId, adminId, subject, message, status) "
              + "VALUES (?, ?, ?, ?, ?)";

        return jdbcTemplate.update(
                sql,
                query.getCustomerId(),
                query.getAdminId(),
                query.getSubject(),
                query.getMessage(),
                query.getStatus()
        );
    }


    // =====================================================
    // ADMIN QUERIES
    // =====================================================

    public List<ContactQuery> getAllQueries(
            int adminId) {

        String sql =
                "SELECT * FROM contact_query "
              + "WHERE adminId=? "
              + "ORDER BY queryId DESC";

        return jdbcTemplate.query(
                sql,
                new BeanPropertyRowMapper<ContactQuery>(
                        ContactQuery.class
                ),
                adminId
        );
    }


    // =====================================================
    // UPDATE QUERY STATUS
    // =====================================================

    public int updateQueryStatus(
            int queryId,
            String status,
            int adminId) {

        String sql =
                "UPDATE contact_query SET status=? "
              + "WHERE queryId=? "
              + "AND adminId=?";

        return jdbcTemplate.update(
                sql,
                status,
                queryId,
                adminId
        );
    }


    // =====================================================
    // CUSTOMER QUERIES
    // =====================================================

    public List<ContactQuery> getCustomerQueries(
            int customerId) {

        String sql =
                "SELECT * FROM contact_query "
              + "WHERE customerId=? "
              + "ORDER BY queryId DESC";

        return jdbcTemplate.query(
                sql,
                new BeanPropertyRowMapper<ContactQuery>(
                        ContactQuery.class
                ),
                customerId
        );
    }
}