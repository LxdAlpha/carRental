package com.smart.dao;

import com.smart.domain.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;

/**
 * Created by llxxdd on 2017/10/9.
 */
@Repository
public class Dao {
    private JdbcTemplate jdbcTemplate;

    public int insertMarchantsJoin(MerchantsJoin merchantsJoin){
        String sql = "insert into T480(F7890, F7891, F7892, F7893, F7894, F7895, F7896, F7897) values ("
                + "'" + merchantsJoin.getTheme() + "', "
                + "'" + merchantsJoin.getName() + "', "
                + "'" + merchantsJoin.getCompanyName() + "', "
                + "'" + merchantsJoin.getPhone() + "', "
                + "'" + merchantsJoin.getMobilePhone() + "', "
                + "'" + merchantsJoin.getEmail() + "', "
                + "'" + merchantsJoin.getQq() + "', "
                + "'" + merchantsJoin.getContent() + "'"
                +");";
        int result = jdbcTemplate.update(sql);
        return result;
    }

    public Collection getVehicleInformation(int pageIndex){
        String sql = "SELECT TOP 12 * FROM (SELECT F8124, F8125, F8126, F8127, ROW_NUMBER()OVER (ORDER BY T504Id) AS rownumber FROM T504) A WHERE rownumber > ("
                            + pageIndex + "-1)*12; ";
        final Collection vis = new ArrayList();
        jdbcTemplate.query(sql, new RowCallbackHandler() {
            public void processRow(ResultSet resultSet) throws SQLException {
                VehicleInformation vehicleInformation = new VehicleInformation();
                vehicleInformation.setName(resultSet.getString(1));
                vehicleInformation.setCategory(resultSet.getString(2));
                vehicleInformation.setReleaseTime(resultSet.getString(3));
                vehicleInformation.setImage(resultSet.getString(4));
                vis.add(vehicleInformation);
            }
        });
        return vis;
    }

    public int getVehicleInformationCount(int kind){
        String sql = null;
        if(kind == 0){
            sql = "SELECT count(*) from T504";
        }else{
            String temp = null;
            switch (kind){
                case 1:
                    temp = "轿车系列";
                    break;
                case 2:
                    temp = "婚庆系列";
                    break;
                case 3:
                    temp = "商务系列";
                    break;
                case 4:
                    temp = "旅游客车";
                    break;
                case 5:
                    temp = "港澳直通";
                    break;
                case 6:
                    temp = "礼宾车队";
                    break;
            }
            sql = "SELECT count(*) from T504 WHERE F8125 = '" + temp + "'";
        }
        return jdbcTemplate.queryForObject(sql, Integer.class);
    }

    public Collection getModelIntroduction(int models, int pageIndex){
        String sql = "SELECT TOP 12 * FROM (SELECT F8124, F8125, F8126, F8127, ROW_NUMBER()OVER (ORDER BY T504Id) AS rownumber FROM T504 WHERE F8125 = '";
        switch (models){
            case 1:
                sql = sql + "轿车系列' ";
                break;
            case 2:
                sql = sql + "婚庆系列' ";
                break;
            case 3:
                sql = sql + "商务系列' ";
                break;
            case 4:
                sql = sql + "旅游客车' ";
                break;
            case 5:
                sql = sql + "港澳直通' ";
                break;
            case 6:
                sql = sql + "礼宾车队' ";
                break;
        }
        sql = sql + ") A WHERE rownumber > (" + pageIndex + "-1)*12;";
        final Collection vis = new ArrayList();
        jdbcTemplate.query(sql, new RowCallbackHandler() {
            public void processRow(ResultSet resultSet) throws SQLException {
                VehicleInformation vehicleInformation = new VehicleInformation();
                vehicleInformation.setName(resultSet.getString(1));
                vehicleInformation.setCategory(resultSet.getString(2));
                vehicleInformation.setReleaseTime(resultSet.getString(3));
                vehicleInformation.setImage(resultSet.getString(4));
                vis.add(vehicleInformation);
            }
        });
        return vis;
    }

