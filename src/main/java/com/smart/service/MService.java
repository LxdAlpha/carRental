package com.smart.service;

import com.smart.dao.Dao;
import com.smart.domain.MerchantsJoin;
import com.smart.domain.News;
import com.smart.domain.OnlineBook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;

/**
 * Created by llxxdd on 2017/10/9.
 */
@Service
public class MService {
    private Dao dao;

    public int setMerchantsJoin(MerchantsJoin merchantsJoin){
        return dao.insertMarchantsJoin(merchantsJoin);
    }

    public Collection getVehicleInformation(int pageIndex){
        return dao.getVehicleInformation(pageIndex);
    }

    public int getVehicleInformationCount(int kind){
        return dao.getVehicleInformationCount(kind);
    }

    public Collection getModelIntroduction(int models, int pageIndex){
        return dao.getModelIntroduction(models, pageIndex);
    }

    public Collection getPriceTable(){
        return dao.getPriceTable();
    }

    public Collection getNews(int kind, int pageIndex){
        return dao.getNews(kind, pageIndex);
    }

    public int getNewsCount(int kind){
        return dao.getNewsCount(kind);
    }

    public News getNewsContent(int id){
        return dao.getNewsContent(id);
    }

    public int setOnlineBook(OnlineBook onlineBook){
        return dao.setOnlineBook(onlineBook);
    }

    @Autowired
    public void setDao(Dao dao) {
        this.dao = dao;
    }
}
