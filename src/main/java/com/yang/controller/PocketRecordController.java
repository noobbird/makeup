package com.yang.controller;

import com.yang.domain.PocketRecord;
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
    public List<PocketRecord> findPocketRecordByWhere(HttpServletRequest request,String pointOrCash){
        PocketRecord pocketRecord =new PocketRecord();
        pocketRecord.setRelatedVipid((String)request.getSession().getAttribute("userName"));
        pocketRecord.setPointOrCash(pointOrCash);
        return pocketRecordService.findPocketRecordByWhere(pocketRecord);
    }
}