    public Collection getPriceTable(){
        String sql1 = "SELECT F8473, F8474, F8475, F8476, F8477, F8478, F8479, F8480 FROM T537";
        String sql2 = "SELECT F8481, F8482, F8483, F8484, F8485, F8486 FROM T538";
        String sql3 = "SELECT F8487, F8488, F8489, F8490, F8491 FROM T539;";
        final Collection carRentalPrice1 = new ArrayList();
        final Collection trainThroughPrice1 = new ArrayList();
        final Collection airportPickUpPrice1 = new ArrayList();
        final Collection result = new ArrayList();
        jdbcTemplate.query(sql1, new RowCallbackHandler() {
            public void processRow(ResultSet resultSet) throws SQLException {
                CarRentalPrice carRentalPrice = new CarRentalPrice();
                carRentalPrice.setCategory(resultSet.getString(1));
                carRentalPrice.setModels(resultSet.getString(2));
                carRentalPrice.setSeats(resultSet.getInt(3));
                carRentalPrice.setHireDay(resultSet.getInt(4));
                carRentalPrice.setHireMonth(resultSet.getInt(5));
                carRentalPrice.setOverKilometers(resultSet.getFloat(6));
                carRentalPrice.setOvertime(resultSet.getInt(7));
                carRentalPrice.setRemarks(resultSet.getString(8));
                carRentalPrice1.add(carRentalPrice);
            }
        });
        jdbcTemplate.query(sql2, new RowCallbackHandler() {
            public void processRow(ResultSet resultSet) throws SQLException {
                TrainThroughPrice trainThroughPrice = new TrainThroughPrice();
                trainThroughPrice.setJourney(resultSet.getString(1));
                trainThroughPrice.setModels(resultSet.getString(2));
                trainThroughPrice.setSeats(resultSet.getInt(3));
                trainThroughPrice.setDrive(resultSet.getString(4));
                trainThroughPrice.setPrice(resultSet.getInt(5));
                trainThroughPrice.setRemarks(resultSet.getString(6));
                trainThroughPrice1.add(trainThroughPrice);
            }
        });
        jdbcTemplate.query(sql3, new RowCallbackHandler() {
            public void processRow(ResultSet resultSet) throws SQLException {
                AirportPickUpPrice airportPickUpPrice = new AirportPickUpPrice();
                airportPickUpPrice.setCategory(resultSet.getString(1));
                airportPickUpPrice.setModels(resultSet.getString(2));
                airportPickUpPrice.setPrice(resultSet.getInt(3));
                airportPickUpPrice.setOverTimeFee(resultSet.getInt(4));
                airportPickUpPrice.setRemarks(resultSet.getString(5));
                airportPickUpPrice1.add(airportPickUpPrice);
            }
        });
        result.add(carRentalPrice1);
        result.add(trainThroughPrice1);
        result.add(airportPickUpPrice1);
        return result;
    }

    public Collection getNews(int kind, int pageIndex){
        String sql = null;
        if(kind == 1){
            sql = "SELECT TOP 15 * FROM (SELECT T549Id, F8561, F8562, F8563, F8564, ROW_NUMBER()OVER (ORDER BY T549Id) AS rownumber FROM T549) A WHERE rownumber > (" + pageIndex + "-1)*15; \n";
        }else if(kind == 2){
            sql = "SELECT TOP 15 * FROM (SELECT T549Id, F8561, F8562, F8563, F8564, ROW_NUMBER()OVER (ORDER BY T549Id) AS rownumber FROM T549  WHERE F8564 = 2) A WHERE rownumber > (" + pageIndex + "-1)*15; \n";
        }else if(kind == 3){
            sql = "SELECT TOP 15 * FROM (SELECT T549Id, F8561, F8562, F8563, F8564, ROW_NUMBER()OVER (ORDER BY T549Id) AS rownumber FROM T549  WHERE F8564 = 3) A WHERE rownumber > (" + pageIndex + "-1)*15; \n";
        }
        final Collection result = new ArrayList();
        jdbcTemplate.query(sql, new RowCallbackHandler() {
            public void processRow(ResultSet resultSet) throws SQLException {
                News news = new News();
                news.setId(resultSet.getInt(1));
                news.setTitle(resultSet.getString(2));
                news.setDate(resultSet.getString(3));
                news.setContent(resultSet.getString(4));
                news.setKind(resultSet.getInt(5));
                result.add(news);
            }
        });
        return result;
    }

    public int getNewsCount(int kind){
        String sql = null;
        if(kind == 1){
            sql = "SELECT COUNT(*) FROM T549";
        }else if(kind == 2){
            sql = "SELECT COUNT(*) FROM T549 WHERE F8564 = 2";
        }else if(kind == 3){
            sql = "SELECT COUNT(*) FROM T549 WHERE F8564 = 3";
        }
        int result = jdbcTemplate.queryForObject(sql, Integer.class);
        return result;
    }

    public News getNewsContent(int id){
        String sql = "SELECT T549Id, F8561, F8562, F8563, F8564 FROM T549 WHERE T549Id = " + id;
        final News news = new News();
        jdbcTemplate.query(sql, new RowCallbackHandler() {
            public void processRow(ResultSet resultSet) throws SQLException {
                news.setId(resultSet.getInt(1));
                news.setTitle(resultSet.getString(2));
                news.setDate(resultSet.getString(3));
                news.setContent(resultSet.getString(4));
                news.setKind(resultSet.getInt(5));
            }
        });
        return news;
    }

    public int setOnlineBook(OnlineBook onlineBook){
        String sql = "INSERT INTO T550(F8565, F8566, F8567, F8568, F8569, F8570, F8571) values('"
                        +   onlineBook.getService() + "', '"+ onlineBook.getModels() +"', '"+ onlineBook.getName() +"', '"+ onlineBook.getPhone()
                        +"', '"+ onlineBook.getBorrowTime() +"', '"+ onlineBook.getReturnTime() +"', '"+ onlineBook.getDemand() +"')";
        int result = jdbcTemplate.update(sql);
        return result;
    }

    @Autowired
    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }
}
