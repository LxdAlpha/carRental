package com.smart.test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.stereotype.Service;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by llxxdd on 2017/9/28.
 */
@Service
public class test1 {
    private test t;

    @Autowired
    public void setT(test t) {
        this.t = t;
    }

    public static void main(String[] args){

        DriverManagerDataSource ds = new DriverManagerDataSource();
        ds.setDriverClassName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        ds.setUrl("jdbc:sqlserver://122.114.6.58:1438;DatabaseName=JCRLZS");
        ds.setUsername("qdrwzs");
        ds.setPassword("quickdevtest");
        JdbcTemplate jdbcTemplate = new JdbcTemplate();
        jdbcTemplate.setDataSource(ds);
        String sql = "select count(*) from T1";
        jdbcTemplate.query(sql, new RowCallbackHandler() {
            public void processRow(ResultSet resultSet) throws SQLException {
                System.out.println(resultSet.getInt(1));
            }
        });

    }
}
