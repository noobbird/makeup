package com.yang.controller;

import com.yang.domain.Page;
import com.yang.domain.PocketRecord;
import com.yang.domain.ShoppingRecord;
import com.yang.service.PocketRecordService;
import javafx.geometry.Pos;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/pocketRecord")
public class PocketRecordController {

    @Autowired
    private PocketRecordService pocketRecordService;

    @ResponseBody
    @RequestMapping(value ="/findPocketRecordByWhere")
    public List<PocketRecord> findPocketRecordByWhere(HttpServletRequest request,String pointOrCash,String firstIndex,String pageSize){
        PocketRecord pocketRecord =new PocketRecord();
        pocketRecord.setRelatedVipid((String)request.getSession().getAttribute("userName"));
        pocketRecord.setPointOrCash(pointOrCash);
        Page page = new Page();
        page.setFirstIndex(Integer.parseInt(firstIndex));
        page.setPageSize(Integer.parseInt(pageSize));
        return pocketRecordService.findPocketRecordByWhere(pocketRecord,page);
    }

    @ResponseBody
    @RequestMapping(value ="/getTotalRowPocketRecordByWhere")
    public Page getTotalRowPocketRecordByWhere(HttpServletRequest request,String pointOrCash){
        PocketRecord pocketRecord =new PocketRecord();
        pocketRecord.setRelatedVipid((String)request.getSession().getAttribute("userName"));
        pocketRecord.setPointOrCash(pointOrCash);
        Page page  = new Page();
        int totalRow=0;
        try {
            totalRow=pocketRecordService.getTotalRowPocketRecordByWhere(pocketRecord);
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
