package com.crab.service.test;

import com.github.pagehelper.PageInfo;
import com.google.common.collect.Lists;
import com.crab.common.ServerResponse;
import com.crab.service.IProductService;
import com.crab.test.TestBase;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by A
 */
public class ProductServiceTest extends TestBase {

    @Autowired
    private IProductService iProductService;

    @Test
    public void testIProductService(){
        ServerResponse<PageInfo> result =  iProductService.getProductByKeywordCategory("iphone",2,1,5,"price_desc");
        System.out.println(result);
    }

    public static void main(String[] args) {
        List<String> images = Lists.newArrayList();
        images.add("crab/aa.jpg");
        images.add("crab/bb.jpg");
        images.add("crab/cc.jpg");
        images.add("crab/dd.jpg");
        images.add("crab/ee.jpg");
//        ["crab/aa.jpg","crab/bb.jpg","crab/cc.jpg","crab/dd.jpg","crab/ee.jpg"]
    }
}
