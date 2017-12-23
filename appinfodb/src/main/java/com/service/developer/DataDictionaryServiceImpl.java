package com.service.developer;

import com.dao.datadictionary.DataDictionaryMapper;
import com.entity.DataDictionary;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Administrator on 2017/12/19.
 */

@Service
public class DataDictionaryServiceImpl implements DataDictionaryService {

    @Resource
    private DataDictionaryMapper mapper;

    @Override
    public List<DataDictionary> getDataDictionaryList(String typeCode)
            throws Exception {
        // TODO Auto-generated method stub
        return mapper.getDataDictionaryList(typeCode);
    }

}
