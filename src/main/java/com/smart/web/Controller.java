package com.smart.web;

import com.smart.domain.*;
import com.smart.service.MService;
import com.sun.javafx.sg.PGShape;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.print.attribute.standard.Media;
import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

/**
 * Created by llxxdd on 2017/10/9.
 */
@RestController
public class Controller {
    private MService mService;


    @RequestMapping(path="index.html")
    public ModelAndView indexPage(HttpServletRequest request){
        Collection result1 = mService.getNews(1, 1);
        request.setAttribute("focusNews", result1);
        Collection  result2 = mService.getNews(3, 1);
        request.setAttribute("industryNews", result2);
        return new ModelAndView("index");
    }


    @RequestMapping(path="/merchantsJoin.html")
    public ModelAndView merchantsJoin(){
        return new ModelAndView("merchantsJoin");
    }

    @RequestMapping(path="/merchantsJoinOp.html")
    public ModelAndView setMerchantsJoin(HttpServletRequest request, MerchantsJoin merchantsJoin){
        int result = mService.setMerchantsJoin(merchantsJoin);
        request.setAttribute("kind", 1);
        if(result == 1) {
            System.out.println("插入数据成功");
            return new ModelAndView("success");
        }
        else {
            System.out.println("插入数据失败");
            return new ModelAndView("false");
        }
    }

    @RequestMapping(path="/autoShow.html", method = RequestMethod.GET, params = "pageIndex")
    public  ModelAndView autoShow(HttpServletRequest request, @RequestParam("pageIndex") String pageIndex) throws UnsupportedEncodingException {
         request.setAttribute("pageNow", pageIndex);
         request.setAttribute("count", mService.getVehicleInformationCount(0));
         request.setAttribute("autoShow", mService.getVehicleInformation(Integer.parseInt(pageIndex)));
         request.setAttribute("pageKind", "0");
         return new ModelAndView("autoShow");
    }

    @RequestMapping(path="/modelIntroduction.html", method = RequestMethod.GET, params = {"models", "pageIndex"})
    public ModelAndView modelIntroduction(HttpServletRequest request, @RequestParam("models") String models, @RequestParam("pageIndex") String pageIndex){
        request.setAttribute("pageNow", pageIndex);
        request.setAttribute("count", mService.getVehicleInformationCount(Integer.parseInt(models)));
        request.setAttribute("autoShow", mService.getModelIntroduction(Integer.parseInt(models), Integer.parseInt(pageIndex)));
        request.setAttribute("pageKind", models);
        return new ModelAndView("autoShow");
    }

    @RequestMapping(path = "/rental.html")
    public ModelAndView rental(HttpServletRequest request){
        return new ModelAndView("rental");
    }

    @RequestMapping(path="/price.html")
    public ModelAndView price(HttpServletRequest request){
        request.setAttribute("priceTable", mService.getPriceTable());
        return new ModelAndView("price");
    }

    @RequestMapping(path = "/terms.html")
    public ModelAndView terms(){
        return new ModelAndView("terms");
    }

    @RequestMapping(path="/news.html", method = RequestMethod.GET, params = "pageIndex")
    public ModelAndView news(HttpServletRequest request, @RequestParam("pageIndex") String pageIndex){
        request.setAttribute("news", mService.getNews(1, Integer.parseInt(pageIndex)));
        request.setAttribute("count", mService.getNewsCount(1));
        //request.setAttribute("count", 16);
        return new ModelAndView("news");
        /*System.out.println("接收到信息");
        ArrayList a = (ArrayList) mService.getNews(1, 1);
        Iterator it = a.iterator();
        while(it.hasNext()){
            News news = (News) it.next();
            System.out.println(news.getTitle());
        }
        System.out.println(mService.getNewsCount(1));*/
    }

    @RequestMapping(path="/companyNews.html", method = RequestMethod.GET, params = "pageIndex")
    public ModelAndView companyNews(HttpServletRequest request, @RequestParam("pageIndex") String pageIndex){
        request.setAttribute("news", mService.getNews(2, Integer.parseInt(pageIndex)));
        request.setAttribute("count", mService.getNewsCount(2));
        return new ModelAndView("companyNews");
    }

    @RequestMapping(path="/industryNews.html", method = RequestMethod.GET, params = "pageIndex")
    public ModelAndView industryNews(HttpServletRequest request, @RequestParam("pageIndex") String pageIndex){
        request.setAttribute("news", mService.getNews(3, Integer.parseInt(pageIndex)));
        request.setAttribute("count", mService.getNewsCount(3));
        return new ModelAndView("industryNews");
    }

    @RequestMapping(path = "/newsShow.html", params = "id")
    public ModelAndView getNewsContent(HttpServletRequest request, @RequestParam("id") String id){
        request.setAttribute("content", mService.getNewsContent(Integer.parseInt(id)));
        return new ModelAndView("newsShow");
    }

    @RequestMapping(path = "/onlineBooking.html")
    public ModelAndView onlineBooking(){
        return new ModelAndView("onlineBooking");
    }

    @RequestMapping(path = "/onlineBookingOp.html")
    public ModelAndView onlineBookingOp(HttpServletRequest request, OnlineBook onlineBook){
        int result = mService.setOnlineBook(onlineBook);
        request.setAttribute("kind", 2);
        if(result == 1){
            return new ModelAndView("success");
        }else{
            return new ModelAndView("false");
        }
    }

    @RequestMapping(path = "/service.html")
    public ModelAndView service(){
        return new ModelAndView("service");
    }

    @RequestMapping(path = "/about.html")
    public ModelAndView about(){
        return new ModelAndView("about");
    }

    @Autowired
    public void setmService(MService mService) {
        this.mService = mService;
    }

}
