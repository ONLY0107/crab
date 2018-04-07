package com.crab.dao.test;

import com.crab.dao.CategoryMapper;
import com.crab.pojo.Category;
import com.crab.service.impl.CategoryServiceImpl;
import com.crab.test.TestBase;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by A
 */
public class CategoryDaoTest extends TestBase {


    @Autowired
    private CategoryMapper categoryMapper;
    @Autowired
    private CategoryServiceImpl iCategoryService;

    @Ignore
    @Test
    public void getCategoryChild(){
        Category d  = categoryMapper.selectByPrimaryKey(1);
        System.out.println(d);
        Category d4  = categoryMapper.selectByPrimaryKey(4);
        System.out.println(d4);
    }
    @Test
    public void testChildService(){
        iCategoryService.selectCategoryAndChildrenById(2);
    }

}
