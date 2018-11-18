package com.yang.controller;

import com.yang.domain.Page;
import com.yang.domain.ShoppingRecord;
import com.yang.service.ShoppingRecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/shoppingRecord")
public class ShoppingRecordController {
    @Autowired
    private ShoppingRecordService shoppingRecordService;

    @ResponseBody
    @RequestMapping(value ="/selectShoppingRecordByWhere")
    public List<ShoppingRecord> selectShoppingRecordByWhere(HttpServletRequest request,Page page){
        List<ShoppingRecord> shoppingRecordList= new ArrayList<>();
        String vipId = (String)request.getSession().getAttribute("userName");
        ShoppingRecord shoppingRecord = new ShoppingRecord();

        shoppingRecord.setVipId(vipId);
        try {
            shoppingRecordList=shoppingRecordService.selectShoppingRecordByWhere(shoppingRecord,page);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return shoppingRecordList;

    }

    @ResponseBody
    @RequestMapping(value ="/getTotalRowCountByWhere")
    public Page getTotalRowCountByWhere(HttpServletRequest request){
        String vipId = (String)request.getSession().getAttribute("userName");
        Page page  = new Page();
        ShoppingRecord shoppingRecord = new ShoppingRecord();
        shoppingRecord.setVipId(vipId);
        int totalRow=0;
        try {
            totalRow=shoppingRecordService.getTotalRowCountByWhere(shoppingRecord);
            if (totalRow<=0)
                return page;
            page.setTotalRow(totalRow);
            page.setPageSize(10);
            if (totalRow % page.getPageSize()>0){
                page.setTotalPage(totalRow/page.getPageSize() + 1);
            }else {
                page.setTotalPage(totalRow/page.getPageSize());
            }
            page.setCurrentPage(1);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return page;
    }
}
