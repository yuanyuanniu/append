package com.dao.datadictionary;

import com.entity.DataDictionary;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by Administrator on 2017/12/19.
 */
public interface DataDictionaryMapper {
    public List<DataDictionary> getDataDictionaryList(@Param("typeCode")String typeCode)throws Exception;
}
