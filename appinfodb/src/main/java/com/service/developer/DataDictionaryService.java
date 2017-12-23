package com.service.developer;

import com.entity.DataDictionary;

import java.util.List;

/**
 * Created by Administrator on 2017/12/19.
 */
public interface DataDictionaryService {

    /**
     * 根据typeCode查询相应的数据字典列表
     * @param typeCode
     * @return
     * @throws Exception
     */
    public List<DataDictionary> getDataDictionaryList(String typeCode)throws Exception;
}
