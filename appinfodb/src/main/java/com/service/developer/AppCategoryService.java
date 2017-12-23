package com.service.developer;

import com.entity.AppCategory;

import java.util.List;

/**
 * Created by Administrator on 2017/12/19.
 */
public interface AppCategoryService {
    public List<AppCategory> getAppCategoryListByParentId(Integer parentId)throws Exception;

}
