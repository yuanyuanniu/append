package com.service.developer;

import com.dao.appcategory.AppCategoryMapper;
import com.entity.AppCategory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Administrator on 2017/12/19.
 */
@Service
public class AppCategoryServiceImpl implements AppCategoryService {

    @Resource
    private AppCategoryMapper mapper;

    @Override
    public List<AppCategory> getAppCategoryListByParentId(Integer parentId)
            throws Exception {
        // TODO Auto-generated method stub
        return mapper.getAppCategoryListByParentId(parentId);
    }

}
