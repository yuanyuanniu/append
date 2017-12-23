package com.dao.appcategory;

import com.entity.AppCategory;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by Administrator on 2017/12/19.
 */
public interface AppCategoryMapper {
    public List<AppCategory> getAppCategoryListByParentId(@Param("parentId")Integer parentId)throws Exception;
}
